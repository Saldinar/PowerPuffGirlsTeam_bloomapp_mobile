import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/reward_points/all_reward_points/all_reward_points_bloc.dart';
import 'package:amamini_client/features/presentation/screens/reward_points/view_model/reward_points_view_model.dart';
import 'package:amamini_client/features/presentation/screens/reward_points/widgets/reaward_points_info_widget.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RewardPointsScreen extends StatelessWidget {
  const RewardPointsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllRewardPointsBloc(inject()),
      child: const RewardPointsView(),
    );
  }
}

class RewardPointsView extends StatefulWidget {
  const RewardPointsView({super.key});

  @override
  State<RewardPointsView> createState() => _RewardPointsViewState();
}

class _RewardPointsViewState extends State<RewardPointsView> {
  final _viewModel = RewardPointsViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.getRewardPoints(context);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).myRewardPoints),
      body: BlocBuilder<AllRewardPointsBloc, AllRewardPointsState>(
        builder: (context, state) {
          if (state is AllRewardPointsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is AllRewardPointsLoaded) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.unit),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RewardPointsInfoWidget(),
                    const SizedBox(height: Dimensions.unit3),
                    Text(
                      S.of(context).rewardPointsHistory,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: screenHeight * .25),
                    Center(
                      child: Text(
                        S.of(context).noBalanceTitle,
                        style: theme.textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (state is AllRewardPointsError) {
            return AppErrorWidget(
              message: state.message,
              onPressed: () => _viewModel.getRewardPoints(context),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
