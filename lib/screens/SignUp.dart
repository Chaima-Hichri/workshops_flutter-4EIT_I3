import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String email;
  late String username;
  late String password;
  GlobalKey<FormState> _globalKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: Padding(
          padding:  EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25,),

              Center(child: Image.asset("assets/images/logo.png",width: 200,)),
              SizedBox(height: 10,),

              Text("Sign Up",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),

              TextFormField(
                decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder()

                ),
                onSaved: (value){
                  username=value!;
                },
                validator: (value){
                  if(value!.isEmpty){
                    return " username cannot be empty";
                  }
                },

              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder()

                ),
                onSaved: (value){
                  email=value!;
                },
                validator: (value){
                  if(value!.isEmpty){
                    return " email cannot be empty";
                  }
                },

              ),
              SizedBox(height: 15,),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "password",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder()

                ),
                onSaved: (value){
                  password=value!;
                },
                validator: (value){
                  if(value!.isEmpty){
                    return " password cannot be empty";
                  }
                },

              ),
              SizedBox(height: 25,),

              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Already have an account ?"),

                    SizedBox(width: 6,),

                    Icon(Icons.arrow_forward_rounded,color: Colors.deepOrange,)

                  ],
                ),
              ),
              SizedBox(height: 20,),

              Container(
                width: 370,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white
                    ),
                    onPressed: (){
                      if(_globalKey.currentState!.validate()){
                        _globalKey.currentState!.save();
                        showDialog(context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("INFORMATIONS"),
                                content: Text("Welcome "+username),
                              );
                            });

                      }
                    },
                    child: Text("SIGN UP")
                ),
              )




            ],
          ),
        ),
      ),

    );
  }
}