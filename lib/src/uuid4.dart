// This is free and unencumbered software released into the public domain.

import 'package:uuid/src/uuid.dart';

/// Create random UUID string (see [Uuid.v4] for details).
String uuid4() => new Uuid.v4().toString();
