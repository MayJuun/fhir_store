import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_state.freezed.dart';

@freezed
class AsyncState with _$AsyncState {
  const AsyncState._();
  const factory AsyncState.initial({String? type, String? display}) =
      AsyncStateInitial;
  const factory AsyncState.loading({String? type, String? display}) =
      AsyncStateLoading;
  const factory AsyncState.success({
    String? type,
    String? display,
    @Default([]) List data,
  }) = AsyncStateData;
  const factory AsyncState.error({
    String? type,
    String? display,
    required Object error,
    StackTrace? stackTrace,
  }) = AsyncStateError;

  String stateDisplay() => map.call(
        initial: (s) => '${s.type ?? s.display ?? ''} has not started',
        loading: (s) => '${s.type ?? s.display ?? ''} loading',
        success: (s) => '${s.type ?? s.display ?? ''} completed',
        error: (s) => '${s.type ?? s.display ?? "There was an error"}',
      );
}
