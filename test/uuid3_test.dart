// This is free and unencumbered software released into the public domain.

import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  final String uuid = uuid3(Uuid.namespaceDns, 'dartlang.org');

  expect(uuid.toString(), '');
}
