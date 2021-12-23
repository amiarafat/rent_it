import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rent_it/screen/welcome/otp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Container(
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black45,
                    size: 32,
                  ),
                ),
              ),
              ClipOval(
                child: Image.asset(
                  "assets/images/bhara.png",
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text("Login",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.red[700]),),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                  width: 192,
                  child: Text("Add your phone number. We will send you a verification code.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.center,)
              ),
              SizedBox(
                height: 24,
              ),

              Container(
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        prefix: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text("(+88)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                        suffixIcon: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 32,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 52,
                      width: 324,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Otp(),
                              )
                          );
                        },
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                            backgroundColor: MaterialStateProperty.all(Colors.purple[700]),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Send",style: TextStyle(fontSize: 16,color: Colors.white,),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
