import 'package:flutter/material.dart';

class ApplicationColors {
  static const Color primary = Color(0xFF445CAA);
  static const Color white = Colors.white;
  static const Color textPrimary = Color(0xFF111827);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textTertiary = Color(0xFF4B5563);
  static const Color indicatorInactive = Color(0xFFD1D5DB);
}

class AppTextStyles {
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: ApplicationColors.textPrimary,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ApplicationColors.textPrimary,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    color: ApplicationColors.textSecondary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    color: ApplicationColors.textTertiary,
  );

  static const TextStyle buttonText = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: ApplicationColors.primary,
      fontFamily: 'Inter',
      scaffoldBackgroundColor: ApplicationColors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ApplicationColors.primary,
          foregroundColor: ApplicationColors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
      textTheme: const TextTheme(
        headlineLarge: AppTextStyles.headlineLarge,
        headlineMedium: AppTextStyles.headlineMedium,
        bodyLarge: AppTextStyles.bodyLarge,
        bodyMedium: AppTextStyles.bodyMedium,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: ApplicationColors.white,
        foregroundColor: ApplicationColors.textPrimary,
        elevation: 0,
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double height;
  final bool isFullWidth;

  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height = 56.0,
    this.isFullWidth = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ApplicationColors.primary,
        foregroundColor: ApplicationColors.white,
        minimumSize: Size(
          isFullWidth ? double.infinity : (width ?? 120),
          height,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: Text(text, style: AppTextStyles.buttonText),
    );
  }
}

class IconCircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double size;
  final Color backgroundColor;
  final Color iconColor;

  const IconCircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.size = 56.0,
    this.backgroundColor = ApplicationColors.primary,
    this.iconColor = ApplicationColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16),
        minimumSize: Size(size, size),
        backgroundColor: backgroundColor,
        foregroundColor: iconColor,
      ),
      child: Icon(icon),
    );
  }
}

class ActionButton extends StatelessWidget {
  final VoidCallback onAction;
  final String text;
  final bool isFullWidth;

  const ActionButton({
    Key? key,
    required this.onAction,
    required this.text,
    this.isFullWidth = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onAction,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(isFullWidth ? double.infinity : 200, 56),
        backgroundColor: ApplicationColors.primary,
        foregroundColor: ApplicationColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(text, style: AppTextStyles.buttonText),
    );
  }
}

class DotIndicator extends StatelessWidget {
  final int currentIndex;
  final int count;
  final double activeDotWidth;
  final double inactiveDotWidth;
  final double dotHeight;
  final Color activeColor;
  final Color inactiveColor;

  const DotIndicator({
    Key? key,
    required this.currentIndex,
    required this.count,
    this.activeDotWidth = 24.0,
    this.inactiveDotWidth = 8.0,
    this.dotHeight = 8.0,
    this.activeColor = ApplicationColors.primary,
    this.inactiveColor = ApplicationColors.indicatorInactive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: currentIndex == index ? activeDotWidth : inactiveDotWidth,
          height: dotHeight,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: currentIndex == index ? activeColor : inactiveColor,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }
}

class CycleTrackerApp extends StatelessWidget {
  final VoidCallback? onOnboardingComplete;

  const CycleTrackerApp({super.key, this.onOnboardingComplete});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cycle Tracker',
      theme: AppTheme.lightTheme,
      home: OnboardingScreen(onComplete: onOnboardingComplete),
      debugShowCheckedModeBanner: false,
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  final VoidCallback? onComplete;

  const OnboardingScreen({super.key, this.onComplete});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentSlide = 0;
  final int _totalSlides = 4;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextSlide() {
    if (_currentSlide < _totalSlides - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevSlide() {
    if (_currentSlide > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToTerms() {
    _pageController.animateToPage(
      3,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _acceptTerms() {
    if (widget.onComplete != null) {
      widget.onComplete!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApplicationColors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentSlide = index;
              });
            },
            children: [
              OnboardingSlide(
                image: Image.asset(
                  'assets/images/main/calendar_cycle_tracking.png',
                  fit: BoxFit.cover,
                ),
                title: 'Track your menstrual cycle',
                description:
                    'Track every phase of Your Cycle with the calendar',
                onNext: _nextSlide,
              ),
              OnboardingSlide(
                image: Image.asset(
                  'assets/images/main/cycle_planning_task.png',
                  fit: BoxFit.cover,
                ),
                title: 'Energy-Based Planning',
                description: 'Cycle-aware planning for a balanced life',
                onNext: _nextSlide,
                onBack: _prevSlide,
                showBackButton: true,
              ),
              OnboardingSlide(
                image: Image.asset(
                  'assets/images/main/habit_tracker_illustration.png',
                  fit: BoxFit.cover,
                ),
                title: 'Build Healthy Habits',
                description:
                    'Build your personal habit tracker and improve every day!',
                onNext: _goToTerms,
                onBack: _prevSlide,
                showBackButton: true,
              ),
              TermsOfUseScreen(onAccept: _acceptTerms),
            ],
          ),
          if (_currentSlide < 3)
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: DotIndicator(currentIndex: _currentSlide, count: 3),
            ),
        ],
      ),
    );
  }
}

class OnboardingSlide extends StatelessWidget {
  final Widget image;
  final String title;
  final String description;
  final VoidCallback onNext;
  final VoidCallback? onBack;
  final bool showBackButton;

  const OnboardingSlide({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.onNext,
    this.onBack,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          width: double.infinity,
          child: image,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            children: [
              Text(
                title,
                style: AppTextStyles.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                description,
                style: AppTextStyles.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (showBackButton) ...[
                IconCircleButton(icon: Icons.arrow_back, onPressed: onBack!),
                const SizedBox(width: 16),
              ],
              IconCircleButton(icon: Icons.arrow_forward, onPressed: onNext),
            ],
          ),
        ),
      ],
    );
  }
}

class TermsOfUseScreen extends StatelessWidget {
  final VoidCallback onAccept;

  const TermsOfUseScreen({super.key, required this.onAccept});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms of Use',
              style: AppTextStyles.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text(
              'We respect your privacy and do not collect or transmit any personal data; all information remains solely on your device. While the app may access certain device features for functionality, no data is collected or shared.',
              style: AppTextStyles.bodyMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Before continuing, please take a look at our privacy policy.',
              style: AppTextStyles.bodyMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'By using this application, you acknowledge that:',
              style: AppTextStyles.bodyMedium,
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '• The predictions and calculations are based on the data you provide and general statistical models.',
                    style: AppTextStyles.bodyMedium,
                  ),
                  Text(
                    '• You should consult with a healthcare professional for medical advice related to your menstrual health.',
                    style: AppTextStyles.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'By clicking "I Accept" below, you agree to these terms and conditions.',
              style: AppTextStyles.bodyMedium,
            ),
            const SizedBox(height: 32),
            ActionButton(onAction: onAccept, text: 'I Accept'),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
