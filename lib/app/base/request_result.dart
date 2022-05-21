import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woo_network_assessment/data/network/exception/network_exceptions.dart';

part 'request_result.freezed.dart';

@freezed
class RequestResult<T> with _$RequestResult<T> {
  const factory RequestResult.success({required final T data}) =
      _RequestResult<T>;

  const factory RequestResult.failure({required final AppException error}) =
      _Failure<T>;
}
