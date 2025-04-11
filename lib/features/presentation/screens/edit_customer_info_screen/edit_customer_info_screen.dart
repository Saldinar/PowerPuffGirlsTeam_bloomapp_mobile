import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/presentation/bloc/customer/update_customer_info/update_customer_bloc.dart';
import 'package:amamini_client/features/presentation/screens/edit_customer_info_screen/edit_customer_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditCustomerInfoScreen extends StatefulWidget {
  final CustomerInfoEntity customerInfoEntity;

  const EditCustomerInfoScreen({required this.customerInfoEntity, super.key});

  @override
  State<EditCustomerInfoScreen> createState() => _EditCustomerInfoScreenState();
}

class _EditCustomerInfoScreenState extends State<EditCustomerInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateCustomerBloc(inject()),
      child: EditCustomerInfoView(
        customerInfoEntity: widget.customerInfoEntity,
      ),
    );
  }
}
