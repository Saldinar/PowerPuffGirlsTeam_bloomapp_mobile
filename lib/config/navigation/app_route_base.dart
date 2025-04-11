import 'package:bloom/config/navigation/routes.dart';
import 'package:bloom/presentation/screens/auth/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: Routes.splash.name,
      builder: (context, state) => const AuthScreen(),
    ),
    // StatefulShellRoute.indexedStack(
    //   builder: (
    //     context,
    //     state,
    //     navigationShell,
    //   ) {
    //     return MainScreen(navigationShell: navigationShell);
    //   },
    //   branches: <StatefulShellBranch>[
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: '/home',
    //           name: Routes.homePage.name,
    //           builder: (context, state) => const HomePage(),
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: '/catalog',
    //           name: Routes.catalogPage.name,
    //           builder: (context, state) => const CatalogScreen(),
    //           routes: [
    //             GoRoute(
    //               path: 'search_in_catalog',
    //               name: Routes.searchCatalogPage.name,
    //               pageBuilder: (context, state) {
    //                 return CustomTransitionPage(
    //                   key: state.pageKey,
    //                   child: const SearchCatalogScreen(),
    //                   transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //                     return FadeTransition(
    //                       opacity: animation,
    //                       child: child,
    //                     );
    //                   },
    //                 );
    //               },
    //             ),
    //             GoRoute(
    //               path: 'founded_products',
    //               name: Routes.foundedProducts.name,
    //               pageBuilder: (context, state) {
    //                 return _customPageBuilder(
    //                   state,
    //                   const FoundedProductsScreen(),
    //                 );
    //               },
    //             ),
    //             GoRoute(
    //               path: 'product_details',
    //               name: Routes.productDetailsPage.name,
    //               redirect: (context, state) {
    //                 final productId = state.uri.queryParameters['productId'];
    //                 return productId != null ? '/catalog/product_details?productId=$productId' : '/catalog';
    //               },
    //               pageBuilder: (context, state) {
    //                 final productId = state.uri.queryParameters['productId']!;
    //                 return _customPageBuilder(
    //                   state,
    //                   ProductDetailsScreen(productId: productId),
    //                 );
    //               },
    //             ),
    //             GoRoute(
    //               path: 'manufacturer_products',
    //               name: Routes.manufacturerProductsPage.name,
    //               pageBuilder: (context, state) {
    //                 final manufacturerId = state.uri.queryParameters['manufacturerId']!;
    //                 final manufacturerName = state.uri.queryParameters['manufacturerName']!;
    //                 return _customPageBuilder(
    //                   state,
    //                   ManufacturerProductsScreen(
    //                     manufacturerId: manufacturerId,
    //                     manufacturerName: manufacturerName,
    //                   ),
    //                 );
    //               },
    //             ),
    //             GoRoute(
    //               path: 'sub_categories',
    //               name: Routes.subCategoriesPage.name,
    //               pageBuilder: (context, state) {
    //                 final categoryId = state.uri.queryParameters['categoryId']!;
    //                 return _customPageBuilder(
    //                   state,
    //                   SubCategoriesScreen(categoryId: categoryId),
    //                 );
    //               },
    //             ),
    //             GoRoute(
    //               path: 'category_products',
    //               name: Routes.categoryProductsPage.name,
    //               pageBuilder: (context, state) {
    //                 final categoryId = state.uri.queryParameters['categoryId']!;
    //                 final categoryImage = state.uri.queryParameters['categoryImage']!;
    //                 final categoryName = state.uri.queryParameters['categoryName']!;
    //                 return _customPageBuilder(
    //                   state,
    //                   CategoryProductsScreen(
    //                     categoryId: categoryId,
    //                     categoryImage: categoryImage,
    //                     categoryName: categoryName,
    //                   ),
    //                 );
    //               },
    //             ),
    //             GoRoute(
    //               path: 'tag_products',
    //               name: Routes.tagProductsPage.name,
    //               pageBuilder: (context, state) {
    //                 final tagId = state.uri.queryParameters['tagId']!;
    //                 final tagName = state.uri.queryParameters['tagName']!;
    //                 return _customPageBuilder(
    //                   state,
    //                   TagProductsScreen(tagName: tagName, tagId: tagId),
    //                 );
    //               },
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: '/cart',
    //           name: Routes.cartPage.name,
    //           builder: (context, state) => const CartScreen(),
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       routes: _authorizedRote,
    //     ),
    //   ],
    // ),
  ],
);


CustomTransitionPage<dynamic> _customPageBuilder(
  GoRouterState state,
  Widget child,
) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}
