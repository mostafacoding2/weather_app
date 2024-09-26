import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';
void main() {runApp(const WeatherApp());}
class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetWeatherCubit(),

        child: Builder(
          builder: (context)
          =>
              BlocBuilder<GetWeatherCubit,WeatherState>(
                builder: (context,state)=>
                    MaterialApp(
    theme:ThemeData(

      primarySwatch:
      getThemeColor(
             BlocProvider.of<GetWeatherCubit>(context).weatherModel?.Condition


            ,),),
    debugShowCheckedModeBanner: false,
    home: HomeView(),
    ),)));}}
MaterialColor getThemeColor(String  ? condition) {
  if (condition==null){return Colors.blue;}
  switch (condition.toLowerCase()) {
    case 'sunny':
      return Colors.orange;
    case 'clear':
      return Colors.yellow;
    case 'partly cloudy':
      return Colors.blueGrey;
    case 'cloudy':
      return Colors.grey;
    case 'overcast':
      return Colors.blueGrey;
    case 'mist':
      return Colors.grey;
    case 'patchy rain possible':
      return Colors.lightBlue;
    case 'patchy snow possible':
      return Colors.lightBlue;
    case 'patchy sleet possible':
      return Colors.lightBlue;
    case 'patchy freezing drizzle possible':
      return Colors.lightBlue;
    case 'thundery outbreaks possible':
      return Colors.deepPurple;
    case 'blowing snow':
      return Colors.cyan;
    case 'blizzard':
      return Colors.cyan;
    case 'fog':
      return Colors.grey;
    case 'freezing fog':
      return Colors.grey;
    case 'patchy light drizzle':
      return Colors.lightBlue;
    case 'light drizzle':
      return Colors.lightBlue;
    case 'freezing drizzle':
      return Colors.lightBlue;
    case 'heavy freezing drizzle':
      return Colors.lightBlue;
    case 'patchy light rain':
      return Colors.lightBlue;
    case 'light rain':
      return Colors.lightBlue;
    case 'moderate rain at times':
      return Colors.lightBlue;
    case 'moderate rain':
      return Colors.lightBlue;
    case 'heavy rain at times':
      return Colors.lightBlue;
    case 'heavy rain':
      return Colors.lightBlue;
    case 'light freezing rain':
      return Colors.lightBlue;
    case 'moderate or heavy freezing rain':
      return Colors.lightBlue;
    case 'light sleet':
      return Colors.lightBlue;
    case 'moderate or heavy sleet':
      return Colors.lightBlue;
    case 'patchy light snow':
      return Colors.lightBlue;
    case 'light snow':
      return Colors.lightBlue;
    case 'patchy moderate snow':
      return Colors.lightBlue;
    case 'moderate snow':
      return Colors.lightBlue;
    case 'patchy heavy snow':
      return Colors.lightBlue;
    case 'heavy snow':
      return Colors.lightBlue;
    case 'ice pellets':
      return Colors.lightBlue;
    case 'light rain shower':
      return Colors.lightBlue;
    case 'moderate or heavy rain shower':
      return Colors.lightBlue;
    case 'torrential rain shower':
      return Colors.lightBlue;
    case 'light sleet showers':
      return Colors.lightBlue;
    case 'moderate or heavy sleet showers':
      return Colors.lightBlue;
    case 'light snow showers':
      return Colors.lightBlue;
    case 'moderate or heavy snow showers':
      return Colors.lightBlue;
    case 'light showers of ice pellets':
      return Colors.lightBlue;
    case 'moderate or heavy showers of ice pellets':
      return Colors.lightBlue;
    case 'patchy light rain with thunder':
      return Colors.deepPurple;
    case 'moderate or heavy rain with thunder':
      return Colors.deepPurple;
    case 'patchy light snow with thunder':
      return Colors.deepPurple;
    case 'moderate or heavy snow with thunder':
      return Colors.deepPurple;
    default:
      return Colors.blue;
  }
}
