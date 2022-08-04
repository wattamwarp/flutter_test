import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects1/bloc/text_bloc.dart';

Widget GetWidget({required String type, required String styleId, required BuildContext context,required String text}){
  if(type=='Text'){
    BlocProvider.of<VTextBloc>(context).add(SendText(text: text));
    VTextBloc bloc=  VTextBloc();
    bloc.add(SendText(text: text));
    return  Container(
      height: 100,width: 300,
      color: Colors.yellow,
      child: BlocBuilder<VTextBloc, VTextState>(
          builder: (BuildContext context, VTextState state) {
            print(state);
            if(state is ShowText){

              return Text(state.text,style:getStyle(styleId: styleId) );
            }
          return Container();
        }
      ),
    );
  }

  return SizedBox();
}


Widget GetWidget2({required List list, required BuildContext context}){

  // for(int i=0;i<list.length;i++){
  //   print('the iterator'+i.toString());
  //   if(list[i]['type']=='Text'){
  //     if(list.length>1){
  //     list.removeAt(0);
  //     GetWidget2(list: list, context: context);}
  //     BlocProvider.of<VTextBloc>(context).add(SendText(text: list[i]['data']));
  //     return  BlocBuilder<VTextBloc, VTextState>(
  //         builder: (BuildContext context, VTextState state) {
  //           if(state is ShowText){
  //             return Text(state.text,style:getStyle(styleId: list[i]['style']) );
  //           }
  //           return Container();
  //         }
  //     );
  //   }
  // }


  return Container(
    height: 400,
    width: 300,
    color: Colors.red,
    child: ListView.builder(
        itemCount: 3,//list.length,
        itemBuilder: (BuildContext context , int index){
          return GetWidget(type: list[index]['type'], styleId: list[index]['style'], context: context, text: list[index]['data']);
        },
    ),
  );


  return SizedBox();
}


getStyle({required String styleId}){
  if(styleId=='1234'){
    return TextStyle(
        color: Colors.grey[800],
        fontWeight: FontWeight.bold,
        fontSize: 40);
  }
}