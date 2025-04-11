// ignore_for_file: sort_constructors_first

import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/manufacturer_entity.dart';
import 'package:amamini_client/features/domain/repository/manufacturer_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
final class ManufacturerUseCase {
  final ManufacturerRepository _manufacturerRepository;
  ManufacturerUseCase({required ManufacturerRepository manufacturerRepository})
      : _manufacturerRepository = manufacturerRepository;

  Future<Either<Failure, List<ManufacturerEntity>>>
      getAllManufacturers() async {
    return await _manufacturerRepository.getAllManufacturers();
  }
}
