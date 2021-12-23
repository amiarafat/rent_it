import 'package:flutter/material.dart';
import 'package:rent_it/screen/welcome/login.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/bhara.png",
                width: 240,
              ),
              Text("Let's get started",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.red[700]),),
              SizedBox(
                height: 4,
              ),
              Text("Never a better time than no to start",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent[400]),),
              SizedBox(
                height: 74,
              ),
              SizedBox(
                height: 52,
                width: 324,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login(),
                        )
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.purple[700]),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)))
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(left: 52),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.phone,color: Colors.white,),
                        SizedBox(width: 16,),
                        Text("Login with Phone",style: TextStyle(fontSize: 16,color: Colors.white,),),
                      ],
                    )
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 52,
                width: 324,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login(),
                        )
                    );
                  },
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.red[700]),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)))
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 52),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.alternate_email,color: Colors.white,),
                        SizedBox(width: 16,),
                        Text("Login with Gmail",style: TextStyle(fontSize: 16,color: Colors.white,),),
                      ],
                    )
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 52,
                width: 324,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.blue[90000]),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)))
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(left: 52),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.facebook,color: Colors.blueAccent[900],),
                        SizedBox(width: 16,),
                        Text("Login with Facebook",style: TextStyle(fontSize: 16,color: Colors.white,),),
                      ],
                    )

                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
