import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/route_paths.dart';
import '../providers/registration_form_provider.dart';

class RegisterRoleScreen extends ConsumerWidget {
  const RegisterRoleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create account')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("I'm joining as a...", style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 24),
              _RoleCard(
                title: 'Student',
                subtitle: 'Book and attend tutoring sessions',
                icon: Icons.school_outlined,
                onTap: () {
                  ref.read(registrationFormProvider.notifier).setRole('student');
                  context.push(RoutePaths.registerDetails);
                },
              ),
              const SizedBox(height: 16),
              _RoleCard(
                title: 'Tutor',
                subtitle: 'Teach and earn from live sessions',
                icon: Icons.menu_book_outlined,
                onTap: () {
                  ref.read(registrationFormProvider.notifier).setRole('tutor');
                  context.push(RoutePaths.registerDetails);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RoleCard extends StatelessWidget {
  const _RoleCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(icon, size: 36, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 4),
                    Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
