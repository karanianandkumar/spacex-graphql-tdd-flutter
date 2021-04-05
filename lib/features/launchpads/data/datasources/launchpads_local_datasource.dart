import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../models/launchpad_model.dart';

const String CACHED_CHARACTERS = 'CACHED_LAUNCHPADS';

abstract class ILaunchPadsLocalDataSource {
  List<LaunchPadModel> getLastCharacters(int page);

  Future<void> cacheLaunchPads(List<LaunchPadModel> models, int page);
}

@LazySingleton(as: ILaunchPadsLocalDataSource)
class LaunchPadsLocalDataSource implements ILaunchPadsLocalDataSource {
  LaunchPadsLocalDataSource(this._box);

  final Box _box;

  @override
  Future<void> cacheLaunchPads(List<LaunchPadModel> models, int page) {
    return _isFirstPage(page)
        ? _box.put(
            CACHED_CHARACTERS,
            json.encode(models.map((e) => e.toJson()).toList()),
          )
        : Future.value();
  }

  @override
  List<LaunchPadModel> getLastCharacters(int page) {
    final modelsString = _box.get(CACHED_CHARACTERS);
    if (modelsString == null) {
      throw CacheException();
    }
    return _isFirstPage(page)
        ? json
            .decode(modelsString)
            .map<LaunchPadModel>((e) => LaunchPadModel.fromJson(e))
            .toList()
        : [];
  }

  bool _isFirstPage(int page) => page == 1;
}
