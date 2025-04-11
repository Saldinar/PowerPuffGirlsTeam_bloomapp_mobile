import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class DefaultAppBarLoadingPlaceholder extends StatelessWidget {
  const DefaultAppBarLoadingPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(title: ''),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
