import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube/cubit/mycubit.dart';
import 'package:youtube/data/api/api.dart';
import 'package:youtube/routes.dart';
import 'package:youtube/screenn/charecterscreen.dart';
import 'package:youtube/screenn/task.dart';
import 'package:youtube/screenn/task2.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(Breking());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays:[],);
}

class Breking extends StatelessWidget {
 // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
//final AppRouter appRouter;

  const Breking({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>myCubit()..getCharcter(),
      child: MaterialApp(home:Task2() ,theme: ThemeData(appBarTheme: AppBarTheme()),
        debugShowCheckedModeBanner: false,
//  onGenerateRoute:appRouter.generateRoute ,
      ),
    );
  }
}

