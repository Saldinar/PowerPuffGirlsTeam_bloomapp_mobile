import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/registration_model/registration_model_entity.dart';
import 'package:amamini_client/features/presentation/bloc/registration/registration_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountViewModel {
  void createAccount(
    BuildContext context,
    CustomerInfoEntity infoEntity,
  ) {
    final form = CustomPropertiesEntity(
      additionalProp1: '',
      additionalProp2: '',
      additionalProp3: '',
    );
    final registrationEntity =
        RegistrationModelEntity(model: infoEntity, form: form);
    context.read<RegistrationBloc>().add(
          RegisterCustomerEvent(request: registrationEntity),
        );
  }
}
