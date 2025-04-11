// import 'package:amamini_client/presentation/bloc/home_screen/home_screen_bloc.dart';
// import 'package:amamini_client/presentation/screens/home/view_model/home_page_view_model.dart';
// import 'package:amamini_client/presentation/screens/home/widgets/featured_products_list_view.dart';
// import 'package:amamini_client/presentation/screens/home/widgets/home_page_categories_widget.dart';
// import 'package:app_ui_kit/ui_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class HomePageView extends StatefulWidget {
//   const HomePageView({
//     super.key,
//   });
//
//   @override
//   State<HomePageView> createState() => _HomePageViewState();
// }
//
// class _HomePageViewState extends State<HomePageView> {
//   final _viewModel = HomePageViewModel();
//
//   @override
//   void initState() {
//     super.initState();
//     _viewModel.fetchHomeScreenData(context);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeScreenBloc, HomeScreenState>(
//       builder: (context, state) {
//         if (state is HomeScreenLoading) {
//           return const Center(child: CircularProgressIndicator());
//         } else if (state is HomeScreenLoaded) {
//           return Scaffold(
//             body: RefreshIndicator(
//               onRefresh: () async {
//                 _viewModel.fetchHomeScreenData(context);
//               },
//               child: SafeArea(
//                 child: ListView(
//                   children: [
//                     HomePageCategoriesWidget(categories: state.categories),
//                     FeaturedProductsList(featuredProducts: state.products),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         } else if (state is HomeScreenError) {
//           return AppErrorWidget(
//             message: state.message,
//             onPressed: () {
//               _viewModel.fetchHomeScreenData(context);
//             },
//           );
//         }
//         return const SizedBox.shrink();
//       },
//     );
//   }
// }
