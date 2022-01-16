import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            title(),
            email(),
            password(),
            rememberMe(),
            login(),
          ],
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login to your\naccount',
            style: mainStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 87,
                height: 4,
                decoration: BoxDecoration(
                  color: kBlack,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Container(
                width: 8,
                height: 4,
                decoration: BoxDecoration(
                  color: kBlack,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget email() {
    return Container(
      margin: const EdgeInsets.only(top: 48),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: kWhiteGrey,
      ),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
          hintText: 'Email',
          hintStyle: hintTextStyle,
        ),
      ),
    );
  }

  Widget password() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: kWhiteGrey,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration.collapsed(
                hintText: 'Password',
                hintStyle: hintTextStyle,
              ),
            ),
          ),
          Icon(
            Icons.visibility_outlined,
            color: kGrey,
          ),
        ],
      ),
    );
  }

  Widget rememberMe() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: false,
              onChanged: (value) {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            'Remember Me',
            style: rememberMeStyle,
          ),
        ],
      ),
    );
  }

  Widget login() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      width: double.infinity,
      height: 56,
      // padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: kBlack,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Login',
          style: loginStyle,
          // textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
