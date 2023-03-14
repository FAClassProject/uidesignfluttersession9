import 'package:flutter/material.dart';

import 'app_theme.dart';


final AppTheme appTheme = AppTheme();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {

    appTheme.addListener(() {
      // we didn't add this set method
      //set state is use to  get the current state of your application at runtime
      setState(() {});
   });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      themeMode: appTheme.currentTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          appTheme.toggleTheme();
        }, icon: Icon(Icons.brightness_4, color: Colors.red,))],
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("UI Design one", style: TextStyle(backgroundColor:
              Colors.teal, fontSize: 30, color: Colors.white, letterSpacing: 2),),
              SizedBox(height: 30,),

              Container(
               // color: Colors.red,
                //height: MediaQuery.of(context).size.height / 0.25,
                height: 200,
                width: 200,
                decoration:BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(60)
                ) ,
                child: Center(
                  child: Text("UI Design one", style: TextStyle(backgroundColor:
                  Colors.teal, fontSize: 20, color: Colors.white, letterSpacing: 2),),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                style: ButtonStyle(shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ))),
                onPressed: (){}, child: Text("UI Design one", style: TextStyle(backgroundColor:
              Colors.teal, fontSize: 20, color: Colors.white, letterSpacing: 2),),)

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
