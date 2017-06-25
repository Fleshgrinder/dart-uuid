// This is free and unencumbered software released into the public domain.

import 'package:uuid/src/uuid.dart';

/// Create MD5 namespace/name based UUID string (see [Uuid.v3] for details).
String uuid3(Uuid ns, String n) => new Uuid.v3(ns, n).toString();
