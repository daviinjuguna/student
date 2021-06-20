import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:student/core/usecase/usecase.dart';
import 'package:student/features/domain/entities/pdf.dart';
import 'package:student/features/domain/repository/eshule_repository.dart';

@lazySingleton
class GetPdf extends UseCase<KtList<Pdf>, ParamsId> {
  GetPdf(this._repository);

  @override
  Future<Either<String, KtList<Pdf>>> call(ParamsId params) {
    return _repository.getPdf(courseId: params.id);
  }

  final Repository _repository;
}
