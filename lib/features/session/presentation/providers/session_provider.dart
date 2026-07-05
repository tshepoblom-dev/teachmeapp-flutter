import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/dio_provider.dart';
import '../../data/session_api.dart';
import '../../data/session_repository.dart';

final sessionApiProvider = Provider<SessionApi>((ref) => SessionApi(ref.watch(dioProvider)));

final sessionRepositoryProvider = Provider<SessionRepository>((ref) {
  return SessionRepository(ref.watch(sessionApiProvider));
});
