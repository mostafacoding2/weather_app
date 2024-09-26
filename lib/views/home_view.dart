import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (BuildContext context){return SearchView();}));},
              icon: Icon(Icons.search,size:29))
        ],
      ),
      body:
      BlocBuilder<GetWeatherCubit,WeatherState>
        (builder: (context,state) {
        if (state is WeatherInitialState) {
          return NoWeatherBody();
        }
        else if (state is WeatherLoadedState) {
          return WeatherInfoBody(
          //  weather: state.weatherModel,
          );
        }
        else {
          return  Text('opps there was an error', style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold));
        }
      }

        )
    );
  }}
// bloc:
//1. create states
//2. create cubit
// 3. create function
// 4. provide cubit
// 5. integrate cubit
// 6. trigger cubit