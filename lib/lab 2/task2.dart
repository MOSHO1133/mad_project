import 'dart:async';

Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 3));
  return "Wednesday, 25°C";
}

void main() async {
  print("Fetching weather...");

  try {
    String weather = await fetchWeatherData();
    print(weather);
  } catch (e) {
    print("Error: $e");
  }
}
