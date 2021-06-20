import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/core/failures.dart';
import 'package:fnotes/domain/notes/i_notes_repository.dart';
import 'package:fnotes/domain/notes/models.dart';
import 'package:fnotes/injection.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@Environment(Environment.test)
@LazySingleton(as: INotesRepository)
class InMemoryNotesRepository implements INotesRepository {
  final List<Note> _notes = [];

  InMemoryNotesRepository();

  @override
  Future<Either<DataFailure, List<Note>>> all({required String token}) async {
    if (showErrors) return _simulatedError();

    return Right(_notes);
  }

  @override
  Future<Either<DataFailure, Unit>> add({
    required String token,
    required Note note,
  }) async {
    if (showErrors) return _simulatedError();

    _notes.add(note);
    return const Right(unit);
  }

  @override
  Future<Either<DataFailure, Unit>> delete({
    required String token,
    required Note note,
  }) async {
    if (showErrors) return _simulatedError();

    final previousLength = _notes.length;
    _notes.remove(note);
    if (_notes.length == previousLength) {
      return const Left(DataFailure.notFound());
    }

    return const Right(unit);
  }

  @override
  Future<Either<DataFailure, Unit>> update({
    required String token,
    required Note newNote,
  }) async {
    if (showErrors) return _simulatedError();

    final noteToUpdate = _notes.firstWhereOrNull(
      (note) => note.id == newNote.id,
    );
    if (noteToUpdate == null) {
      return const Left(DataFailure.notFound());
    }

    final index = _notes.indexOf(noteToUpdate);
    _notes[index] = newNote.copyWith(
      updatedOn: DateTime.now(),
    );

    return const Right(unit);
  }

  Left<DataFailure, T> _simulatedError<T>() =>
      const Left(DataFailure.serverError('Simulated error'));
}
