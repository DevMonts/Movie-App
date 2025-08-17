import 'package:movie_app/core/result/result.dart';

class Success<T> extends Result<T> {
  final T successResult;
  Success(
    this.successResult,
  );
}
