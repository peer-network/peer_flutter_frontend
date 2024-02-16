// auth_service.dart

import 'package:peer_app/presentation/whitelabel/endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dio_client.dart';

class AuthService {
  final DioClient _dioClient = DioClient();

  Future<bool> loginWithCredentials(String email, String password) async {
    try {
      final response = await _dioClient.post(ApiEndpoints.login,
          data: {'email': email, 'password': password, 'device_name': "1"});

      print("data: ${response.data}");
      if (response.statusCode == 200) {
        // Assuming the token is returned in the response body for simplicity
        String token = response.data['token'];
        _setTokenHeader(token);
        await _saveToken(token);
        return true;
      }
      return response.data;
    } catch (e) {
      print(e.toString());
      // Handle exceptions or log error
      return false;
    }
  }

  Future<bool> loginWithToken() async {
    String? token = await _getToken();
    print("token: $token");
    if (token == null) {
      return false;
    }

    bool isValid = await validateToken();
    if (isValid) {
      _setTokenHeader(token);
      return true;
    } else {
      return false;
    }
  }

  Future<void> _saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);
  }

  void _setTokenHeader(String directToken) async {
    _dioClient.updateHeaders({'Authorization': 'Bearer $directToken'});
  }

  Future<bool> validateToken() async {
    // TODO check if token is valid
    return true;
  }

  Future<String?> _getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token');
  }
}
