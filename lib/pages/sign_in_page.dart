import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

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
            const SizedBox(
              height: 21,
            ),
            Center(
              child: Text(
                'OR',
                style: GoogleFonts.nunito(
                  color: kGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            loginWith(),
            register(),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Password Kamu Salah',
          style: salahStyle,
        ),
      ],
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

      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        onPressed: () {
          fToast.showToast(
            child: errorToast(),
            toastDuration: Duration(seconds: 2),
            gravity: ToastGravity.BOTTOM,
          );
        },
        child: Text(
          'Login',
          style: loginStyle,
          // textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget loginWith() {
    return Container(
      margin: const EdgeInsets.only(top: 21),
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Login With Google',
          style: loginGoogle,
        ),
      ),
    );
  }

  Widget register() {
    return Container(
      margin: const EdgeInsets.only(top: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don’t have an account?',
            style: hintTextStyle,
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'Register',
              style: registerStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget errorToast() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kRed,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'Password Salah',
        style: salah2Style,
      ),
    );
  }
}
