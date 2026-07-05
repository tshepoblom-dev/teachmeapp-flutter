import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/dio_provider.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../data/profile_api.dart';
import '../../data/profile_repository.dart';

final profileApiProvider = Provider<ProfileApi>((ref) => ProfileApi(ref.watch(dioProvider)));

final profileRepositoryProvider =
    Provider<ProfileRepository>((ref) => ProfileRepository(ref.watch(profileApiProvider)));

/// Mutations only — the current [User] (with nested `profile`) lives in
/// [authProvider], updated here via `setUser` so there's a single source of
/// truth rather than a second cached copy.
class ProfileNotifier extends Notifier<AsyncValue<void>> {
  @override
  AsyncValue<void> build() => const AsyncValue.data(null);

  Future<void> updateProfile(Map<String, dynamic> data) async {
    state = const AsyncValue.loading();
    try {
      final user = await ref.read(profileRepositoryProvider).updateProfile(data);
      ref.read(authProvider.notifier).setUser(user);
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  Future<void> uploadAvatar(File file) async {
    state = const AsyncValue.loading();
    try {
      final user = await ref.read(profileRepositoryProvider).uploadAvatar(file);
      ref.read(authProvider.notifier).setUser(user);
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
    required String newPasswordConfirmation,
  }) async {
    state = const AsyncValue.loading();
    try {
      await ref.read(profileRepositoryProvider).changePassword(
            currentPassword: currentPassword,
            newPassword: newPassword,
            newPasswordConfirmation: newPasswordConfirmation,
          );
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }
}

final profileNotifierProvider =
    NotifierProvider<ProfileNotifier, AsyncValue<void>>(ProfileNotifier.new);
