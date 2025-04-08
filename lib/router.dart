import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/first_nav_screen/home1.dart';
import 'package:navigation/first_nav_screen/home2.dart';
import 'package:navigation/first_nav_screen/profile.dart';
import 'package:navigation/first_nav_screen/home4.dart';
import 'package:navigation/second_nav_screen/second1.dart';
import 'package:navigation/second_nav_screen/second2.dart';
import 'package:navigation/second_nav_screen/second3.dart';
import 'package:navigation/second_nav_screen/second_nav.dart';
import 'package:navigation/first_nav_screen/settings.dart';
import 'package:navigation/first_nav_screen/first_nav.dart';
import 'package:navigation/public_screen/new_screen.dart';
import 'package:navigation/public_screen/parameter_screen.dart';
import 'public_screen/not_page_found.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/user/home',
  routes: [
    /// SHELL Route in which update initState every time when tab
    ///===================================================================
    /// 1 Navigation Bar Screens Stack
    /// ==================================================================

    ShellRoute(
      builder: (context, state, child) {
        return FirstNav(
            child: child); // Your main bottom navigation bar for user
      },
      routes: [
        /// 🏠 Home Tab
        GoRoute(
          path: '/user/home',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: Home1()),
          routes: [
            GoRoute(
              path: 'details',
              pageBuilder: (context, state) => CustomTransitionPage(
                key: state.pageKey,
                child: const Home2(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: animation.drive(
                      Tween(begin: const Offset(1, 0), end: Offset.zero)
                          .chain(CurveTween(curve: Curves.easeInOut)),
                    ),
                    child: child,
                  );
                },
              ),
            ),
          ],
        ),

        /// 👤 Profile Tab
        GoRoute(
          path: '/user/profile',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: Profile()),
          routes: [
            GoRoute(
              path: 'edit',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: Home4()),
            ),
          ],
        ),

        /// ⚙️ Settings Tab
        // GoRoute(
        //   path: '/user/settings',
        //   builder: (context, state) => const Settings(),
        //   routes: [
        //     GoRoute(
        //       path: 'privacy',
        //       pageBuilder: (context, state) => NoTransitionPage(child: Home1()),
        //     ),
        //   ],
        // ),
        GoRoute(
          path: '/user/settings',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: Settings()),
          routes: [
            GoRoute(
              path: 'privacy',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: Home1()),
            ),
          ],
        ),
      ],
    ),

    /// StatefulShellRoute.indexedStack in which not update initState every time when tab
    ///===================================================================
    /// 2 Navigation Bar Screens Stack
    /// ==================================================================

    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return SecondNav(navigationShell: navigationShell);
      },
      branches: [
        // 🏠 Home Navigation Stack
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/donor/home',
              builder: (context, state) => const Second1(),
              routes: [
                GoRoute(
                    path: 'details',
                    builder: (context, state) => const Home2()),
              ],
            ),
          ],
        ),

        // 👤 Profile Navigation Stack
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/donor/profile',
              builder: (context, state) => const Second2(),
              routes: [
                GoRoute(
                    path: 'edit', builder: (context, state) => const Home4()),
              ],
            ),
          ],
        ),

        // ⚙️ Settings Navigation Stack
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/donor/settings',
              builder: (context, state) => const Second3(),
              routes: [
                GoRoute(
                    path: 'privacy',
                    builder: (context, state) => const Home1()),
              ],
            ),
          ],
        ),
      ],
    ),

    ///=====================================================================
    /// ✅ Extra Screens (Not in Bottom Navigation)
    /// ===================================================================

    GoRoute(
      path: '/new',
      pageBuilder: (context, state) => const NoTransitionPage(
        child: NewScreen(), // Replace with your actual widget
      ),
    ),

    GoRoute(
      path: '/param/:value/:active',
      pageBuilder: (context, state) {
        final paramValue = state.pathParameters['value'] ?? 'Default Value 1';
        final isActive = state.pathParameters['active'] == 'true';
        return NoTransitionPage(
            child: ParameterScreen(
          param: paramValue,
          isActive: isActive,
        ) // Replace with your actual widget
            );
      },
    ),
  ],
  errorPageBuilder: (context, state) => const NoTransitionPage(
    child: NotFoundScreen(),
  ),
);
