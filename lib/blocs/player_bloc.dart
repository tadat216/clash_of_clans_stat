
import 'dart:async';
import '../models/player.dart';
import '../services/api_service.dart';

class PlayerBloc {
  final ApiService apiService;
  final StreamController<Player> _playerController = StreamController<Player>.broadcast();
  Stream<Player> get playerStream => _playerController.stream;

  PlayerBloc({required this.apiService});

  Future<void> init() async {
    //apiService.login();
    return;
  }

  void getPlayerData(String tag) async {
    try {
      final player = await apiService.getPlayerData(tag);
      _playerController.add(player);
    } catch (e) {
      _playerController.addError(e);
    }
  }

  void dispose() {
    _playerController.close();
  }
}