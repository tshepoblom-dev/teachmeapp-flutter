import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/dio_provider.dart';
import '../../data/kyc_api.dart';
import '../../data/kyc_repository.dart';
import '../../domain/kyc_status.dart';

final kycApiProvider = Provider<KycApi>((ref) => KycApi(ref.watch(dioProvider)));

final kycRepositoryProvider = Provider<KycRepository>((ref) {
  return KycRepository(ref.watch(kycApiProvider));
});

class KycStatusNotifier extends AsyncNotifier<KycStatusSummary> {
  @override
  Future<KycStatusSummary> build() => ref.read(kycRepositoryProvider).fetchStatus();

  void refresh() => ref.invalidateSelf();

  Future<void> apply(String applicationType) async {
    await ref.read(kycRepositoryProvider).apply(applicationType);
    ref.invalidateSelf();
  }

  Future<void> uploadDocument({required File file, required String documentType}) async {
    await ref.read(kycRepositoryProvider).uploadDocument(file: file, documentType: documentType);
    ref.invalidateSelf();
  }

  Future<void> deleteDocument(int documentId) async {
    await ref.read(kycRepositoryProvider).deleteDocument(documentId);
    ref.invalidateSelf();
  }
}

final kycStatusProvider = AsyncNotifierProvider<KycStatusNotifier, KycStatusSummary>(
  KycStatusNotifier.new,
);
