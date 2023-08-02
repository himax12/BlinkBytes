import 'package:basicapp1/widgets/navigation.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(children: [
        Image.asset(
          'image/img1.png',
          height: height * 0.75,
          width: width * 0.75,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Navigation(),
                ));
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 78,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Login with Instagram",
                        style: TextStyle(
                          color: Colors.black54,
                        )),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        const Text(
                          "Himax_23",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 5),
                        Image.asset(
                          "image/img2.png",
                          height: 13,
                          width: 13,
                        ),
                      ],
                    )
                  ],
                ),
                Image.asset("image/img3.png"),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Center(
          child: Text(
            "Switch Accounts",
            style: TextStyle(color: Colors.black38),
          ),
        ),
      ]),
    );
  }
}
