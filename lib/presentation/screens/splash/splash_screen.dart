// import 'package:amamini_client/config/navigation/routes.dart';
// import 'package:app_ui_kit/ui_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 2), () async {
//       context.read<SplashBloc>().add(CheckUserLoggedIn());
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<SplashBloc, SplashState>(
//       listener: (context, state) {
//         if (state is UserAuthenticated) {
//           context.goNamed(Routes.homePage.name);
//         } else if (state is UserNotAuthenticated) {
//           context.goNamed(Routes.homePage.name);
//         }
//       },
//       child: Scaffold(
//         body: Center(
//           child: Image.asset(
//             AppAssets.appLogo,
//             height: 150,
//             width: 150,
//           ),
//         ),
//       ),
//     );
//   }
// }
