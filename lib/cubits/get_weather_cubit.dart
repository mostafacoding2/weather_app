import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/Services/weather_services.dart';
import 'package:weather_app/cubits/get_weather_states.dart';
class GetWeatherCubit extends Cubit<WeatherState>
{
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
getWeather({required String cityName})
async{try{
    weatherModel= await WeatherServices(Dio()).GetCurrentWeather(CityName: cityName);
   emit(WeatherLoadedState(weatherModel!));
}
catch(e)
{
  emit(WeatherFailureState(e.toString()));
}


}}