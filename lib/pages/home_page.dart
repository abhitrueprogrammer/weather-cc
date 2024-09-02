import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weathercc/const.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  final WeatherFactory _wf = WeatherFactory(OPEN_WEATHER_API_KEY);
  Weather? _weather;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _wf.currentWeatherByCityName("Mumbai").then((w)=>{
      setState(() {
        _weather = w;
      })
      //COMMA
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: _bodyUI(),)
      );
  }
  Widget _bodyUI(){
    if(_weather == null) {
      return const Center(child: CircularProgressIndicator(),);
    }
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _locationHeader(),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.08,
        
        ),
        _currentTempMin(),
        _currentTempMax(),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.08,
        
        ),
        _currentHumidity(),
      ],),
    );
  }

  Widget _locationHeader()
  {
    return Text(_weather?.areaName ?? "",
    style: const TextStyle(
      fontSize: 18,
      fontWeight:  FontWeight.bold    
    ),);

  }
  Widget _currentTempMin()
  {
    return Text("MinTemp: ${_weather?.tempMin}");
  }
  Widget _currentTempMax()
  {
    return Text("MaxTemp: ${_weather?.tempMax}");
  }
  Widget _currentHumidity()
  {
    return Text("Humidity: ${_weather?.humidity}%");
  }
}