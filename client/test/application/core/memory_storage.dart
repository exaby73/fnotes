import 'package:hydrated_bloc/hydrated_bloc.dart';

class MemoryStorage implements Storage {
  Map<String, dynamic> _data = {};

  @override
  Future<void> clear() async {
    _data = {};
  }

  @override
  Future<void> delete(String key) async {
    _data.remove(key);
  }

  @override
  Map<String, dynamic>? read(String key) {
    return _data[key] as Map<String, dynamic>?;
  }

  @override
  Future<void> write(String key, dynamic value) async {
    _data[key] = value;
  }
}