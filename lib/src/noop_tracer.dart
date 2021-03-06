// Copyright 2016 Workiva Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'noop_span.dart';
import 'reference.dart';
import 'span_context.dart';
import 'abstract_tracer.dart';

/// The No-op implementation of [AbstractTracer] in which all operations are no-op
class NoopTracer extends AbstractTracer {
  @override
  NoopSpan startSpan(String operationName,
      {SpanContext childOf,
      List<Reference> references,
      Map<String, dynamic> tags,
      DateTime startTime}) {
    return new NoopSpan();
  }

  @override
  void inject(SpanContext spanContext, String format, dynamic carrier) {}

  @override
  SpanContext extract(String format, dynamic carrier) {
    return null;
  }

  @override
  Future<dynamic> flush() async {}
}
