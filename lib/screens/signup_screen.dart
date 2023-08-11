import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta/utils/colors.dart';
import 'package:insta/widgets/textfield_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
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

            //circular widget to accept and show our selected file
            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1689052261675-ca5cc80a2a67?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80'),
                ),
                Positioned(
                    child: IconButton(onPressed:(){},
                      icon: Icon(Icons.add_a_photo),
                    ),
                bottom: -10,
                left: 80,)
              ],
            ),
            const SizedBox(height: 24,),
            //text field username
            TextFieldInput(
                textEditingController: _usernameController,
                hintText: "Enter your username",
                textInputType: TextInputType.emailAddress),
            const SizedBox(height: 24,),
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
            TextFieldInput(
                textEditingController: _bioController,
                hintText: "Enter your bio",
                textInputType: TextInputType.text),
            const SizedBox(height: 24,),
            InkWell(
              onTap: (){
                print("on tap login");
              },
              child: Container(
                child: const Text("Sign up"),
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
