// This is free and unencumbered software released into the public domain.

import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

const _constants = const [
  Uuid.namespaceDns,
  Uuid.namespaceOid,
  Uuid.namespaceUrl,
  Uuid.namespaceX500,
];

const _bin = const [
  Uuid.namespaceDns: '',
];

void main() {
  group('namespaces', () {
    for (const Uuid uuid in _constants) {
      test('not nil', () => expect(uuid.isNil, false));
      test('variant', () => expect(uuid.variant, UuidVariant.rfc4122));
      test('version', () => expect(uuid.version, UuidVersion.mac));
    }
  });

  return;

  const Uuid uuid = Uuid.namespaceDns;

  test('not nil', () => expect(uuid.isNil, false));
  test('variant', () => expect(uuid.variant, UuidVariant.rfc4122));
  test('version', () => expect(uuid.version, UuidVersion.mac));
  test('bin repr', () => expect(uuid.toBinary(), '\x6b\xa7\xb8\x10\x9d\xad\x11\xd1\x80\xb4\x00\xc0\x4f\xd4\x30\xc8'));
  test('hex repr', () => expect(uuid.toHex(), '6ba7b8109dad11d180b400c04fd430c8'));
  test('str repr', () => expect(uuid.toString(), '6ba7b810-9dad-11d1-80b4-00c04fd430c8'));
  test('urn repr', () => expect(uuid.toUrn().toString(), 'urn:uuid:6ba7b810-9dad-11d1-80b4-00c04fd430c8'));
}
