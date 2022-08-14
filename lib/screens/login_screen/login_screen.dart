
import 'package:beauty_pariour2/screens/loginFirstScreen/login_first_step_screen.dart';
import 'package:beauty_pariour2/screens/login_screen/bloc_login_screen.dart';
import 'package:beauty_pariour2/screens/reset%20password/resetpassword.dart';
import 'package:beauty_pariour2/shared_widget.dart/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
class Loginscreen extends StatefulWidget {
   Loginscreen({Key? key}) : super(key: key);
 final bloc = Loginscreenbloc();
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
   TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: Colors.black,
                    ),
                    
                  ),
                    const CustomText(
                title: "Login",
                fontSize: 18,
                fontColor: Colors.black,
              ),
                  ],
                  ),  
                 const  SizedBox(height: 30,),
               const   CustomText(
                title: "Beauty Cosmetics ",
                fontSize: 25,
                fontColor: Colors.pink,
              ),
             const SizedBox(height: 20,),   Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink),
              ),
                  labelText: 'Email',
                ),
              ),
            ),  Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller:passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink),
              ),
                  labelText: 'password ',
                ),
              ),
            ),Container(
height: 50,
padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
// ignore: deprecated_member_use
child: RaisedButton(
textColor: Colors.white,
color: const Color.fromARGB(255, 240, 115, 157),
child: const Text('Login'),
onPressed: () {
  Get.to(() =>  const LoginFirstStepScreen());
// print(emailController.text);
// print(passwordController.text);
},
),), 
   const   SizedBox(height: 12,),
   Row(
     children: [
       Column(
         children: [
          InkWell(onTap: () {   Get.to(() => const ForgotPasswordScreen());
            
          },
            child:const Padding(
              padding:  EdgeInsets.all(25),
              child:   CustomText(
                     title: "Having trouble? "
                      "Rest your password",
                      fontSize: 16,
                      fontColor: Color.fromARGB(255, 234, 136, 168),
                    ),
            ),
          ),
         ],
       ),
     ],
   ),
      ],
  ), 
  
    ),
       
    );
  }
}
