import 'package:flutter/material.dart';
import 'package:sky_scrapper_three/api_helper.dart';

import 'model.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const MyApp(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
              ))
        ],
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
        future: APIHelper.apiHelper.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                " ERROR  :-  ${snapshot.error}",
                style: const TextStyle(color: Colors.black),
              ),
            );
          } else if (snapshot.hasData) {
            RanDom? data = snapshot.data;
            return (data != null)
                ? Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 500,
                      width: 450,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "NAME :-\n${data.title} ${data.first} ${data.last}",
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "GENDER :- ${data.gender}",
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "AGE :- ${data.age}",
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                CircleAvatar(
                                    radius: 70,
                                    backgroundImage: NetworkImage(data.image)),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              "DOB :- ${data.dobDate}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            const Spacer(),
                            Text(
                              "EMAIL :- ${data.email}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            const Spacer(),
                            Text(
                              "CITY :- ${data.city}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            const Spacer(),
                            Text(
                              "STATE :- ${data.state}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            const Spacer(),
                            Text(
                              "COUNTRY :- ${data.country}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            const Spacer(),
                            Text(
                              "PHONE :- ${data.phone}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            const Spacer(),
                            Text(
                              "CELL :- ${data.cell}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            const Spacer(),
                            Text(
                              "REGISTER DATE :- ${data.registerDate}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            const Spacer(),
                            Text(
                              "STREET NUMBER :- ${data.streetNumber}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  )
                : const Text(
                    "No Data...",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    ));
  }
}
