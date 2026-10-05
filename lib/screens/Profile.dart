import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late String currentPassword,newPassword,Address;
  GlobalKey<FormState> _globalKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Profile"),
      ),

      body: SingleChildScrollView(
        child: Form(
          key:_globalKey ,
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(children: [
              Center(child: Image.asset("assets/images/profil.png",width: 250,)),
              SizedBox(height: 15,),
              Text("user@gmail.com"),
              SizedBox(height: 15,),

              TextFormField(
                obscureText: true,
                onSaved: (value){
                  currentPassword=value!;
                },
                validator: (value){
                  if(value!.isEmpty)
                    return"invalid current password";
                },
                decoration: InputDecoration(
                    hintText: "current passsword",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 15,),
              TextFormField(
                onSaved: (value){
                  newPassword=value!;
                },
                validator: (value){
                  if(value!.isEmpty)
                    return"invalid password";
                },
                decoration: InputDecoration(
                    hintText: "new password",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                maxLines: 3,
                onSaved: (value){
                  Address=value!;
                },
                validator: (value){
                  if(value!.isEmpty)
                    return"invalid address";
                },
                decoration: InputDecoration(
                    hintText: "address",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 15,),



              SizedBox(height: 20,),
              Container(
                width:double.infinity,
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white

                  ),
                  onPressed: (){
                    if(_globalKey.currentState!.validate()){
                      _globalKey.currentState!.save();

                    }
                  },
                  child: Text("SAVE"),) ,
              )

            ],
            ),
          ),
        ),
      ),
    );
  }
}