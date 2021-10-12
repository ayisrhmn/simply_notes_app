import 'package:flutter/cupertino.dart';
import 'package:simply_notes_app/models/note.dart';

class NotesOperation with ChangeNotifier {
  // List of note
  final List<Note> _notes = [];

  List<Note> get getNotes {
    return _notes;
  }

  NotesOperation() {
    addNewNote('My First Note', 'Example Note Description');
  }

  void addNewNote(String title, String description) {
    // Note object
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }
}
