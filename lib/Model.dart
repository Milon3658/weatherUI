class Weather {
  final double temperature;
  final int humidity;
  final double rainPossibility;
  final String description;
  final String main;

  Weather({
    required this.temperature,
    required this.humidity,
    required this.rainPossibility,
    required this.description,
    required this.main,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperature: json['main']['temp'].toDouble(),
      humidity: json['main']['humidity'],
      rainPossibility: json['clouds']['all'].toDouble(),
      description: json['weather'][0]['description'],
      main: json['weather'][0]['main'],
    );
  }
}
