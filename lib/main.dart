import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyHomepage(),

    );
  }
}


class MyHomepage extends StatefulWidget {
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}
class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding:EdgeInsets.all(18),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical:100 ),
              child: Text(
                "Dear \n Programmer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Cursive'
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(vertical: 7,horizontal: 5.8),
              child: TextField(
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    fontSize: 20
                  )
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(vertical: 7,horizontal: 5.8),
              child: TextField(
                decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontSize: 20
                    )
                ),
                obscureText: true,
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(vertical: 7,horizontal: 5.8),
              child: SizedBox(
                child: ElevatedButton(
                    onPressed:(){},
                    child:Text('Login',style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor:WidgetStatePropertyAll(Colors.red),
                    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 13,horizontal: 20)),
                    textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 23))
                  ),

                ),
              ),
            )
          ],
        ),
      ),
    ) ;
  }
}


