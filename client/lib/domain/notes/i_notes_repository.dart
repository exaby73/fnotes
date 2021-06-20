import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/core/failures.dart';
import 'package:fnotes/domain/notes/models.dart';

abstract class INotesRepository {
  Future<Either<DataFailure, List<Note>>> all({required String token});

  Future<Either<DataFailure, Unit>> add({
    required String token,
    required Note note,
  });

  Future<Either<DataFailure, Unit>> delete({
    required String token,
    required Note note,
  });

  Future<Either<DataFailure, Unit>> update({
    required String token,
    required Note newNote,
  });
}
