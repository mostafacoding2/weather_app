import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Models/weather_model.dart';
class WeatherServices {
 final Dio dio;
 WeatherServices(this.dio);
 final String Baseurl = 'https://api.weatherapi.com/v1';
 final String ApiKey = 'c2ecb6082a7f472d979173605232310';
 Future <WeatherModel> GetCurrentWeather({required String CityName}) async {
  try {
   Response response = await dio.get(
       '$Baseurl/forecast.json?key=$ApiKey&q=$CityName&days=1');
   WeatherModel weartherModel = WeatherModel.fromJson(response.data);
   return weartherModel;
  }
  on DioException catch(e){
   final String errorMassage=e.response?.data['error']['message'] ?? 'oops there was an error try later';

   throw Exception(errorMassage) ;
  }
  catch (e){
   log(e.toString() );
   throw Exception('oops there was an error try later');}
 }}