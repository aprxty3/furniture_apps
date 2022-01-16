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
}
