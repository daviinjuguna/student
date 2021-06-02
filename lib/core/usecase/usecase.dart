import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Params> {
  Future<Either<String, Type>> call(Params p);
}

abstract class StreamUseCase<Type, Params> {
  Stream<Either<String, Type>> call(Params p);
}

class NoParams {}

class ParamsId {
  final int id;

  ParamsId({required this.id});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParamsId && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'ParamsId(id: $id)';

  ParamsId copyWith({
    int? id,
  }) {
    return ParamsId(
      id: id ?? this.id,
    );
  }
}

class ParamsString {
  final String string;

  ParamsString({required this.string});

  @override
  String toString() => 'ParamsString(string: $string)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParamsString && other.string == string;
  }

  @override
  int get hashCode => string.hashCode;

  ParamsString copyWith({
    String? string,
  }) {
    return ParamsString(
      string: string ?? this.string,
    );
  }
}
