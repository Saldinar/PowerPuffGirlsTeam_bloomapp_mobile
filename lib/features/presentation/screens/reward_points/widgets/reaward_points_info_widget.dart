import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class RewardPointsInfoWidget extends StatelessWidget {
  const RewardPointsInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _PointsInfoWidget(
          icon: Icons.savings,
          title: S.of(context).points,
          value: '0',
          color: Colors.orangeAccent,
        ),
        Text('=', style: theme.textTheme.titleLarge),
        _PointsInfoWidget(
          icon: Icons.money,
          title: S.of(context).money,
          value: '\$0.00',
          color: Colors.green,
        ),
      ],
    );
  }
}

class _PointsInfoWidget extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final IconData icon;
  const _PointsInfoWidget({
    required this.title,
    required this.value,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Icon(icon, color: color, size: Dimensions.unit4),
            const SizedBox(width: Dimensions.unit),
            Text(
              title,
              style: theme.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Text(
          value,
          style: theme.textTheme.titleLarge?.copyWith(color: color),
        ),
      ],
    );
  }
}
