import 'package:flutter/material.dart';
import 'package:mydemo4/pages/details_page.dart';

class HomePage extends StatefulWidget {
  static const String id="home_Page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
String text="Button One";
  _callDetailsPage() {
    Navigator.of(context).pushNamed(DetailsPage.id);

  }
    _callDetailsPage2(){
      Navigator.of(context).pushReplacementNamed(DetailsPage.id);
    }

_callDetailsPage3() async{
    String name="Flutter";
    int age= 22;
    Map result = await Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return DetailsPage(name: name, age: age);
    }));
    print(result);

    setState(() {
      text=result.toString();
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.blue,
          title: Text("Home Page"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
            onPressed: (){
           _callDetailsPage3();
            },
        child: Text(text),
        ),
      ),
    );
  }
}
