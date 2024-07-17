import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 41, 51, 1),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              backgroundColor: const Color.fromRGBO(32, 41, 51, 1),
              expandedHeight: screenH * 0.45,
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                background: SizedBox(
                  height: screenH * 0.45,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/media/register-back.jpg',
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenW * 0.05,
                            right: screenW * 0.05,
                            bottom: screenH * 0.112),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'Sing up',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Sf',
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: screenH * 0.012,
                            ),
                            const Text(
                              "Welcome to Tunify, which will make accompany your mood for music. Let’s create account now",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Sf',
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                centerTitle: true,
                titlePadding: EdgeInsets.zero,
                title: Container(
                  height: screenH * 0.035,
                  width: screenW,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color.fromRGBO(123, 80, 243, 1),
                        width: 3,
                      ),
                    ),
                    color: Color.fromRGBO(32, 41, 51, 1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenW * 0.05),
              child: Container(
                width: screenW,
                height: screenH * 0.072,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(49, 62, 85, 0.78),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenW * 0.05),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontFamily: 'Sf',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Text(
                        'Full name',
                        style: TextStyle(
                          fontFamily: 'Sf',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(0.48),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenH * 0.023,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenW * 0.05),
              child: Container(
                width: screenW,
                height: screenH * 0.072,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(49, 62, 85, 0.78),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenW * 0.05),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      fontFamily: 'Sf',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Text(
                        'Email address',
                        style: TextStyle(
                          fontFamily: 'Sf',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(0.48),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenH * 0.023,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenW * 0.05),
              child: Container(
                width: screenW,
                height: screenH * 0.072,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(49, 62, 85, 0.78),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenW * 0.05),
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.visiblePassword,
                    style: const TextStyle(
                      fontFamily: 'Sf',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Text(
                        'Password',
                        style: TextStyle(
                          fontFamily: 'Sf',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(0.48),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenH * 0.046,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenW * 0.05),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(screenW * 0.923, screenH * 0.058),
                  backgroundColor: const Color.fromRGBO(123, 80, 243, 1),
                  surfaceTintColor: const Color.fromRGBO(104, 34, 251, 1),
                  shadowColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Create account',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Sf',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenH * 0.012,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account?",
                  style: TextStyle(
                    fontFamily: 'Sf',
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  " Sing in",
                  style: TextStyle(
                    fontFamily: 'Sf',
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(171, 144, 250, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
