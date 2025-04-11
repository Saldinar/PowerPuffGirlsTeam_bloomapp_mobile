import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/manufacturer_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class ManufacturerRepository {
  Future<Either<Failure, List<ManufacturerEntity>>> getAllManufacturers();
}
