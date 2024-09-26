import'package:flutter/material.dart';
class WeatherModel {
  WeatherModel({
    required this.CityName,
    required this.TimeUpdate,
    required this.Country,
    required this.Condition,
    required this.Temp,
    required this.MaxTemp,
    required this.MinTemp,
   required this.Image,
    required this.date,
  });
  final String CityName;
  final DateTime TimeUpdate;
  final String Country;
  final String Condition;
  final double Temp;
  final double MaxTemp;
  final double MinTemp;
  final String Image;
  final String date;

  factory WeatherModel.fromJson(json){
    var LocationData = json ['location'];
    var Current = json['current']['condition'];
    var Forecast = json['forecast']['forecastday'][0]['day'];
    return WeatherModel(
      CityName: LocationData['name'],
      TimeUpdate:DateTime.parse(json['location']['localtime']),
      Country: LocationData['country'],
      Condition: Current['text'],
      Image: Current['icon'],
      Temp: Forecast['avgtemp_c'],
      MaxTemp: Forecast['maxtemp_c'],
      MinTemp: Forecast['mintemp_c'],
      date: json['forecast']['forecastday'][0]['date'],
    );

  }
    String getImage(){
    if (Condition == 'Clear')                   {   return 'assets/images/clear.jpeg';}

    else if (Condition == 'Light Cloud')          {return 'assets/images/light_cloud.png';}
    else if (Condition == 'Sleet')                 {return 'assets/images/sleet-.png';}
    else if (Condition == 'Snow') {
      return 'assets/images/snow.jpeg';
    }
    else if (Condition == 'Hail') {
      return 'assets/images/hail.jpeg';
    }
    else if (Condition == 'Heavy Cloud'|| Condition=='Overcast') {
      return 'assets/images/heavy_Cloudy.jpeg';
    }
    else if (Condition == 'Partly cloudy'|| Condition=='Mist') {
      return 'assets/images/Partly cloudy.png';
    }
    else if (Condition == 'Light Rain') {
      return 'assets/images/light rain.png';
    }
    else if (Condition == 'Heavy Rain') {
      return 'assets/images/heavy rain.png';
    }
    else if (Condition == 'Showers') {
      return 'assets/images/showers.jpeg';
    }
    else if (Condition == 'Patchy rain possible') {
      return 'assets/images/Patchy rain possible.jpeg';
    }
    else if (Condition == 'Thunderstorm') {
      return 'assets/images/Thunderstorm.jpeg';
    }
    else if (Condition == 'Thunder') {
      return 'assets/images/Thunder.jpg';
    }
    else {return
       'assets/images/sunny.png';
    }
  }






    //
    // else if (WeatherCondition == 'Light Cloud')
    // {return  Colors.blue;}
    //
    // else if (WeatherCondition == 'Sleet')
    //
    // {return }
    //
    // else if (WeatherCondition == 'Snow')
    // {
    //   return
    // }
    // else if (WeatherCondition == 'Hail') {
    //   return
    // }
    // else if (WeatherCondition == 'Heavy Cloud'|| WeatherCondition=='Overcast') {
    //   return
    // }
    // else if (WeatherCondition == 'Partly cloudy'|| WeatherCondition=='Mist') {
    //   return
    // }
    // else if (WeatherCondition == 'Light Rain') {
    //   return
    // }
    // else if (WeatherCondition == 'Heavy Rain') {
    //   return
    // }
    // else if (WeatherCondition == 'Showers') {
    //   return
    // }
    // else if (WeatherCondition == 'Patchy rain possible')
    // {
    //   return
    // }
    // else if (WeatherCondition == 'Thunderstorm')
    // {
    //   return
    // }
    // else if (WeatherCondition == 'Thunder') {
    //
    // }

    }

