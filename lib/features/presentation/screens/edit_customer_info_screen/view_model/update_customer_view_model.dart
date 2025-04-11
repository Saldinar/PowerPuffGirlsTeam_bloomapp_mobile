import 'package:amamini_client/features/domain/entity/registration_model/registration_model_entity.dart';
import 'package:amamini_client/features/presentation/bloc/customer/update_customer_info/update_customer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateCustomerViewModel {
  void updateCustomer(BuildContext context, RegistrationModelEntity request) {
    context.read<UpdateCustomerBloc>().add(UpdateCustomerInfoEvent(request));
  }
}
