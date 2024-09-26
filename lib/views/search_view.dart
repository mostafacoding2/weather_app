
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
class SearchView extends StatelessWidget {
  SearchView({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context)
  {    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Color(0xffFFFFFF),
        appBar:AppBar(leading:IconButton(onPressed: (){
          Navigator.pop(context);},icon:Icon(Icons.arrow_back_sharp,size:29)),title: Text('Search a City',
          style: TextStyle(color:Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),),
        body:Center(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(

                onSubmitted: (value)
                async
                {
                 var getWeatherCubit=await  BlocProvider.of<GetWeatherCubit>(context);

getWeatherCubit.getWeather(cityName: value);
                Navigator.pop(context);

                },



                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical:32,horizontal: 20),
                  label: Text('search'),
                  suffixIcon: IconButton(icon:Icon(Icons.search,size: 25,),
                    onPressed: (){},),
                  hintText: 'Enter your aCity ',
                  hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold , color:Colors.black,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),),),
              ),
            )),),
    );}
}