part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState() = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);

  factory AuthState.initial() {
    return const AuthState();
  }
}