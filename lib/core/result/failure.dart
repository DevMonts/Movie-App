import 'package:movie_app/core/result/result.dart';

class Failure<T> extends Result<T> {
  Exception exception;
  Object? object;
  Failure(
    this.exception, [
    this.object,
  ]);
}
