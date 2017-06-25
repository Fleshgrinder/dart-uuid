// This is free and unencumbered software released into the public domain.

/// The version of a UUID that specifies the generation algorithm.
enum UuidVersion {
  /// Version 0
  v0,
  /// Version 1: MAC address
  mac,
  /// Version 2: DCE Security
  dce,
  /// Version 3: MD5 Hash
  md5,
  /// Version 4: Random
  random,
  /// Version 5: SHA-1 Hash
  sha1,
  /// Version 6
  v6,
  /// Version 7
  v7,
  /// Version 8
  v8,
  /// Version 9
  v9,
  /// Version 10
  v10,
  /// Version 11
  v11,
  /// Version 12
  v12,
  /// Version 13
  v13,
  /// Version 14
  v14,
  /// Version 15
  v15,
}
