import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/main.dart';
class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({Key? key  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
 var weatherModel=   BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,

            colors: [              getThemeColor(weatherModel.Condition),
              getThemeColor(weatherModel.Condition)[100]!,
              getThemeColor(weatherModel.Condition)[200]!,
              getThemeColor(weatherModel.Condition)[300]!,
              getThemeColor(weatherModel.Condition)[400]!,
              getThemeColor(weatherModel.Condition)[500]!,
              getThemeColor(weatherModel.Condition)[600]!,
              getThemeColor(weatherModel.Condition)[700]!



              ])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.CityName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,),),
             Column(
               children: [Text(

               weatherModel.date

               ,               style: TextStyle(
                   fontSize: 24,
                 ),
               ),
                 Text(
                  "updated : ${(weatherModel.TimeUpdate).hour}: ${(weatherModel.TimeUpdate).minute}",
                  style: TextStyle(
                    fontSize: 24,
                  ),
            ),
               ],
             ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(height:100, width:100,color: Colors.white,
                    child: Image.asset('${weatherModel.getImage()}')),

                 Text(
                  weatherModel.Temp.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                 Column(
                  children: [
                    Text(
                     ' MaxTemp: ${weatherModel.MaxTemp}'.toString(),
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Mintemp: ${weatherModel.MinTemp}'.toString(),
                      style: TextStyle(
                        fontSize: 16,),),],),],),
            const SizedBox(
              height: 32,
            ),
             Text(
             weatherModel.Condition ,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,),),],),),
    );}}
DateTime dateTime(String value){
  return DateTime.parse(value);



}

