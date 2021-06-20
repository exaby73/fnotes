import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

part 'models.g.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required int id,
    required String title,
    required String body,
    required DateTime createdOn,
    required DateTime updatedOn,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
