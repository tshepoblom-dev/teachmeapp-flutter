import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/route_paths.dart';
import '../../../auth/domain/user.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../kyc/presentation/screens/kyc_screen.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final User? user = authState.maybeWhen(
      authenticated: (user) => user,
      accountIssue: (user, _, __) => user,
      orElse: () => null,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: user == null
          ? const SizedBox.shrink()
          : SafeArea(
              child: ListView(
                padding: const EdgeInsets.all(24),
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 44,
                      backgroundImage: user.profilePhotoUrl != null
                          ? NetworkImage(user.profilePhotoUrl!)
                          : null,
                      child: user.profilePhotoUrl == null
                          ? Text(
                              user.name.isNotEmpty ? user.name[0].toUpperCase() : '?',
                              style: const TextStyle(fontSize: 32),
                            )
                          : null,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Text(user.name, style: Theme.of(context).textTheme.titleLarge),
                  ),
                  Center(
                    child: Text(user.email, style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  const SizedBox(height: 4),
                  Center(
                    child: Chip(label: Text(user.role.toUpperCase())),
                  ),
                  const SizedBox(height: 24),
                  if (user.profile?.bio != null) ...[
                    Text('Bio', style: Theme.of(context).textTheme.titleSmall),
                    const SizedBox(height: 4),
                    Text(user.profile!.bio!),
                    const SizedBox(height: 16),
                  ],
                  if (!user.emailVerified)
                    Card(
                      color: Colors.amber.shade50,
                      child: ListTile(
                        leading: const Icon(Icons.mark_email_unread_outlined),
                        title: const Text('Email not verified'),
                        onTap: () => context.push(RoutePaths.emailVerifyPending),
                      ),
                    ),
                  ListTile(
                    leading: const Icon(Icons.edit_outlined),
                    title: const Text('Edit profile'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.push(RoutePaths.editProfile),
                  ),
                  ListTile(
                    leading: const Icon(Icons.verified_user_outlined),
                    title: const Text('Identity verification'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const KycScreen()),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('Log out'),
                    onTap: () => ref.read(authProvider.notifier).logout(),
                  ),
                ],
              ),
            ),
    );
  }
}
