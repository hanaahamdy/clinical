// ignore: camel_case_types
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube/cubit/states.dart';
import 'package:youtube/data/api/api.dart';
import 'package:youtube/data/models/models.dart';

class myCubit extends Cubit<Charcterstates>{
  myCubit() : super(IntialState ());

  static myCubit get(BuildContext context)
  {
    return BlocProvider.of(context);
  }
   CharcterModel? charcterModel;
  List charcter=[];
  getCharcter()
  {
    emit(CharcterLoadingState());
    DioHelper.getChatacter(url:'characters').then((value) {
      charcter = value.data;
      charcter= charcter.map((c) => CharcterModel.fromJason(c)).toList();

      print(charcter);
      print(charcter.length);
      print(charcter[0].name);


//      for(var i in charcter )
//      {
//        charcterModel=CharcterModel.fromJason(i);
//        print(charcterModel.runtimeType);
//      }
//      print(charcter);
      //emit(CharcterSuccessState(charcterModel!));
     }

    ).catchError((onError){print(onError.toString());
    });
    emit(CharcterErrorState());


  }
  var searchedCharcter=[];

  void addSearchedforItemtosearchedList(String char)
  {
    var v=charcter.where((element) => element.name.toLowerCase().startsWith(char)).toList();
    emit(SearchSuccess());
    print(v);
  }




}