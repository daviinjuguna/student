import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/features/domain/entities/course.dart';
import 'package:student/features/domain/repository/eshule_repository.dart';

@lazySingleton
class GetCourse extends UseCase<KtList<Course>, NoParams> {
  GetCourse(this._repository);

  @override
  Future<Either<String, KtList<Course>>> call(NoParams params) {
    return _repository.getCourses();
  }

  final Repository _repository;
}
