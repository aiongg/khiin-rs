// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: command.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Khiin_Proto_SpecialKey: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case skNone // = 0
  case skSpace // = 1
  case skEnter // = 2
  case skEsc // = 3
  case skBackspace // = 4
  case skTab // = 5
  case skLeft // = 6
  case skUp // = 7
  case skRight // = 8
  case skDown // = 9
  case skPgup // = 10
  case skPgdn // = 11
  case skHome // = 12
  case skEnd // = 13
  case skDel // = 14
  case UNRECOGNIZED(Int)

  init() {
    self = .skNone
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .skNone
    case 1: self = .skSpace
    case 2: self = .skEnter
    case 3: self = .skEsc
    case 4: self = .skBackspace
    case 5: self = .skTab
    case 6: self = .skLeft
    case 7: self = .skUp
    case 8: self = .skRight
    case 9: self = .skDown
    case 10: self = .skPgup
    case 11: self = .skPgdn
    case 12: self = .skHome
    case 13: self = .skEnd
    case 14: self = .skDel
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .skNone: return 0
    case .skSpace: return 1
    case .skEnter: return 2
    case .skEsc: return 3
    case .skBackspace: return 4
    case .skTab: return 5
    case .skLeft: return 6
    case .skUp: return 7
    case .skRight: return 8
    case .skDown: return 9
    case .skPgup: return 10
    case .skPgdn: return 11
    case .skHome: return 12
    case .skEnd: return 13
    case .skDel: return 14
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Khiin_Proto_SpecialKey: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Khiin_Proto_SpecialKey] = [
    .skNone,
    .skSpace,
    .skEnter,
    .skEsc,
    .skBackspace,
    .skTab,
    .skLeft,
    .skUp,
    .skRight,
    .skDown,
    .skPgup,
    .skPgdn,
    .skHome,
    .skEnd,
    .skDel,
  ]
}

#endif  // swift(>=4.2)

enum Khiin_Proto_ModifierKey: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case modkNone // = 0
  case modkCtrl // = 1
  case modkAlt // = 2
  case modkShift // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .modkNone
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .modkNone
    case 1: self = .modkCtrl
    case 2: self = .modkAlt
    case 3: self = .modkShift
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .modkNone: return 0
    case .modkCtrl: return 1
    case .modkAlt: return 2
    case .modkShift: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Khiin_Proto_ModifierKey: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Khiin_Proto_ModifierKey] = [
    .modkNone,
    .modkCtrl,
    .modkAlt,
    .modkShift,
  ]
}

#endif  // swift(>=4.2)

enum Khiin_Proto_CommandType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case cmdUnspecified // = 0
  case cmdSendKey // = 1
  case cmdRevert // = 2
  case cmdReset // = 3
  case cmdCommit // = 4
  case cmdSelectCandidate // = 5
  case cmdFocusCandidate // = 6
  case cmdSwitchInputMode // = 7
  case cmdPlaceCursor // = 8
  case cmdDisable // = 9
  case cmdEnable // = 10
  case cmdSetConfig // = 11
  case cmdTestSendKey // = 12
  case cmdListEmojis // = 13
  case cmdResetUserData // = 14
  case cmdShutdown // = 15
  case UNRECOGNIZED(Int)

  init() {
    self = .cmdUnspecified
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .cmdUnspecified
    case 1: self = .cmdSendKey
    case 2: self = .cmdRevert
    case 3: self = .cmdReset
    case 4: self = .cmdCommit
    case 5: self = .cmdSelectCandidate
    case 6: self = .cmdFocusCandidate
    case 7: self = .cmdSwitchInputMode
    case 8: self = .cmdPlaceCursor
    case 9: self = .cmdDisable
    case 10: self = .cmdEnable
    case 11: self = .cmdSetConfig
    case 12: self = .cmdTestSendKey
    case 13: self = .cmdListEmojis
    case 14: self = .cmdResetUserData
    case 15: self = .cmdShutdown
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .cmdUnspecified: return 0
    case .cmdSendKey: return 1
    case .cmdRevert: return 2
    case .cmdReset: return 3
    case .cmdCommit: return 4
    case .cmdSelectCandidate: return 5
    case .cmdFocusCandidate: return 6
    case .cmdSwitchInputMode: return 7
    case .cmdPlaceCursor: return 8
    case .cmdDisable: return 9
    case .cmdEnable: return 10
    case .cmdSetConfig: return 11
    case .cmdTestSendKey: return 12
    case .cmdListEmojis: return 13
    case .cmdResetUserData: return 14
    case .cmdShutdown: return 15
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Khiin_Proto_CommandType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Khiin_Proto_CommandType] = [
    .cmdUnspecified,
    .cmdSendKey,
    .cmdRevert,
    .cmdReset,
    .cmdCommit,
    .cmdSelectCandidate,
    .cmdFocusCandidate,
    .cmdSwitchInputMode,
    .cmdPlaceCursor,
    .cmdDisable,
    .cmdEnable,
    .cmdSetConfig,
    .cmdTestSendKey,
    .cmdListEmojis,
    .cmdResetUserData,
    .cmdShutdown,
  ]
}

#endif  // swift(>=4.2)

enum Khiin_Proto_SegmentStatus: SwiftProtobuf.Enum {
  typealias RawValue = Int

  /// No underline
  case ssUnmarked // = 0

  /// Dots or squiggle underline
  case ssComposing // = 1

  /// Solid underline
  case ssConverted // = 2

  /// Thick, solid underline
  case ssFocused // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .ssUnmarked
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .ssUnmarked
    case 1: self = .ssComposing
    case 2: self = .ssConverted
    case 3: self = .ssFocused
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .ssUnmarked: return 0
    case .ssComposing: return 1
    case .ssConverted: return 2
    case .ssFocused: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Khiin_Proto_SegmentStatus: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Khiin_Proto_SegmentStatus] = [
    .ssUnmarked,
    .ssComposing,
    .ssConverted,
    .ssFocused,
  ]
}

#endif  // swift(>=4.2)

enum Khiin_Proto_ErrorCode: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case ok // = 0
  case fail // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .ok
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .ok
    case 1: self = .fail
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .ok: return 0
    case .fail: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Khiin_Proto_ErrorCode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Khiin_Proto_ErrorCode] = [
    .ok,
    .fail,
  ]
}

#endif  // swift(>=4.2)

enum Khiin_Proto_EditState: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case esEmpty // = 0
  case esComposing // = 1
  case esConverted // = 2
  case esSelecting // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .esEmpty
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .esEmpty
    case 1: self = .esComposing
    case 2: self = .esConverted
    case 3: self = .esSelecting
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .esEmpty: return 0
    case .esComposing: return 1
    case .esConverted: return 2
    case .esSelecting: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Khiin_Proto_EditState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Khiin_Proto_EditState] = [
    .esEmpty,
    .esComposing,
    .esConverted,
    .esSelecting,
  ]
}

#endif  // swift(>=4.2)

/// Each platform app should map from its own key set to this set.
/// On hardware keyboards, |modifier_keys| may be used in combination
/// with either a |special_key| or a normal ascii |key_code|
struct Khiin_Proto_KeyEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// For ASCII & printable letters
  var keyCode: Int32 = 0

  /// Other keys e.g., arrow keys
  var specialKey: Khiin_Proto_SpecialKey = .skNone

  /// Ctrl, Alt, Shift: More than 1 modifier can be pressed at a time
  var modifierKeys: [Khiin_Proto_ModifierKey] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Message sent from app to engine
struct Khiin_Proto_Request {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: UInt32 = 0

  var type: Khiin_Proto_CommandType = .cmdUnspecified

  var keyEvent: Khiin_Proto_KeyEvent {
    get {return _keyEvent ?? Khiin_Proto_KeyEvent()}
    set {_keyEvent = newValue}
  }
  /// Returns true if `keyEvent` has been explicitly set.
  var hasKeyEvent: Bool {return self._keyEvent != nil}
  /// Clears the value of `keyEvent`. Subsequent reads from it will return its default value.
  mutating func clearKeyEvent() {self._keyEvent = nil}

  /// ID or index position of the candidate focused or selected by the user
  var candidateID: Int32 = 0

  /// Used if the user taps/clicks somewhere, otherwise arrow keys are sent
  /// and the engine figures out its own cursor position
  var cursorPosition: Int32 = 0

  var config: Khiin_Proto_AppConfig {
    get {return _config ?? Khiin_Proto_AppConfig()}
    set {_config = newValue}
  }
  /// Returns true if `config` has been explicitly set.
  var hasConfig: Bool {return self._config != nil}
  /// Clears the value of `config`. Subsequent reads from it will return its default value.
  mutating func clearConfig() {self._config = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _keyEvent: Khiin_Proto_KeyEvent? = nil
  fileprivate var _config: Khiin_Proto_AppConfig? = nil
}

/// The display buffer text and cursor position
struct Khiin_Proto_Preedit {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var segments: [Khiin_Proto_Preedit.Segment] = []

  /// Position of the cursor in unicode code points
  var caret: Int32 = 0

  /// Postion in unicode codepoints of the beginning of
  /// the focused segment, usually where the candidate
  /// window should align text
  var focusedCaret: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Segment {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// For visual feedback to the user
    var status: Khiin_Proto_SegmentStatus = .ssUnmarked

    /// The text to be displayed
    var value: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}
}

/// All candidates for the current |Composition|
/// App should decide how to show and navigate candidates,
/// and use an InputEvent to report back the |candidate_id| as
/// user navigates
struct Khiin_Proto_Candidate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: Int32 = 0

  /// The text of the candidate
  var value: String = String()

  /// The Lomaji input string associated with this candidate
  var key: String = String()

  /// A hint that can appear near the candidate
  var annotation: String = String()

  var category: Khiin_Proto_Candidate.Category = .ccatBasic

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Used to style the text for providing a visual cue to the user
  enum Category: SwiftProtobuf.Enum {
    typealias RawValue = Int

    /// Regular text color
    case ccatBasic // = 0

    /// Highlighted text color
    case ccatExtended // = 1

    /// De-emphasized text color
    case ccatFallback // = 2
    case UNRECOGNIZED(Int)

    init() {
      self = .ccatBasic
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .ccatBasic
      case 1: self = .ccatExtended
      case 2: self = .ccatFallback
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .ccatBasic: return 0
      case .ccatExtended: return 1
      case .ccatFallback: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Khiin_Proto_Candidate.Category: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Khiin_Proto_Candidate.Category] = [
    .ccatBasic,
    .ccatExtended,
    .ccatFallback,
  ]
}

#endif  // swift(>=4.2)

struct Khiin_Proto_CandidateList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var candidates: [Khiin_Proto_Candidate] = []

  /// The focused candidate should be highlighted for the user
  var focused: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// The response portion of the message, from engine back to app
struct Khiin_Proto_Response {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var error: Khiin_Proto_ErrorCode = .ok

  var preedit: Khiin_Proto_Preedit {
    get {return _preedit ?? Khiin_Proto_Preedit()}
    set {_preedit = newValue}
  }
  /// Returns true if `preedit` has been explicitly set.
  var hasPreedit: Bool {return self._preedit != nil}
  /// Clears the value of `preedit`. Subsequent reads from it will return its default value.
  mutating func clearPreedit() {self._preedit = nil}

  var candidateList: Khiin_Proto_CandidateList {
    get {return _candidateList ?? Khiin_Proto_CandidateList()}
    set {_candidateList = newValue}
  }
  /// Returns true if `candidateList` has been explicitly set.
  var hasCandidateList: Bool {return self._candidateList != nil}
  /// Clears the value of `candidateList`. Subsequent reads from it will return its default value.
  mutating func clearCandidateList() {self._candidateList = nil}

  var editState: Khiin_Proto_EditState = .esEmpty

  var committed: Bool = false

  /// Used with Windows TSF OnTestKeyDown method
  var consumable: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _preedit: Khiin_Proto_Preedit? = nil
  fileprivate var _candidateList: Khiin_Proto_CandidateList? = nil
}

/// A full command bundle, passed between app and engine
/// during each edit session
struct Khiin_Proto_Command {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var request: Khiin_Proto_Request {
    get {return _storage._request ?? Khiin_Proto_Request()}
    set {_uniqueStorage()._request = newValue}
  }
  /// Returns true if `request` has been explicitly set.
  var hasRequest: Bool {return _storage._request != nil}
  /// Clears the value of `request`. Subsequent reads from it will return its default value.
  mutating func clearRequest() {_uniqueStorage()._request = nil}

  var response: Khiin_Proto_Response {
    get {return _storage._response ?? Khiin_Proto_Response()}
    set {_uniqueStorage()._response = newValue}
  }
  /// Returns true if `response` has been explicitly set.
  var hasResponse: Bool {return _storage._response != nil}
  /// Clears the value of `response`. Subsequent reads from it will return its default value.
  mutating func clearResponse() {_uniqueStorage()._response = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Khiin_Proto_SpecialKey: @unchecked Sendable {}
extension Khiin_Proto_ModifierKey: @unchecked Sendable {}
extension Khiin_Proto_CommandType: @unchecked Sendable {}
extension Khiin_Proto_SegmentStatus: @unchecked Sendable {}
extension Khiin_Proto_ErrorCode: @unchecked Sendable {}
extension Khiin_Proto_EditState: @unchecked Sendable {}
extension Khiin_Proto_KeyEvent: @unchecked Sendable {}
extension Khiin_Proto_Request: @unchecked Sendable {}
extension Khiin_Proto_Preedit: @unchecked Sendable {}
extension Khiin_Proto_Preedit.Segment: @unchecked Sendable {}
extension Khiin_Proto_Candidate: @unchecked Sendable {}
extension Khiin_Proto_Candidate.Category: @unchecked Sendable {}
extension Khiin_Proto_CandidateList: @unchecked Sendable {}
extension Khiin_Proto_Response: @unchecked Sendable {}
extension Khiin_Proto_Command: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "khiin.proto"

extension Khiin_Proto_SpecialKey: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SK_NONE"),
    1: .same(proto: "SK_SPACE"),
    2: .same(proto: "SK_ENTER"),
    3: .same(proto: "SK_ESC"),
    4: .same(proto: "SK_BACKSPACE"),
    5: .same(proto: "SK_TAB"),
    6: .same(proto: "SK_LEFT"),
    7: .same(proto: "SK_UP"),
    8: .same(proto: "SK_RIGHT"),
    9: .same(proto: "SK_DOWN"),
    10: .same(proto: "SK_PGUP"),
    11: .same(proto: "SK_PGDN"),
    12: .same(proto: "SK_HOME"),
    13: .same(proto: "SK_END"),
    14: .same(proto: "SK_DEL"),
  ]
}

extension Khiin_Proto_ModifierKey: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "MODK_NONE"),
    1: .same(proto: "MODK_CTRL"),
    2: .same(proto: "MODK_ALT"),
    3: .same(proto: "MODK_SHIFT"),
  ]
}

extension Khiin_Proto_CommandType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CMD_UNSPECIFIED"),
    1: .same(proto: "CMD_SEND_KEY"),
    2: .same(proto: "CMD_REVERT"),
    3: .same(proto: "CMD_RESET"),
    4: .same(proto: "CMD_COMMIT"),
    5: .same(proto: "CMD_SELECT_CANDIDATE"),
    6: .same(proto: "CMD_FOCUS_CANDIDATE"),
    7: .same(proto: "CMD_SWITCH_INPUT_MODE"),
    8: .same(proto: "CMD_PLACE_CURSOR"),
    9: .same(proto: "CMD_DISABLE"),
    10: .same(proto: "CMD_ENABLE"),
    11: .same(proto: "CMD_SET_CONFIG"),
    12: .same(proto: "CMD_TEST_SEND_KEY"),
    13: .same(proto: "CMD_LIST_EMOJIS"),
    14: .same(proto: "CMD_RESET_USER_DATA"),
    15: .same(proto: "CMD_SHUTDOWN"),
  ]
}

extension Khiin_Proto_SegmentStatus: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SS_UNMARKED"),
    1: .same(proto: "SS_COMPOSING"),
    2: .same(proto: "SS_CONVERTED"),
    3: .same(proto: "SS_FOCUSED"),
  ]
}

extension Khiin_Proto_ErrorCode: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "OK"),
    1: .same(proto: "FAIL"),
  ]
}

extension Khiin_Proto_EditState: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ES_EMPTY"),
    1: .same(proto: "ES_COMPOSING"),
    2: .same(proto: "ES_CONVERTED"),
    3: .same(proto: "ES_SELECTING"),
  ]
}

extension Khiin_Proto_KeyEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".KeyEvent"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "key_code"),
    2: .standard(proto: "special_key"),
    3: .standard(proto: "modifier_keys"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.keyCode) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.specialKey) }()
      case 3: try { try decoder.decodeRepeatedEnumField(value: &self.modifierKeys) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.keyCode != 0 {
      try visitor.visitSingularInt32Field(value: self.keyCode, fieldNumber: 1)
    }
    if self.specialKey != .skNone {
      try visitor.visitSingularEnumField(value: self.specialKey, fieldNumber: 2)
    }
    if !self.modifierKeys.isEmpty {
      try visitor.visitPackedEnumField(value: self.modifierKeys, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Khiin_Proto_KeyEvent, rhs: Khiin_Proto_KeyEvent) -> Bool {
    if lhs.keyCode != rhs.keyCode {return false}
    if lhs.specialKey != rhs.specialKey {return false}
    if lhs.modifierKeys != rhs.modifierKeys {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Khiin_Proto_Request: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Request"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "type"),
    3: .standard(proto: "key_event"),
    4: .standard(proto: "candidate_id"),
    5: .standard(proto: "cursor_position"),
    6: .same(proto: "config"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._keyEvent) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.candidateID) }()
      case 5: try { try decoder.decodeSingularInt32Field(value: &self.cursorPosition) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._config) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.id != 0 {
      try visitor.visitSingularUInt32Field(value: self.id, fieldNumber: 1)
    }
    if self.type != .cmdUnspecified {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 2)
    }
    try { if let v = self._keyEvent {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if self.candidateID != 0 {
      try visitor.visitSingularInt32Field(value: self.candidateID, fieldNumber: 4)
    }
    if self.cursorPosition != 0 {
      try visitor.visitSingularInt32Field(value: self.cursorPosition, fieldNumber: 5)
    }
    try { if let v = self._config {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Khiin_Proto_Request, rhs: Khiin_Proto_Request) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.type != rhs.type {return false}
    if lhs._keyEvent != rhs._keyEvent {return false}
    if lhs.candidateID != rhs.candidateID {return false}
    if lhs.cursorPosition != rhs.cursorPosition {return false}
    if lhs._config != rhs._config {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Khiin_Proto_Preedit: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Preedit"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "segments"),
    2: .same(proto: "caret"),
    3: .standard(proto: "focused_caret"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.segments) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.caret) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.focusedCaret) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.segments.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.segments, fieldNumber: 1)
    }
    if self.caret != 0 {
      try visitor.visitSingularInt32Field(value: self.caret, fieldNumber: 2)
    }
    if self.focusedCaret != 0 {
      try visitor.visitSingularInt32Field(value: self.focusedCaret, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Khiin_Proto_Preedit, rhs: Khiin_Proto_Preedit) -> Bool {
    if lhs.segments != rhs.segments {return false}
    if lhs.caret != rhs.caret {return false}
    if lhs.focusedCaret != rhs.focusedCaret {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Khiin_Proto_Preedit.Segment: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Khiin_Proto_Preedit.protoMessageName + ".Segment"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "value"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.status) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.value) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.status != .ssUnmarked {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 1)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Khiin_Proto_Preedit.Segment, rhs: Khiin_Proto_Preedit.Segment) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Khiin_Proto_Candidate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Candidate"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "value"),
    3: .same(proto: "key"),
    4: .same(proto: "annotation"),
    5: .same(proto: "category"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.value) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.key) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.annotation) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.category) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt32Field(value: self.id, fieldNumber: 1)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 2)
    }
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 3)
    }
    if !self.annotation.isEmpty {
      try visitor.visitSingularStringField(value: self.annotation, fieldNumber: 4)
    }
    if self.category != .ccatBasic {
      try visitor.visitSingularEnumField(value: self.category, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Khiin_Proto_Candidate, rhs: Khiin_Proto_Candidate) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.value != rhs.value {return false}
    if lhs.key != rhs.key {return false}
    if lhs.annotation != rhs.annotation {return false}
    if lhs.category != rhs.category {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Khiin_Proto_Candidate.Category: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CCAT_BASIC"),
    1: .same(proto: "CCAT_EXTENDED"),
    2: .same(proto: "CCAT_FALLBACK"),
  ]
}

extension Khiin_Proto_CandidateList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CandidateList"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "candidates"),
    2: .same(proto: "focused"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.candidates) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.focused) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.candidates.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.candidates, fieldNumber: 1)
    }
    if self.focused != 0 {
      try visitor.visitSingularInt32Field(value: self.focused, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Khiin_Proto_CandidateList, rhs: Khiin_Proto_CandidateList) -> Bool {
    if lhs.candidates != rhs.candidates {return false}
    if lhs.focused != rhs.focused {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Khiin_Proto_Response: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Response"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "error"),
    2: .same(proto: "preedit"),
    3: .standard(proto: "candidate_list"),
    4: .standard(proto: "edit_state"),
    5: .same(proto: "committed"),
    6: .same(proto: "consumable"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.error) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._preedit) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._candidateList) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.editState) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self.committed) }()
      case 6: try { try decoder.decodeSingularBoolField(value: &self.consumable) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.error != .ok {
      try visitor.visitSingularEnumField(value: self.error, fieldNumber: 1)
    }
    try { if let v = self._preedit {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._candidateList {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if self.editState != .esEmpty {
      try visitor.visitSingularEnumField(value: self.editState, fieldNumber: 4)
    }
    if self.committed != false {
      try visitor.visitSingularBoolField(value: self.committed, fieldNumber: 5)
    }
    if self.consumable != false {
      try visitor.visitSingularBoolField(value: self.consumable, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Khiin_Proto_Response, rhs: Khiin_Proto_Response) -> Bool {
    if lhs.error != rhs.error {return false}
    if lhs._preedit != rhs._preedit {return false}
    if lhs._candidateList != rhs._candidateList {return false}
    if lhs.editState != rhs.editState {return false}
    if lhs.committed != rhs.committed {return false}
    if lhs.consumable != rhs.consumable {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Khiin_Proto_Command: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Command"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "request"),
    3: .same(proto: "response"),
  ]

  fileprivate class _StorageClass {
    var _request: Khiin_Proto_Request? = nil
    var _response: Khiin_Proto_Response? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _request = source._request
      _response = source._response
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._request) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._response) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._request {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      } }()
      try { if let v = _storage._response {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Khiin_Proto_Command, rhs: Khiin_Proto_Command) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._request != rhs_storage._request {return false}
        if _storage._response != rhs_storage._response {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
