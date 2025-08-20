void main() {
  // Liste hat garantiert immer 3 Elemente
  List<Map<String, double?>> weatherData = [
    {'temp': 3.5, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  // Erstelle leere Liste für Temperaturen
  List<double?> rain = [];
  List<double?> wind = [];
  List<double?> temps = [];

  // Füge die Regenwerte der Wetterdaten in die Liste ein
  rain.add(weatherData[0]['rain']);
  rain.add(weatherData[1]['rain']);
  rain.add(weatherData[2]['rain']);

  // Füge die Windwerte der Wetterdaten in die Liste ein
  wind.add(weatherData[0]['wind']);
  wind.add(weatherData[1]['wind']);
  wind.add(weatherData[2]['wind']);

  // Füge die Temperaturen der Wetterdaten in die Liste ein
  temps.add(weatherData[0]['temp']);
  temps.add(weatherData[1]['temp']);
  temps.add(weatherData[2]['temp']);

  // Ich weise hier jedem Wert 0 zu, wenn er null, also nicht initialiert ist
  double? avgRain = ((rain[0]?? 0) + (rain[1]?? 0) + (rain[2]?? 0)) / 3;
  double? avgWind = ((wind[0]?? 0) + (wind[1]?? 0) + (wind[2]?? 0)) / 3;
  double? avgTemp = ((temps[0]?? 0) + (temps[1]?? 0) + (temps[2]?? 0)) / 3;

  print('Durchschnittsregen: $avgRain');
  print('Durchschnittswind: $avgWind');
  print('Durchschnittstemperatur: $avgTemp');
}
