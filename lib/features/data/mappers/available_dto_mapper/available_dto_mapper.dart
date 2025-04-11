import 'package:amamini_client/features/data/mappers/group/group_mapper.dart';
import 'package:amamini_client/features/data/model/responses/available/available_response.dart';
import 'package:amamini_client/features/domain/entity/search_products_entity/available_entity.dart';

extension AvailableResponseMapper on AvailableResponse {
  AvailableEntity toEntity() {
    return AvailableEntity(
      disabled: disabled,
      group: group?.toEntity(),
      selected: selected,
      text: text,
      value: value,
    );
  }
}

extension AvailableToRequestMapper on AvailableEntity {
  AvailableResponse toRequest() {
    return AvailableResponse(
      disabled: disabled,
      group: group?.toRequest(),
      selected: selected,
      text: text,
      value: value,
    );
  }
}
