import 'package:flutter/material.dart';
import 'package:rent_it/screen/home/HomePage.dart';

import 'login.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
              Text("Verification",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.red[700]),),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                  width: 192,
                  child: Text("Enter your code number",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black54),textAlign: TextAlign.center,)
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOtp(first: true, last: false),
                        _textFieldOtp(first: false, last: false),
                        _textFieldOtp(first: false, last: false),
                        _textFieldOtp(first: false, last: true),
                      ],
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
                              MaterialPageRoute(builder: (context) => HomePage(),
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
                            Text("Verify",style: TextStyle(fontSize: 16,color: Colors.white,),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28,),
              Text("Didn't you receive the code?",style: TextStyle(fontSize: 12,color: Colors.black38),),
              SizedBox(height: 8,),
              Text("Resend new code",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple),),
            ],
          ),
        ),
      ),
    );
  }

  _textFieldOtp({required bool first,required bool last}){
    return Container(
      height: 88,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value){
            if(value.length == 1 && last == false){
              FocusScope.of(context).nextFocus();
            }
            if(value.length == 0 && first == false){
              FocusScope.of(context).previousFocus();
            }

          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2,color: Colors.black12),
              borderRadius: BorderRadius.circular(12)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2,color: Colors.purple),
                borderRadius: BorderRadius.circular(12)
            ),
          ),
        ),
      ),
    );
  }
}
