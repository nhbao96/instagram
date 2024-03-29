import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta/utils/colors.dart';
import 'package:insta/widgets/textfield_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //logo svg
            Flexible(child: Container(),flex: 2,),
            SvgPicture.asset('assets/ic_instagram.svg',color: primaryColor),
            const SizedBox(height: 64,),
            //text field username
            TextFieldInput(
                textEditingController: _emailController,
                hintText: "Enter your email",
                textInputType: TextInputType.emailAddress),
            const SizedBox(height: 24,),
            //text field password
            TextFieldInput(
                textEditingController: _passwordController,
                hintText: "Enter your password",
                textInputType: TextInputType.text,isPass: true,),
            //button login
            const SizedBox(height: 24,),
            InkWell(
              onTap: (){
                print("on tap login");
              },
              child: Container(
                child: const Text("Login"),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4))
                ) ,
                  color: Colors.blue,),

              ),
            ),
            Flexible(child: Container(),flex: 2,),
            //transitioning to signing up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Don't have an account?"),
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                GestureDetector(
                  onTap: (){
                    print("on tap sign up");
                  },
                  child: Container(
                    child: Text(" Sign up", style: TextStyle(fontWeight: FontWeight.bold),),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                )
              ],
            )
          ],
        ),
      ),),
    );
  }
}
