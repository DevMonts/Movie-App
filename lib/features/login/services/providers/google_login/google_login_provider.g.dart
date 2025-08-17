// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_login_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(googleLoginService)
const googleLoginServiceProvider = GoogleLoginServiceProvider._();

final class GoogleLoginServiceProvider
    extends
        $FunctionalProvider<
          GoogleLoginService,
          GoogleLoginService,
          GoogleLoginService
        >
    with $Provider<GoogleLoginService> {
  const GoogleLoginServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'googleLoginServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$googleLoginServiceHash();

  @$internal
  @override
  $ProviderElement<GoogleLoginService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GoogleLoginService create(Ref ref) {
    return googleLoginService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoogleLoginService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoogleLoginService>(value),
    );
  }
}

String _$googleLoginServiceHash() =>
    r'92583962b92cd609809e7014fe2392b5ab5276e3';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
