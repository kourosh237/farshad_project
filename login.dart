import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  void validation() {
    final FormState? _form = _formkey.currentState;
    if (_form!.validate()) {
      print('yes');
    } else {
      print('no');
    }
  }
  late bool obsecuretext = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(//mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 280,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      color: Colors.cyan,
                    ),
                    child: const Center(
                        child: Text(
                          'ورود',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.yellowAccent,
                          ),
                        )),margin: EdgeInsets.only(bottom: 25),
                  ),
                  Form(
                      key: _formkey,
                      child: Container(
                        height: 350,
                        width: double.infinity,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextFormField(
                                validator: (value) {
                                  if (value == '') {
                                    return "لطفا نام کاربری را وارد نمایید";
                                  } else if (value!.length < 6) {
                                    return 'نام کاربری حد اقل باید 6 حرف باشد';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        borderSide: BorderSide(color: Colors.grey)
                                    ),
                                    label: const Text(
                                      'نام کاربری',
                                      style: TextStyle(fontSize: 15, color: Colors.grey),
                                    )),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value == '') {
                                    return "لطفا کلمه عبور را وارد نمایید";
                                  } else if (value!.length < 8) {
                                    return 'کلمه عبور حد اقل باید 8 حرف باشد';
                                  }
                                  return null;
                                },
                                obscureText: obsecuretext,
                                decoration: InputDecoration(
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          obsecuretext = !obsecuretext;
                                        });
                                      },
                                      child: Icon(obsecuretext == false
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                    label: const Text(
                                      'کلمه عبور',
                                      style: TextStyle(fontSize: 15, color: Colors.grey),
                                    )),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    validation();
                                  },
                                  child: const Text('ورود',style: TextStyle(fontSize: 20),),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const Text('اکانت ندارم:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => const FarshadProject()));
                                    },
                                    child: const Text(
                                      'ثبت نام',
                                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ,color: Colors.cyan),
                                    ),
                                  )
                                ],
                              )
                            ]),
                      )),
                ])),
      ),
    );
  }
}
