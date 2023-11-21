import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "space app",
      theme: ThemeData(
        fontFamily: "MyFont",
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          shadowColor: Colors.yellow,
          title: const Text("SPACE HOLE",
              style: TextStyle(
                  fontFamily: "MyFont",
                  fontWeight: FontWeight.w900,
                  fontSize: 26)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("SPACE DETAILS",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset(
                "assets/space1.png",
                height: 280,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "MaterialApp configures its WidgetsApp.textStyle with an ugly red/yellow text style that's intended to warn the developer that their app hasn't defined a default text style. Typically the app's Scaffold builds a Material widget whose default Material.textStyle defines the text style for the entire scaffold.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "MyFont",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                // print("Space details button taped");
              },
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 17, 0),
                      borderRadius: BorderRadius.circular(40)),
                  child: const Text(
                    "SPACE DETAILS",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),

            // second screen
          ]),
        ),
      ),
    );
  }
}
