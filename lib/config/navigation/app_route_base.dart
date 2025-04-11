import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/presentation/screens/account/screens/account_screen.dart';
import 'package:amamini_client/features/presentation/screens/add_customer_address/add_customer_address_screen.dart';
import 'package:amamini_client/features/presentation/screens/cart/cart_screen.dart';
import 'package:amamini_client/features/presentation/screens/catalog/screens/catalog_screen.dart';
import 'package:amamini_client/features/presentation/screens/category_products/category_products_screen.dart';
import 'package:amamini_client/features/presentation/screens/change_password/change_password_screen.dart';
import 'package:amamini_client/features/presentation/screens/create_account/create_account_screen.dart';
import 'package:amamini_client/features/presentation/screens/customer_addresses/addresses_screen.dart';
import 'package:amamini_client/features/presentation/screens/edit_customer_info_screen/edit_customer_info_screen.dart';
import 'package:amamini_client/features/presentation/screens/home/home_page.dart';
import 'package:amamini_client/features/presentation/screens/log_in/log_in_screen.dart';
import 'package:amamini_client/features/presentation/screens/log_in/password_recovery_screen.dart';
import 'package:amamini_client/features/presentation/screens/main/main_screen.dart';
import 'package:amamini_client/features/presentation/screens/manufacturer_products/screens/manufacturer_products_screen.dart';
import 'package:amamini_client/features/presentation/screens/my_orders/my_orders_screen.dart';
import 'package:amamini_client/features/presentation/screens/product_details/product_details_screen.dart';
import 'package:amamini_client/features/presentation/screens/product_reviews/product_reviews_screen.dart';
import 'package:amamini_client/features/presentation/screens/return_requests/return_requests_screen.dart';
import 'package:amamini_client/features/presentation/screens/reward_points/reward_points_screen.dart';
import 'package:amamini_client/features/presentation/screens/search_products/founded_products_screen.dart';
import 'package:amamini_client/features/presentation/screens/search_products/search_catalog_screen.dart';
import 'package:amamini_client/features/presentation/screens/sub_categories_screen/sub_categories_screen.dart';
import 'package:amamini_client/features/presentation/screens/tag_products/tag_products_screen.dart';
import 'package:amamini_client/features/presentation/screens/update_address/update_address_screen.dart';
import 'package:amamini_client/features/presentation/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (
        context,
        state,
        navigationShell,
      ) {
        return MainScreen(navigationShell: navigationShell);
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              name: Routes.homePage.name,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/catalog',
              name: Routes.catalogPage.name,
              builder: (context, state) => const CatalogScreen(),
              routes: [
                GoRoute(
                  path: 'search_in_catalog',
                  name: Routes.searchCatalogPage.name,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      key: state.pageKey,
                      child: const SearchCatalogScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    );
                  },
                ),
                GoRoute(
                  path: 'founded_products',
                  name: Routes.foundedProducts.name,
                  pageBuilder: (context, state) {
                    return _customPageBuilder(
                      state,
                      const FoundedProductsScreen(),
                    );
                  },
                ),
                GoRoute(
                  path: 'product_details',
                  name: Routes.productDetailsPage.name,
                  redirect: (context, state) {
                    final productId = state.uri.queryParameters['productId'];
                    return productId != null
                        ? '/catalog/product_details?productId=$productId'
                        : '/catalog';
                  },
                  pageBuilder: (context, state) {
                    final productId = state.uri.queryParameters['productId']!;
                    return _customPageBuilder(
                      state,
                      ProductDetailsScreen(productId: productId),
                    );
                  },
                ),
                GoRoute(
                  path: 'manufacturer_products',
                  name: Routes.manufacturerProductsPage.name,
                  pageBuilder: (context, state) {
                    final manufacturerId =
                        state.uri.queryParameters['manufacturerId']!;
                    final manufacturerName =
                        state.uri.queryParameters['manufacturerName']!;
                    return _customPageBuilder(
                      state,
                      ManufacturerProductsScreen(
                        manufacturerId: manufacturerId,
                        manufacturerName: manufacturerName,
                      ),
                    );
                  },
                ),
                GoRoute(
                  path: 'sub_categories',
                  name: Routes.subCategoriesPage.name,
                  pageBuilder: (context, state) {
                    final categoryId = state.uri.queryParameters['categoryId']!;
                    return _customPageBuilder(
                      state,
                      SubCategoriesScreen(categoryId: categoryId),
                    );
                  },
                ),
                GoRoute(
                  path: 'category_products',
                  name: Routes.categoryProductsPage.name,
                  pageBuilder: (context, state) {
                    final categoryId = state.uri.queryParameters['categoryId']!;
                    final categoryImage =
                        state.uri.queryParameters['categoryImage']!;
                    final categoryName =
                        state.uri.queryParameters['categoryName']!;
                    return _customPageBuilder(
                      state,
                      CategoryProductsScreen(
                        categoryId: categoryId,
                        categoryImage: categoryImage,
                        categoryName: categoryName,
                      ),
                    );
                  },
                ),
                GoRoute(
                  path: 'tag_products',
                  name: Routes.tagProductsPage.name,
                  pageBuilder: (context, state) {
                    final tagId = state.uri.queryParameters['tagId']!;
                    final tagName = state.uri.queryParameters['tagName']!;
                    return _customPageBuilder(
                      state,
                      TagProductsScreen(tagName: tagName, tagId: tagId),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/cart',
              name: Routes.cartPage.name,
              builder: (context, state) => const CartScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: _authorizedRote,
        ),
      ],
    ),
  ],
);

final _authorizedRote = [
  GoRoute(
    path: '/account',
    name: Routes.accountDetailsPage.name,
    pageBuilder: (context, state) {
      return _customPageBuilder(
        state,
        const AccountScreen(),
      );
    },
    routes: [
      GoRoute(
        path: 'create_account',
        name: Routes.createAccountPage.name,
        pageBuilder: (context, state) {
          return _customPageBuilder(
            state,
            const CreateAccountScreen(),
          );
        },
      ),
      GoRoute(
        path: 'log_in',
        name: Routes.logInPage.name,
        pageBuilder: (context, state) {
          return _customPageBuilder(state, const LogInScreen());
        },
        routes: [
          GoRoute(
            path: 'password_recovery',
            name: Routes.passwordRecoveryPage.name,
            pageBuilder: (context, state) {
              return _customPageBuilder(state, const PasswordRecoveryScreen());
            },
          ),
        ],
      ),
      GoRoute(
        path: 'edit_customer_info',
        name: Routes.editCustomerInfoPage.name,
        pageBuilder: (context, state) {
          final customerInfo = state.extra as CustomerInfoEntity;
          return _customPageBuilder(
            state,
            EditCustomerInfoScreen(customerInfoEntity: customerInfo),
          );
        },
      ),
      GoRoute(
        path: 'addresses',
        name: Routes.addressesPage.name,
        pageBuilder: (context, state) {
          return _customPageBuilder(
            state,
            const AddressesScreen(),
          );
        },
        routes: [
          GoRoute(
            path: 'add_customer_address',
            name: Routes.addCustomerAddressPage.name,
            pageBuilder: (context, state) {
              return _customPageBuilder(
                state,
                const AddCustomerAddressScreen(),
              );
            },
          ),
          GoRoute(
            path: 'update_address',
            name: Routes.updateAddressPage.name,
            pageBuilder: (context, state) {
              final addressId = state.extra as int;
              return _customPageBuilder(
                state,
                UpdateAddressScreen(addressId: addressId),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: 'my_orders',
        name: Routes.myOrdersPage.name,
        pageBuilder: (context, state) {
          return _customPageBuilder(
            state,
            const MyOrdersScreen(),
          );
        },
      ),
      GoRoute(
        path: 'return_requests',
        name: Routes.returnRequestsPage.name,
        pageBuilder: (context, state) {
          return _customPageBuilder(
            state,
            const ReturnRequestsScreen(),
          );
        },
      ),
      GoRoute(
        path: 'reward_points',
        name: Routes.rewardPointsPage.name,
        pageBuilder: (context, state) {
          return _customPageBuilder(
            state,
            const RewardPointsScreen(),
          );
        },
      ),
      GoRoute(
        path: 'change_password',
        name: Routes.changePasswordPage.name,
        pageBuilder: (context, state) {
          return _customPageBuilder(
            state,
            const ChangePasswordScreen(),
          );
        },
      ),
      GoRoute(
        path: 'product_reviews',
        name: Routes.productReviewsPage.name,
        pageBuilder: (context, state) {
          return _customPageBuilder(
            state,
            const ProductReviewsScreen(),
          );
        },
      ),
      GoRoute(
        path: 'wishlist',
        name: Routes.wishlistPage.name,
        pageBuilder: (context, state) {
          return _customPageBuilder(
            state,
            const WishlistScreen(),
          );
        },
      ),
    ],
  ),
];

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
