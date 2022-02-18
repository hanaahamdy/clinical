import 'package:youtube/data/models/models.dart';

abstract class Charcterstates{}
class IntialState extends Charcterstates{}
class CharcterLoadingState extends Charcterstates{}
class  CharcterSuccessState extends Charcterstates{
  //final CharcterModel charcterModel;

  CharcterSuccessState();
}
class CharcterErrorState extends Charcterstates{}
class SearchSuccess extends Charcterstates{}
