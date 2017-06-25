// This is free and unencumbered software released into the public domain.

import 'package:uuid/src/uuid.dart';

/// Create SHA-1 namespace/name based UUID string (see [Uuid.v5] for details).
String uuid5(Uuid ns, String n) => new Uuid.v5(ns, n).toString();
