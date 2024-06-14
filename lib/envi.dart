import 'package:flutter_dotenv/flutter_dotenv.dart';

class enviConfig{
  static final String apiUrl = dotenv.env['API_URL'] ?? 'https://api.clashofclans.com/api/';
  static final String devUrl = dotenv.env['DEV_URL'] ?? 'https://developer.clashofclans.com/api/';
  static final String email = dotenv.env['EMAIL'] ?? '';
  static final String password = dotenv.env['PASSWORD'] ?? '';
}