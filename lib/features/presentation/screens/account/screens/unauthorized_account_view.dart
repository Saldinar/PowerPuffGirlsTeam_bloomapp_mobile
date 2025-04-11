import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/domain/entity/auth/auth_request_entity.dart';
import 'package:amamini_client/features/presentation/bloc/auth/auth_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/theme_cubit/theme_cubit.dart';
import 'package:amamini_client/features/presentation/screens/account/widgets/customer_details_card.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class UnauthorizedAccountView extends StatefulWidget {
  const UnauthorizedAccountView({
    super.key,
  });

  @override
  State<UnauthorizedAccountView> createState() =>
      _UnauthorizedAccountViewState();
}

class _UnauthorizedAccountViewState extends State<UnauthorizedAccountView> {
  final _authEntity = AuthRequestEntity(isGuest: true);
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>()
      ..add(CheckCustomerAuthEvent(request: _authEntity))
      ..add(CheckUserStatusEvent());
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state.isDark;
    return Scaffold(
      drawer: const Drawer(),
      appBar: MainAppBar(title: S.of(context).myAccount),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.unit),
          child: Column(
            children: [
              const SizedBox(height: Dimensions.unit),
              CustomerDetailsCard(
                icon: Icons.favorite,
                onTap: (context) {
                  context.pushNamed(Routes.wishlistPage.name);
                },
                titleBuilder: (context) => S.of(context).wishlist,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainElevatedButton(
                    title: S.of(context).register,
                    onPressed: () {
                      context.pushNamed(Routes.createAccountPage.name);
                    },
                  ),
                  const SizedBox(width: Dimensions.unit),
                  MainElevatedButton(
                    title: S.of(context).logIn,
                    onPressed: () {
                      context.pushNamed(Routes.logInPage.name);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Change theme'),
                  Switch.adaptive(
                    value: isDark,
                    onChanged: (value) => _onThemeChanged(context, value),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onThemeChanged(BuildContext context, bool isDark) {
    context.read<ThemeCubit>().setTheme(isDark);
  }
}
