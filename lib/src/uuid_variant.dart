// This is free and unencumbered software released into the public domain.

/// The variants of a UUID that specifies the structure.
enum UuidVariant {
  /// Reserved by the NCS for backwards compatibility
  ncs,
  /// RFC 4122 (default)
  rfc4122,
  /// Reserved by Microsoft for backwards compatibility
  microsoft,
  /// Reserved for future expansion
  future,
}
