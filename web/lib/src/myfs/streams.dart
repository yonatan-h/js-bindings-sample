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
import 'webidl.dart';

typedef ReadableStreamReader = JSObject;
typedef QueuingStrategySize = JSFunction;
typedef ReadableStreamReaderMode = String;

/// The `ReadableStream` interface of the
/// [Streams API](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API)
/// represents a readable stream of byte data. The
/// [Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)
/// offers a concrete instance of a `ReadableStream` through the [Response.body]
/// property of a [Response] object.
///
/// `ReadableStream` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream).
extension type ReadableStream._(JSObject _) implements JSObject {
  external factory ReadableStream([
    JSObject underlyingSource,
    QueuingStrategy strategy,
  ]);

  /// The **`cancel()`** method of the [ReadableStream] interface returns a
  /// `Promise` that resolves when the stream is canceled.
  ///
  /// Cancel is used when you've completely finished with the stream and don't
  /// need any more data from it, even if there are chunks enqueued waiting to
  /// be read.
  /// That data is lost after cancel is called, and the stream is not readable
  /// any more.
  /// To read those chunks still and not completely get rid of the stream, you'd
  /// use [ReadableStreamDefaultController.close].
  external JSPromise<JSAny?> cancel([JSAny? reason]);

  /// The **`getReader()`** method of the [ReadableStream] interface creates a
  /// reader and locks the stream to it.
  /// While the stream is locked, no other reader can be acquired until this one
  /// is released.
  external ReadableStreamReader getReader(
      [ReadableStreamGetReaderOptions options]);

  /// The **`pipeThrough()`** method of the [ReadableStream] interface provides
  /// a chainable way of piping the current stream through a transform stream or
  /// any other writable/readable pair.
  ///
  /// Piping a stream will generally lock it for the duration of the pipe,
  /// preventing other readers from locking it.
  external ReadableStream pipeThrough(
    ReadableWritablePair transform, [
    StreamPipeOptions options,
  ]);

  /// The **`pipeTo()`** method of the [ReadableStream] interface pipes the
  /// current `ReadableStream` to a given [WritableStream] and returns a
  /// `Promise` that fulfills when the piping process completes successfully, or
  /// rejects if any errors were encountered.
  ///
  /// Piping a stream will generally
  /// [lock](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/locked)
  /// it for the duration of the pipe, preventing other readers from locking it.
  external JSPromise<JSAny?> pipeTo(
    WritableStream destination, [
    StreamPipeOptions options,
  ]);

  /// The **`tee()`** method of the
  /// [ReadableStream] interface
  /// [tees](https://streams.spec.whatwg.org/#tee-a-readable-stream) the current
  /// readable stream, returning a
  /// two-element array containing the two resulting branches as
  /// new [ReadableStream] instances.
  ///
  /// This is useful for allowing two readers to read a stream sequentially or
  /// simultaneously,
  /// perhaps at different speeds.
  /// For example, you might do this in a ServiceWorker if you want to fetch
  /// a response from the server and stream it to the browser, but also stream
  /// it to the
  /// ServiceWorker cache. Since a response body cannot be consumed more than
  /// once, you'd need
  /// two copies to do this.
  ///
  /// A teed stream will partially signal backpressure at the rate of the
  /// _faster_ consumer
  /// of the two `ReadableStream` branches,
  /// and unread data is enqueued internally on the slower consumed
  /// `ReadableStream`
  /// without any limit or backpressure.
  /// That is, when _both_ branches have an unread element in their internal
  /// queue,
  /// then the original `ReadableStream`'s controller's internal queue will
  /// start to fill up,
  /// and once its [ReadableStreamDefaultController.desiredSize] ≤ 0
  /// or byte stream controller [ReadableByteStreamController.desiredSize] ≤ 0,
  /// then the controller will stop calling `pull(controller)` on the
  /// underlying source passed to [ReadableStream.ReadableStream].
  /// If only one branch is consumed, then the entire body will be enqueued in
  /// memory.
  /// Therefore, you should not use the built-in `tee()` to read very large
  /// streams
  /// in parallel at different speeds.
  /// Instead, search for an implementation that fully backpressures
  /// to the speed of the _slower_ consumed branch.
  ///
  /// To cancel the stream you then need to cancel both resulting branches.
  /// Teeing a stream
  /// will generally lock it for the duration, preventing other readers from
  /// locking it.
  external JSArray<ReadableStream> tee();

  /// The **`locked`** read-only property of the [ReadableStream] interface
  /// returns whether or not the readable stream is locked to a reader.
  ///
  /// A readable stream can have at most one active reader at a time, and is
  /// locked to that reader until it is released.
  /// A reader might be obtained using
  /// [`ReadableStream.getReader()`](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/getReader)
  /// and released using the reader's `releaseLock()` method.
  external bool get locked;
}
extension type ReadableStreamGetReaderOptions._(JSObject _)
    implements JSObject {
  external factory ReadableStreamGetReaderOptions(
      {ReadableStreamReaderMode mode});

  external ReadableStreamReaderMode get mode;
  external set mode(ReadableStreamReaderMode value);
}
extension type ReadableWritablePair._(JSObject _) implements JSObject {
  external factory ReadableWritablePair({
    required ReadableStream readable,
    required WritableStream writable,
  });

  external ReadableStream get readable;
  external set readable(ReadableStream value);
  external WritableStream get writable;
  external set writable(WritableStream value);
}
extension type StreamPipeOptions._(JSObject _) implements JSObject {
  external factory StreamPipeOptions({
    bool preventClose,
    bool preventAbort,
    bool preventCancel,
    AbortSignal signal,
  });

  external bool get preventClose;
  external set preventClose(bool value);
  external bool get preventAbort;
  external set preventAbort(bool value);
  external bool get preventCancel;
  external set preventCancel(bool value);
  external AbortSignal get signal;
  external set signal(AbortSignal value);
}

/// The **`ReadableStreamDefaultReader`** interface of the
/// [Streams API](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API)
/// represents a default reader that can be used to read stream data supplied
/// from a network (such as a fetch request).
///
/// A `ReadableStreamDefaultReader` can be used to read from a [ReadableStream]
/// that has an underlying source of any type (unlike a
/// [ReadableStreamBYOBReader], which can only be used with readable streams
/// that have an _underlying byte source_).
///
/// Note however that zero-copy transfer from an underlying source is only
/// supported for underlying byte sources that autoallocate buffers.
/// In other words, the stream must have been
/// [constructed](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/ReadableStream)
/// specifying both
/// [`type="bytes"`](/en-US/docs/Web/API/ReadableStream/ReadableStream#type) and
/// [`autoAllocateChunkSize`](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/ReadableStream#autoallocatechunksize).
/// For any other underlying source, the stream will always satisfy read
/// requests with data from internal queues.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader).
extension type ReadableStreamDefaultReader._(JSObject _) implements JSObject {
  external factory ReadableStreamDefaultReader(ReadableStream stream);

  /// The **`read()`** method of the [ReadableStreamDefaultReader] interface
  /// returns a `Promise` providing access to the next chunk in the stream's
  /// internal queue.
  external JSPromise<ReadableStreamReadResult> read();

  /// The **`releaseLock()`** method of the [ReadableStreamDefaultReader]
  /// interface releases the reader's lock on the stream.
  ///
  /// If the associated stream is errored when the lock is released, the reader
  /// will appear errored in that same way subsequently; otherwise, the reader
  /// will appear closed.
  ///
  /// If the reader's lock is released while it still has pending read requests
  /// then the promises returned by the reader's
  /// [ReadableStreamDefaultReader.read] method are immediately rejected with a
  /// `TypeError`.
  /// Unread chunks remain in the stream's internal queue and can be read later
  /// by acquiring a new reader.
  external void releaseLock();

  /// The **`cancel()`** method of the
  /// [ReadableStreamDefaultReader] interface returns a `Promise` that resolves
  /// when the stream is canceled. Calling this method signals a loss of
  /// interest in the stream by a consumer.
  ///
  /// Cancel is used when you've completely finished with the stream and don't
  /// need any more
  /// data from it, even if there are chunks enqueued waiting to be read. That
  /// data is lost
  /// after cancel is called, and the stream is not readable any more. To read
  /// those chunks
  /// still and not completely get rid of the stream, you'd use
  /// [ReadableStreamDefaultController.close].
  ///
  /// > [!NOTE]
  /// > If the reader is active, the
  /// > `cancel()` method behaves the same as that for the associated stream
  /// > ([ReadableStream.cancel]).
  external JSPromise<JSAny?> cancel([JSAny? reason]);

  /// The **`closed`** read-only property of the
  /// [ReadableStreamDefaultReader] interface returns a
  /// `Promise` that fulfills when the stream closes, or rejects if the
  /// stream throws an error or the reader's lock is released. This property
  /// enables you
  /// to write code that responds to an end to the streaming process.
  external JSPromise<JSAny?> get closed;
}
extension type ReadableStreamReadResult._(JSObject _) implements JSObject {
  external factory ReadableStreamReadResult({
    JSAny? value,
    bool done,
  });

  external JSAny? get value;
  external set value(JSAny? value);
  external bool get done;
  external set done(bool value);
}

/// The `ReadableStreamBYOBReader` interface of the
/// [Streams API](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API)
/// defines a reader for a [ReadableStream] that supports zero-copy reading from
/// an underlying byte source.
/// It is used for efficient copying from underlying sources where the data is
/// delivered as an "anonymous" sequence of bytes, such as files.
///
/// An instance of this reader type should usually be obtained by calling
/// [ReadableStream.getReader] on the stream, specifying `mode: "byob"` in the
/// options parameter.
/// The readable stream must have an _underlying byte source_. In other words,
/// it must have been
/// [constructed](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/ReadableStream)
/// specifying an underlying source with [`type:
/// "bytes"`](/en-US/docs/Web/API/ReadableStream/ReadableStream#type)).
///
/// Using this kind of reader, a [`read()`](#readablestreambyobreader.read)
/// request when the readable stream's internal queues are empty will result in
/// a zero copy transfer from the underlying source (bypassing the stream's
/// internal queues).
/// If the internal queues are not empty, a `read()` will satisfy the request
/// from the buffered data.
///
/// Note that the methods and properties are similar to those for the default
/// reader ([ReadableStreamDefaultReader]).
/// The `read()` method differs in that it provides a view into which data
/// should be written.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader).
extension type ReadableStreamBYOBReader._(JSObject _) implements JSObject {
  external factory ReadableStreamBYOBReader(ReadableStream stream);

  /// The **`read()`** method of the [ReadableStreamBYOBReader] interface is
  /// used to read data into a view on a user-supplied buffer from an associated
  /// [readable byte stream](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API/Using_readable_byte_streams).
  /// A request for data will be satisfied from the stream's internal queues if
  /// there is any data present.
  /// If the stream queues are empty, the request may be supplied as a zero-copy
  /// transfer from the underlying byte source.
  ///
  /// The method takes as an argument a view on a buffer that supplied data is
  /// to be read into, and returns a `Promise`.
  /// The promise fulfills with an object that has properties `value` and `done`
  /// when data comes available, or if the stream is cancelled.
  /// If the stream is errored, the promise will be rejected with the relevant
  /// error object.
  ///
  /// When a chunk of data is supplied, the `value` property will contain a new
  /// view.
  /// This will be a view over the same buffer/backing memory (and of the same
  /// type) as the original `view` passed to the `read()` method, now populated
  /// with the new chunk of data.
  /// Note that once the promise fulfills, the original `view` passed to the
  /// method will be detached and no longer usable.
  /// The promise will fulfill with a `value: undefined` if the stream has been
  /// cancelled.
  /// In this case the backing memory region of `view` is discarded and not
  /// returned to the caller (all previously read data in the view's buffer is
  /// lost).
  ///
  /// The `done` property indicates whether or not more data is expected.
  /// The value is set `true` if the stream is closed or cancelled, and `false`
  /// otherwise.
  ///
  /// The method also has an optional `options.min` argument that can be used to
  /// specify the minimum number of elements that must be available before the
  /// promise will fulfill, while the stream is active.
  /// The view returned in the `value` property will always have at least this
  /// number of elements, except when the stream is closed.
  external JSPromise<ReadableStreamReadResult> read(
    ArrayBufferView view, [
    ReadableStreamBYOBReaderReadOptions options,
  ]);

  /// The **`releaseLock()`** method of the [ReadableStreamBYOBReader] interface
  /// releases the reader's lock on the stream.
  /// After the lock is released, the reader is no longer active.
  ///
  /// The reader will appear errored if the associated stream is errored when
  /// the lock is released; otherwise, the reader will appear closed.
  ///
  /// If the reader's lock is released while it still has pending read requests
  /// then the promises returned by the reader's [ReadableStreamBYOBReader.read]
  /// method are immediately rejected with a `TypeError`.
  /// Unread chunks remain in the stream's internal queue and can be read later
  /// by acquiring a new reader.
  external void releaseLock();

  /// The **`cancel()`** method of the [ReadableStreamBYOBReader] interface
  /// returns a `Promise` that resolves when the stream is canceled.
  /// Calling this method signals a loss of interest in the stream by a
  /// consumer.
  ///
  /// > [!NOTE]
  /// > If the reader is active, the `cancel()` method behaves the same as that
  /// > for the associated stream ([ReadableStream.cancel]).
  external JSPromise<JSAny?> cancel([JSAny? reason]);

  /// The **`closed`** read-only property of the [ReadableStreamBYOBReader]
  /// interface returns a `Promise` that fulfills when the stream closes, or
  /// rejects if the stream throws an error or the reader's lock is released.
  ///
  /// This property enables you to write code that responds to an end to the
  /// streaming process.
  external JSPromise<JSAny?> get closed;
}
extension type ReadableStreamBYOBReaderReadOptions._(JSObject _)
    implements JSObject {
  external factory ReadableStreamBYOBReaderReadOptions({int min});

  external int get min;
  external set min(int value);
}

/// The **`WritableStream`** interface of the
/// [Streams API](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API)
/// provides a standard abstraction for writing streaming data to a destination,
/// known as a sink.
/// This object comes with built-in backpressure and queuing.
///
/// `WritableStream` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WritableStream).
extension type WritableStream._(JSObject _) implements JSObject {
  external factory WritableStream([
    JSObject underlyingSink,
    QueuingStrategy strategy,
  ]);

  /// The **`abort()`** method of the [WritableStream] interface aborts the
  /// stream, signaling that the producer can no longer successfully write to
  /// the stream and it is to be immediately moved to an error state, with any
  /// queued writes discarded.
  external JSPromise<JSAny?> abort([JSAny? reason]);

  /// The **`close()`** method of the [WritableStream] interface closes the
  /// associated stream. All chunks written before this method is called are
  /// sent before the returned promise is fulfilled.
  ///
  /// This is equivalent to getting a [WritableStreamDefaultWriter] with
  /// [WritableStream.getWriter], calling [WritableStreamDefaultWriter.close] on
  /// it.
  external JSPromise<JSAny?> close();

  /// The **`getWriter()`** method of the [WritableStream] interface returns a
  /// new instance of [WritableStreamDefaultWriter] and locks the stream to that
  /// instance.
  /// While the stream is locked, no other writer can be acquired until this one
  /// is released.
  external WritableStreamDefaultWriter getWriter();

  /// The **`locked`** read-only property of the [WritableStream] interface
  /// returns a boolean indicating whether the `WritableStream` is locked to a
  /// writer.
  external bool get locked;
}

/// The **`WritableStreamDefaultWriter`** interface of the
/// [Streams API](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API)
/// is the object returned by [WritableStream.getWriter] and once created locks
/// the writer to the `WritableStream` ensuring that no other streams can write
/// to the underlying sink.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WritableStreamDefaultWriter).
extension type WritableStreamDefaultWriter._(JSObject _) implements JSObject {
  external factory WritableStreamDefaultWriter(WritableStream stream);

  /// The **`abort()`** method of the
  /// [WritableStreamDefaultWriter] interface aborts the stream, signaling that
  /// the producer can no longer successfully write to the stream and it is to
  /// be immediately
  /// moved to an error state, with any queued writes discarded.
  ///
  /// If the writer is active, the `abort()` method behaves the same as that for
  /// the associated stream ([WritableStream.abort]). If not, it returns a
  /// rejected promise.
  external JSPromise<JSAny?> abort([JSAny? reason]);

  /// The **`close()`** method of the
  /// [WritableStreamDefaultWriter] interface closes the associated writable
  /// stream.
  ///
  /// The underlying sink will finish processing any previously-written chunks,
  /// before
  /// invoking the close behavior. During this time any further attempts to
  /// write will fail
  /// (without erroring the stream).
  external JSPromise<JSAny?> close();

  /// The **`releaseLock()`** method of the
  /// [WritableStreamDefaultWriter] interface releases the writer's lock on the
  /// corresponding stream. After the lock is released, the writer is no longer
  /// active. If the
  /// associated stream is errored when the lock is released, the writer will
  /// appear errored
  /// in the same way from now on; otherwise, the writer will appear closed.
  external void releaseLock();

  /// The **`write()`** method of the
  /// [WritableStreamDefaultWriter] interface writes a passed chunk of data to a
  /// [WritableStream] and its underlying sink, then returns a
  /// `Promise` that resolves to indicate the success or failure of the write
  /// operation.
  ///
  /// Note that what "success" means is up to the underlying sink; it might
  /// indicate that the
  /// chunk has been accepted, and not necessarily that it is safely saved to
  /// its ultimate
  /// destination.
  external JSPromise<JSAny?> write([JSAny? chunk]);

  /// The **`closed`** read-only property of the
  /// [WritableStreamDefaultWriter] interface returns a
  /// `Promise` that fulfills if the stream becomes closed, or rejects if
  /// the stream errors or the writer's lock is released.
  external JSPromise<JSAny?> get closed;

  /// The **`desiredSize`** read-only property of the
  /// [WritableStreamDefaultWriter] interface returns the desired size required
  /// to fill the stream's internal queue.
  external double? get desiredSize;

  /// The **`ready`** read-only property of the
  /// [WritableStreamDefaultWriter] interface returns a `Promise`
  /// that resolves when the desired size of the stream's internal queue
  /// transitions from
  /// non-positive to positive, signaling that it is no longer applying
  /// backpressure.
  external JSPromise<JSAny?> get ready;
}
extension type QueuingStrategy._(JSObject _) implements JSObject {
  external factory QueuingStrategy({
    num highWaterMark,
    QueuingStrategySize size,
  });

  external double get highWaterMark;
  external set highWaterMark(num value);
  external QueuingStrategySize get size;
  external set size(QueuingStrategySize value);
}
