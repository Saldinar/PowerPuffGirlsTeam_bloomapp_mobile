import 'package:bloom/config/navigation/routes.dart';
import 'package:bloom/presentation/screens/auth/auth_screen.dart';
import 'package:bloom/presentation/screens/calendar/calendar_screen.dart';
import 'package:bloom/presentation/screens/chatbot/chatbot_screen.dart';
import 'package:bloom/presentation/screens/cycledetails/cycle_details_screens.dart';
import 'package:bloom/presentation/screens/main/main_screen.dart';
import 'package:bloom/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:bloom/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/onboarding',
  routes: [
    GoRoute(
      path: '/splash',
      name: Routes.splash.name,
      builder: (context, state) => const SplashScreen(),
    ),
    // goNamed
    // goPushNamed
    GoRoute(
      path: '/onboarding',
      name: Routes.onboarding.name,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/auth',
      name: Routes.auth.name,
      builder: (context, state) => const AuthScreen(),
    ),
    GoRoute(
      path: '/cycleDetails',
      name: Routes.cycleDetails.name,
      builder: (context, state) => const CycleDetailsScreens(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (
        BuildContext context,
        GoRouterState state,
        StatefulNavigationShell navigationShell,
      ) {
        return MainScreen(
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/chat',
              name: Routes.chat.name,
              builder: (context, state) => const ChatScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/calendar',
              name: Routes.calendar.name,
              builder: (context, state) => const CalendarScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
