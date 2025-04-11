import 'package:amamini_client/features/domain/entity/search_products_entity/command.dart';
import 'package:amamini_client/features/domain/entity/search_products_entity/model.dart';
import 'package:equatable/equatable.dart';

class SearchProductsEntity extends Equatable {
  final ModelEntity? model;
  final CommandEntity? command;

  const SearchProductsEntity({this.model, this.command});

  SearchProductsEntity copyWith({
    ModelEntity? model,
    CommandEntity? command,
  }) {
    return SearchProductsEntity(
      model: model ?? this.model,
      command: command ?? this.command,
    );
  }

  @override
  List<Object?> get props => [model, command];
}
