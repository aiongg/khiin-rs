use khiin_ji::HANJI_CUTOFF;

use super::InputType;

#[derive(Debug, Clone)]
pub struct KeyConversion {
    pub key_sequence: String,
    pub input_type: InputType,
    pub input: String,
    pub input_id: u32,
    pub output: String,
    pub weight: i32,
    pub category: Option<i32>,
    pub annotation: Option<String>,
}

impl KeyConversion {
    /// Attempts to align input and output syllables in a 1-to-1 mapping, taking
    /// each Hanji to be a syllable, and otherwise splitting by space characters
    /// as per the standard database format. Returns `None` if the alignment is
    /// not 1-to-1. If it is 1-to-1, `Some(Vec)` contains elements of the form
    /// `(input, output)`.
    pub fn align_input_output_syllables(
        &self,
    ) -> Option<Vec<(String, String)>> {
        let mut output_split = Vec::new();
        let mut tmp = String::new();

        for c in self.output.chars() {
            if c == ' ' || c > HANJI_CUTOFF {
                if !tmp.is_empty() {
                    output_split.push(tmp.clone());
                    tmp.clear();
                }

                if c != ' ' {
                    output_split.push(c.to_string());
                }
            } else {
                tmp.push(c);
            }
        }

        let input_split: Vec<String> =
            self.input.split(" ").map(|s| s.to_string()).collect();

        if output_split.len() != input_split.len() {
            return None;
        }

        Some(
            input_split
                .into_iter()
                .zip(output_split.into_iter())
                .collect(),
        )
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn mock_conversion(input: &str, output: &str) -> KeyConversion {
        KeyConversion {
            key_sequence: String::new(),
            input_type: InputType::Numeric,
            input: input.into(),
            input_id: 0,
            output: output.into(),
            weight: 0,
            category: None,
            annotation: None,
        }
    }

    #[test]
    fn it_aligns_syllables() {
        let c = mock_conversion("hó bô", "好無");
        let ret = c.align_input_output_syllables();
        assert!(ret.is_some());
        let ret = ret.unwrap();
        assert_eq!(ret.len(), 2);
        let (i, o) = &ret[0];
        assert_eq!(i, "hó");
        assert_eq!(o, "好");
        let (i, o) = &ret[1];
        assert_eq!(i, "bô");
        assert_eq!(o, "無");
    }
}
