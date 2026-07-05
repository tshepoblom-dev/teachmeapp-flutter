import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/reference_data.dart';
import 'discover_provider.dart';

final institutionsProvider = FutureProvider<List<Institution>>((ref) {
  return ref.read(discoverRepositoryProvider).fetchInstitutions();
});

final subjectsProvider = FutureProvider.family<List<Subject>, int?>((ref, institutionId) {
  return ref.read(discoverRepositoryProvider).fetchSubjects(institutionId: institutionId);
});
