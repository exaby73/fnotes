import 'package:dartz/dartz.dart';
import 'package:fnotes/domain/core/failures.dart';
import 'package:fnotes/domain/notes/i_notes_repository.dart';
import 'package:fnotes/domain/notes/models.dart';
import 'package:fnotes/injection.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class NotesEntity {
  final INotesRepository _notesRepository;

  NotesEntity() : _notesRepository = getIt();

  Future<Either<DataFailure, List<Note>>> all({required String token}) async =>
      _notesRepository.all(token: token);
}
