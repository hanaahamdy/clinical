import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube/cubit/mycubit.dart';
import 'package:youtube/cubit/states.dart';
import 'package:youtube/data/models/models.dart';

class CharacterScreen extends StatefulWidget {
  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  var searchController = TextEditingController();

  bool isSearch = false;

  var searchedCharcter = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<myCubit, Charcterstates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = myCubit.get(context);
        var list = cubit.charcter;
        return Scaffold(
          backgroundColor: Colors.grey,
          body: SingleChildScrollView(
            child: Column(
              children: [TextFormField(controller: searchController,
                cursorColor: Colors.blueGrey,
                decoration: InputDecoration(
                    hintText: "FindCharcter....",
                    helperStyle: TextStyle(color: Colors.blueGrey,),border: InputBorder.none
                ),style: TextStyle(color: Colors.black),onChanged: (charcter){cubit.addSearchedforItemtosearchedList(charcter);},),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: GridView.builder(
                      itemCount: list.length,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 3,
                          crossAxisSpacing: 3,
                          childAspectRatio: 2 / 3.3,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) =>
                          buildLoadedWidget(list[index])),
                ),
              ],
            ),
          ),

//          buildLoadedWidget(cubit.charcter[index],cubit.charcter.length) ,
          appBar:
          AppBar(
            backgroundColor: Color(0xffFFC107),
            title: Text(
              "charcters",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        );
      },
    );
  }

  Widget Search(mod) {
    return TextField(
      controller: searchController,
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        hintText: "FindCharcter....",
          helperStyle: TextStyle(color: Colors.blueGrey,),border: InputBorder.none
      ),style: TextStyle(color: Colors.grey),onChanged: (charcter){},
    );
  }

  void searchedItem(s,String char)
  {
searchedCharcter=s.where((element)=>s.name.toLowerCase().startWith(char)).toList();
setState(() {

});
  }

  Widget buildLoadedWidget(mod) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          child: mod.img.isNotEmpty
              ? FadeInImage.assetNetwork(
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: "images/loading.gif",
                  image: mod.img)
              : Image.asset("images/empty.gif"),
        ),
//        Container(
//          child: Image(
//            fit: BoxFit.cover,
//            height: 400,
//            image: NetworkImage("${mod.img}"),
//          ),
//        )
        Container(
          child: Center(
            child: Text(
              "${mod.name}",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          width: double.infinity,
          height: 30,
          color: Colors.black.withOpacity(.6),
        ),
      ],
    );
  }

  Widget bdWidget(mod) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
            width: double.infinity,
            color: Colors.grey,
            child: GridTile(
              footer: Container(
                alignment: Alignment.center,
                child: Text(
                  mod.name,
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.black.withOpacity(.7),
              ),
              child: mod.img.isNotEmpty
                  ? FadeInImage.assetNetwork(
                      fit: BoxFit.cover,
                      placeholder: "images/loading.gif",
                      image: mod.img)
                  : Image.asset("images/empty.gif"),
            )),
      ),
    );
  }
}
// Container(
//                         child: Image(image: NetworkImage(),fit:BoxFit.cover,),
//                          color: Colors.grey,
//                        ),"${list[index].img}"
