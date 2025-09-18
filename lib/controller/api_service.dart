import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class ApiService {
 static Future<Map<String, dynamic>?> verifyUser(String phoneNumber) async {
  log(phoneNumber);
  try {
    final url = Uri.parse("https://skilltestflutter.zybotechlab.com/api/verify/");

    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode({"phone_number": phoneNumber.trim()}),
    );

    log(response.statusCode.toString());

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      log("Response: $data");

      // Extract values safely
      final otp = data["otp"];
      final token = data["token"]?["access"];
      final userExists = data["user"] ?? false;

      log("📩 OTP: $otp");
      log("🔑 Token: $token");
      log(userExists ? " User exists → Proceed to Login" : " New user → Ask name & Register");

      // Return useful data
      return {
        "otp": otp,
        "token": token,
        "userExists": userExists,
      };
    } else {
      log("Server error → ${response.statusCode}");
      return null;
    }
  } catch (e) {
    log("Exception: $e");
    return null;
  }
}


 static Future<void> loginorRegistration(String phoneNumber,String firstName) async {
    try {
      final url = Uri.parse(
        "https://skilltestflutter.zybotechlab.com/api/login-register/",
      );
      final response = await http.post(
        url,
        headers: {
          "Content-Type": "application/json",
          "Accept": "Application/json",
        },
        body: jsonEncode({
          "phone_number": phoneNumber.trim(),
          "first_name": firstName.trim(),
        }),
      );
          log("Status Code: ${response.statusCode}");
    log("Response Body: ${response.body}");

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (data["success"] == true) {
        log("Login/Register successful ✅");
        log("Token: ${data["token"]}");
        return data['message'];
      } else {
        log("Login/Register failed ❌: ${data["message"]}");
      }
    } else {
      log("Error: ${response.statusCode} → ${response.body}");
    }
  } catch (e) {
    log("Exception: $e");
  }
    } 
  
}
