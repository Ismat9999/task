import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
static const String id="details_Page";
final String? name;
 final int? age;
  const DetailsPage({super.key, this.name,this.age});
  void printInfo(){

  }

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  _exitDetailsPage(){
   Map<String,int> map= {"Dart":33};
    Navigator.of(context).pop(map);


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initstate:${widget.name},${widget.age}");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Details Page"),
      ),
      body: Center(
        child: MaterialButton(onPressed: (){
          _exitDetailsPage();
        },
        color: Colors.blue,
        child: Text("Exit:  ${widget.name}, age ${widget.age}"),
      ),
      ),
    );
  }
  
}
