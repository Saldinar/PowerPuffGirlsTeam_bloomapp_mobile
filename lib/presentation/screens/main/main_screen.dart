// // ignore_for_file: sort_constructors_first
//
// import 'package:amamini_client/features/domain/entity/auth/auth_request_entity.dart';
// import 'package:amamini_client/features/presentation/bloc/auth/auth_bloc.dart';
// import 'package:amamini_client/generated/l10n.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
//
// class MainScreen extends StatefulWidget {
//   final StatefulNavigationShell navigationShell;
//   const MainScreen({required this.navigationShell, super.key});
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   final _authEntity = AuthRequestEntity(isGuest: true);
//
//   @override
//   void initState() {
//     super.initState();
//     context.read<AuthBloc>()
//       ..add(CheckCustomerAuthEvent(request: _authEntity))
//       ..add(CheckUserStatusEvent());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: widget.navigationShell,
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: widget.navigationShell.currentIndex,
//         onTap: _onTapToPage,
//         items: [
//           BottomNavigationBarItem(
//             icon: const Icon(Icons.home),
//             label: S.of(context).home,
//           ),
//           BottomNavigationBarItem(
//             icon: const Icon(Icons.menu),
//             label: S.of(context).catalog,
//           ),
//           BottomNavigationBarItem(
//             icon: const Icon(Icons.shopping_cart),
//             label: S.of(context).cart,
//           ),
//           BottomNavigationBarItem(
//             icon: const Icon(Icons.account_box),
//             label: S.of(context).account,
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _onTapToPage(int index) {
//     widget.navigationShell.goBranch(
//       index,
//       initialLocation: index == widget.navigationShell.currentIndex,
//     );
//   }
// }
