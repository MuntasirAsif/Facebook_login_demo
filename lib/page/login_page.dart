import 'package:facebook_login_page_demo/constant/colors.dart';
import 'package:facebook_login_page_demo/constant/image_string.dart';
import 'package:facebook_login_page_demo/constant/text_string.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Image(image: AssetImage(logo)),
              const SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: emailOrPhoneText,
                  filled: true,
                  fillColor: textFiledFillColor,
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: passwordText,
                  filled: true,
                  fillColor: textFiledFillColor,
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: buttonBgColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  loginText,
                  style: TextStyle(
                      color: buttonTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                )),
              ),
              const SizedBox(height: 20,),
              Text(forgetPasswordText,style: TextStyle(color: linkTextColor,fontSize: 15),),
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 10,),
                  Text(orText),
                  SizedBox(width: 10,),
                  Expanded(child: Divider())
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                    color: otherButtonBgColor,
                ),
                child: Center(
                    child: Text(
                      'Create New Account',
                      style: TextStyle(
                          color: buttonTextColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(aboutText),
                  SizedBox(width: 20,),
                  Text(helpText),
                  SizedBox(width: 20,),
                  Text(moreText)
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Meta'),
                  SizedBox(width: 5,),
                  Icon(Icons.copyright),
                  SizedBox(width: 5,),
                  Text('2022')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
