// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_command.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(LoginCommand)
const loginCommandProvider = LoginCommandProvider._();

final class LoginCommandProvider
    extends $NotifierProvider<LoginCommand, AsyncValue<void>> {
  const LoginCommandProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginCommandProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginCommandHash();

  @$internal
  @override
  LoginCommand create() => LoginCommand();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$loginCommandHash() => r'b001e159d2c4eef5bc766cf3b447d332728ea294';

abstract class _$LoginCommand extends $Notifier<AsyncValue<void>> {
  AsyncValue<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<void>, AsyncValue<void>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, AsyncValue<void>>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
