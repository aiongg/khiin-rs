use std::cell::Cell;

use windows::core::implement;
use windows::core::Error;
use windows::core::Result;
use windows::core::GUID;
use windows::Win32::Foundation::S_FALSE;
use windows::Win32::UI::TextServices::IEnumTfDisplayAttributeInfo;
use windows::Win32::UI::TextServices::IEnumTfDisplayAttributeInfo_Impl;
use windows::Win32::UI::TextServices::ITfDisplayAttributeInfo;

use crate::reg::guids::GUID_DISPLAY_ATTRIBUTE_CONVERTED;
use crate::reg::guids::GUID_DISPLAY_ATTRIBUTE_FOCUSED;
use crate::reg::guids::GUID_DISPLAY_ATTRIBUTE_INPUT;
use crate::tip::display_attribute_info::*;

#[implement(IEnumTfDisplayAttributeInfo)]
pub struct DisplayAttributes {
    pub attributes: Vec<DisplayAttributeInfo>,
    current_index: Cell<usize>,
}

impl DisplayAttributes {
    pub fn new() -> Self {
        let mut attributes: Vec<DisplayAttributeInfo> = Vec::new();

        attributes.push(DisplayAttributeInfo::new(
            String::from("Input"),
            GUID_DISPLAY_ATTRIBUTE_INPUT,
            DISPLAY_ATTRIBUTE_INPUT,
        ));

        attributes.push(DisplayAttributeInfo::new(
            String::from("Input"),
            GUID_DISPLAY_ATTRIBUTE_CONVERTED,
            DISPLAY_ATTRIBUTE_CONVERTED,
        ));

        attributes.push(DisplayAttributeInfo::new(
            String::from("Input"),
            GUID_DISPLAY_ATTRIBUTE_FOCUSED,
            DISPLAY_ATTRIBUTE_FOCUSED,
        ));

        Self {
            attributes,
            current_index: Cell::from(0),
        }
    }

    pub fn by_guid(&self, guid: GUID) -> Option<DisplayAttributeInfo> {
        for attr in &self.attributes {
            if attr.guid() == guid {
                return Some(attr.clone());
            }
        }
        None
    }
}

impl IEnumTfDisplayAttributeInfo_Impl for DisplayAttributes {
    fn Clone(&self) -> Result<IEnumTfDisplayAttributeInfo> {
        let clone = DisplayAttributes::new();
        clone.current_index.set(self.current_index.get());
        Ok(clone.into())
    }

    fn Next(
        &self,
        ulcount: u32,
        rginfo: *mut Option<ITfDisplayAttributeInfo>,
        pcfetched: *mut u32,
    ) -> Result<()> {
        let num_attrs = self.attributes.len();

        let mut curr_index = self.current_index.get();
        let mut out_count = 0u32;

        while out_count < ulcount && curr_index < num_attrs {
            if let Some(out_attr) = self.attributes.get(curr_index).cloned() {
                unsafe {
                    *rginfo.add(out_count as usize) = Some(out_attr.into());
                }

                out_count += 1;
            }

            curr_index += 1;
        }

        self.current_index.set(curr_index);

        unsafe {
            *pcfetched = out_count;
        }

        if out_count == ulcount {
            Ok(())
        } else {
            Err(Error::from(S_FALSE))
        }
    }

    fn Reset(&self) -> Result<()> {
        self.current_index.set(0);
        Ok(())
    }

    fn Skip(&self, ulcount: u32) -> Result<()> {
        let count = ulcount as usize;
        let curr_index = self.current_index.get();
        let num_attrs = self.attributes.len();

        let remainder = num_attrs - curr_index - 1;
        if count > remainder {
            self.current_index.set(num_attrs - 1);
            Err(Error::from(S_FALSE))
        } else {
            self.current_index.set(curr_index + count);
            Ok(())
        }
    }
}
