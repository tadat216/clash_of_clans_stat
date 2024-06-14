import 'dart:convert';
import 'package:clash_of_clans_static/envi.dart';
import 'package:http/http.dart' as http;
import 'package:network_info_plus/network_info_plus.dart';

import '../models/player.dart';

class ApiService {
  static final String apiUrl = enviConfig.apiUrl;
  static final String devUrl = enviConfig.devUrl;
  static final String playerUrl = apiUrl+'v1/players/%23';
  static final email = enviConfig.email;
  static final password = enviConfig.password;
  static String? ip = 'NoIP';
  String? apiToken;
  Future <void> login() async{
    final response = await http.post(
      Uri.parse('${devUrl}api/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      apiToken = data['temporaryAPIToken'];
      print('Login success!');
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<Player> getPlayerData(String tag) async {
    final headers = {
      'authorization': 'Bearer ${apiToken}',
    };
    var url = Uri.parse('$playerUrl$tag');
    final response = await http.get(
      url,
      headers: headers,
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Player.fromJson(data);
    } else {
      throw Exception('Failed to fetch player data ${response.statusCode} \n ${url} \n ${response.headers} ${ip}');
    }
  }
}