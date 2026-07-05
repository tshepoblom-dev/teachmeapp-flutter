import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../providers/profile_provider.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _bioController = TextEditingController();
  final _phoneController = TextEditingController();
  bool _isSaving = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    final user = ref.read(authProvider).maybeWhen(
          authenticated: (user) => user,
          accountIssue: (user, _, __) => user,
          orElse: () => null,
        );
    _bioController.text = user?.profile?.bio ?? '';
    _phoneController.text = user?.profile?.phoneNumber ?? '';
  }

  @override
  void dispose() {
    _bioController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() {
      _isSaving = true;
      _error = null;
    });
    try {
      await ref.read(profileNotifierProvider.notifier).updateProfile({
        'bio': _bioController.text.trim(),
        'phone_number': _phoneController.text.trim(),
      });
      if (mounted) Navigator.of(context).pop();
    } catch (error) {
      setState(() => _error = Failure.fromError(error).message);
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  Future<void> _pickAvatar() async {
    final picked = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1024,
      imageQuality: 85,
    );
    if (picked == null) return;
    try {
      await ref.read(profileNotifierProvider.notifier).uploadAvatar(File(picked.path));
    } catch (error) {
      if (mounted) {
        setState(() => _error = Failure.fromError(error).message);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit profile')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: TextButton.icon(
                  onPressed: _pickAvatar,
                  icon: const Icon(Icons.camera_alt_outlined),
                  label: const Text('Change photo'),
                ),
              ),
              const SizedBox(height: 16),
              AppTextField(label: 'Bio', controller: _bioController),
              const SizedBox(height: 16),
              AppTextField(
                label: 'Phone number',
                controller: _phoneController,
                keyboardType: TextInputType.phone,
              ),
              if (_error != null) ...[
                const SizedBox(height: 12),
                Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
              ],
              const SizedBox(height: 24),
              AppButton(label: 'Save', isLoading: _isSaving, onPressed: _save),
            ],
          ),
        ),
      ),
    );
  }
}
