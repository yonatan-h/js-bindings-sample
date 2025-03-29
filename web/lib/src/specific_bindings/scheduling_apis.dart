// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';

typedef SchedulerPostTaskCallback = JSFunction;
typedef TaskPriority = String;
extension type SchedulerPostTaskOptions._(JSObject _) implements JSObject {
  external factory SchedulerPostTaskOptions({
    AbortSignal signal,
    TaskPriority priority,
    int delay,
  });

  external AbortSignal get signal;
  external set signal(AbortSignal value);
  external TaskPriority get priority;
  external set priority(TaskPriority value);
  external int get delay;
  external set delay(int value);
}

/// The **`Scheduler`** interface of the
/// [Prioritized Task Scheduling API](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API)
/// provides methods for scheduling prioritized tasks.
///
/// A `Scheduler` can be accessed from the global object using
/// [Window.scheduler] or [WorkerGlobalScope.scheduler] within a worker.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Scheduler).
extension type Scheduler._(JSObject _) implements JSObject {
  /// The **`postTask()`** method of the [Scheduler] interface is used for
  /// adding tasks to be
  /// [scheduled](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API)
  /// according to their
  /// [priority](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#task_priorities).
  ///
  /// The method allows users to optionally specify a minimum delay before the
  /// task will run, a priority for the task, and a signal that can be used to
  /// modify the task priority and/or abort the task.
  /// It returns a promise that is resolved with the result of the task callback
  /// function, or rejected with the abort reason or an error thrown in the
  /// task.
  ///
  /// Task priority can be
  /// [mutable or immutable](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#mutable_and_immutable_task_priority).
  /// If the task priority will never need to change then it should be set using
  /// the `options.priority` parameter (any priority set through a signal will
  /// then be ignored).
  /// You can still pass an [AbortSignal] (which has no priority) or
  /// [TaskSignal] to the `options.signal` parameter for aborting the task.
  ///
  /// If the task priority might need to be changed the `options.priority`
  /// parameter must not be set.
  /// Instead a [TaskController] should be created and its [TaskSignal] should
  /// be passed to `options.signal`.
  /// The task priority will be initialized from the signal priority, and can
  /// later be modified using the signal's associated [TaskController].
  ///
  /// If no priority is set then the task priority defaults to
  /// [`"user-visible"`](/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#user-visible).
  ///
  /// If a delay is specified and greater than 0, then the execution of the task
  /// will be delayed for at least that many milliseconds.
  /// Otherwise the task is immediately scheduled for prioritization.
  external JSPromise<JSAny?> postTask(
    SchedulerPostTaskCallback callback, [
    SchedulerPostTaskOptions options,
  ]);
}
