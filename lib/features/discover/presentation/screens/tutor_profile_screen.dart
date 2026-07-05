import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/utils/money_formatter.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/error_view.dart';
import '../providers/tutor_profile_provider.dart';

const _weekdayNames = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

class TutorProfileScreen extends ConsumerWidget {
  const TutorProfileScreen({super.key, required this.tutorId});

  final int tutorId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(tutorProfileProvider(tutorId));

    return Scaffold(
      appBar: AppBar(title: const Text('Tutor profile')),
      body: detail.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          failure: Failure.fromError(error),
          onRetry: () => ref.invalidate(tutorProfileProvider(tutorId)),
        ),
        data: (detail) {
          final tutor = detail.tutor;
          return SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundImage:
                          tutor.avatarUrl != null ? NetworkImage(tutor.avatarUrl!) : null,
                      child: tutor.avatarUrl == null
                          ? Text(tutor.name.isNotEmpty ? tutor.name[0].toUpperCase() : '?')
                          : null,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tutor.name, style: Theme.of(context).textTheme.titleLarge),
                          Row(
                            children: [
                              const Icon(Icons.star, size: 16, color: Colors.amber),
                              Text(
                                ' ${tutor.averageRating.toStringAsFixed(1)} (${tutor.totalReviews} reviews)',
                              ),
                            ],
                          ),
                          if (tutor.tier != null) Chip(label: Text(tutor.tier!)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                if (tutor.bio != null) ...[
                  Text('About', style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(height: 4),
                  Text(tutor.bio!),
                  const SizedBox(height: 16),
                ],
                Text('Rate', style: Theme.of(context).textTheme.titleSmall),
                Text('${MoneyFormatter.format(tutor.hourlyRate)}/hour'),
                const SizedBox(height: 16),
                if (tutor.subjects.isNotEmpty) ...[
                  Text('Subjects', style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(height: 4),
                  Wrap(
                    spacing: 8,
                    children: tutor.subjects.map((s) => Chip(label: Text(s.name))).toList(),
                  ),
                  const SizedBox(height: 16),
                ],
                if (detail.availability.isNotEmpty) ...[
                  Text('Weekly availability', style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(height: 4),
                  ...detail.availability.map(
                    (w) => Text(
                      '${_weekdayNames[w.dayOfWeek]}: ${w.startTime} – ${w.endTime}',
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
                if (detail.reviews.isNotEmpty) ...[
                  Text('Reviews', style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(height: 4),
                  ...detail.reviews.map((r) => Card(
                        child: ListTile(
                          title: Row(
                            children: List.generate(
                              5,
                              (i) => Icon(
                                i < r.rating ? Icons.star : Icons.star_border,
                                size: 14,
                                color: Colors.amber,
                              ),
                            ),
                          ),
                          subtitle: Text(r.comment ?? ''),
                          trailing: Text(r.date, style: Theme.of(context).textTheme.bodySmall),
                        ),
                      )),
                  const SizedBox(height: 16),
                ],
                AppButton(
                  label: 'Book a session',
                  onPressed: () => context.push(RoutePaths.bookingCreate(tutorId)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
