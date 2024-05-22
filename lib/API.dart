import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  static const String apiKey = 'YOUR_API_KEY';
  static const String apiUrl = 'http://api.openweathermap.org/data/2.5/weather';

  Future<Map<String, dynamic>> fetchWeather(String city) async {
    final response = await http.get(
      Uri.parse('$apiUrl?q=$city&appid=$apiKey&units=metric'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}