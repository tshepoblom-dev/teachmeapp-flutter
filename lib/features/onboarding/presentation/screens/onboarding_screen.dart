import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/router/route_paths.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_logo.dart';
import '../providers/onboarding_provider.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  static const _pageCount = 4;

  final _controller = PageController();
  int _page = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goTo(int index) {
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _completeAndGo(String path) {
    ref.read(onboardingProvider.notifier).markSeen();
    context.go(path);
  }

  @override
  Widget build(BuildContext context) {
    final onWelcomePage = _page == 0;

    return Scaffold(
      backgroundColor: onWelcomePage ? AppColors.green : AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) => setState(() => _page = index),
                children: [
                  const _WelcomePage(),
                  const _SlidePage(
                    asset: 'assets/animations/start_learning.json',
                    title: 'Start learning now!',
                    body: 'Find expert tutors, book sessions, and learn at your own '
                        'pace — anytime, anywhere.',
                  ),
                  const _SlidePage(
                    asset: 'assets/animations/teach_your_skills.json',
                    title: 'Teach your skills!',
                    body: 'Share what you know, connect with eager learners, and '
                        'earn on your own schedule.',
                  ),
                  _CtaPage(
                    onSignUp: () => _completeAndGo(RoutePaths.registerRole),
                    onLogIn: () => _completeAndGo(RoutePaths.login),
                  ),
                ],
              ),
            ),
            if (_page < _pageCount - 1)
              _BottomBar(
                page: _page,
                pageCount: _pageCount,
                onWelcomePage: onWelcomePage,
                onSkip: () => _goTo(_pageCount - 1),
                onNext: () => _goTo(_page + 1),
              ),
          ],
        ),
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    required this.page,
    required this.pageCount,
    required this.onWelcomePage,
    required this.onSkip,
    required this.onNext,
  });

  final int page;
  final int pageCount;
  final bool onWelcomePage;
  final VoidCallback onSkip;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    final foreground = onWelcomePage ? Colors.white : AppColors.green;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      child: Row(
        children: [
          TextButton(
            onPressed: onSkip,
            style: TextButton.styleFrom(foregroundColor: foreground),
            child: const Text('Skip'),
          ),
          const Spacer(),
          _PageDots(page: page, pageCount: pageCount, onWelcomePage: onWelcomePage),
          const Spacer(),
          FilledButton(
            onPressed: onNext,
            style: FilledButton.styleFrom(
              backgroundColor: onWelcomePage ? Colors.white : AppColors.green,
              foregroundColor: onWelcomePage ? AppColors.green : Colors.white,
            ),
            child: Text(onWelcomePage ? 'Get Started' : 'Next'),
          ),
        ],
      ),
    );
  }
}

class _PageDots extends StatelessWidget {
  const _PageDots({required this.page, required this.pageCount, required this.onWelcomePage});

  final int page;
  final int pageCount;
  final bool onWelcomePage;

  @override
  Widget build(BuildContext context) {
    final activeColor = onWelcomePage ? Colors.white : AppColors.green;
    final inactiveColor = onWelcomePage ? Colors.white.withValues(alpha: 0.4) : AppColors.divider;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(pageCount, (index) {
        final active = index == page;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: active ? 20 : 6,
          height: 6,
          decoration: BoxDecoration(
            color: active ? activeColor : inactiveColor,
            borderRadius: BorderRadius.circular(AppRadius.pill),
          ),
        );
      }),
    );
  }
}

class _WelcomePage extends StatelessWidget {
  const _WelcomePage();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: const AppLogo(size: 64),
          ),
          const SizedBox(height: 32),
          Text(
            'Welcome to TeachMeApp',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          const Text(
            'Learn something new. Teach what you know.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class _SlidePage extends StatelessWidget {
  const _SlidePage({required this.asset, required this.title, required this.body});

  final String asset;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 280, child: Lottie.asset(asset)),
          const SizedBox(height: 32),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 12),
          Text(
            body,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class _CtaPage extends StatelessWidget {
  const _CtaPage({required this.onSignUp, required this.onLogIn});

  final VoidCallback onSignUp;
  final VoidCallback onLogIn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(child: AppLogo(size: 64)),
          const SizedBox(height: 24),
          Text(
            'Ready to get started?',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Create an account or log in to continue.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 32),
          AppButton(label: 'Sign up', onPressed: onSignUp),
          const SizedBox(height: 12),
          AppButton(label: 'Log in', outlined: true, onPressed: onLogIn),
        ],
      ),
    );
  }
}
