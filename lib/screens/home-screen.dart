import 'package:flutter/material.dart';
import 'package:ngo_app/screens/login-screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home-screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.orange,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //This is for logout
              IconButton(onPressed: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              }, icon: const Icon(Icons.exit_to_app, color: Colors.white,))
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Here are the list of ngos available", style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            const Divider(color: Colors.orange, height: 1, thickness: 1,),
            ListTile(
              title: const Text("Swami Shri Manoharanand Manu Seva Sangh"),
              leading: const Icon(Icons.home),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                    elevation: 5,
                    insetPadding: const EdgeInsets.symmetric(
                      vertical: 100, horizontal: 20
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: () {
                                Navigator.of(context).pop();
                              }, icon: const Icon(Icons.cancel)
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Swami Shri Manoharanand Manu Seva Sangh",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(color: Colors.orange, height: 1, thickness: 1,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("F/373-Gujarat, Vadodra (Gujarat)"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("24, Jayesh Colony, Fatehgunj, Vadodra"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("Children,Differently abled,Disaster Management,Drinking Water,Education & Literacy,Aged/Elderly,Health & Family Welfare,Housing,Nutrition,Prisoner's Issues,Rural Development & Poverty Alleviation,Urban Development & Poverty Alleviation,Vocational Training,Women's Development & Empowerment,Any Other"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("9428582839"),
                              ],
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                launch("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1");
                              },
                              child: const Text("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1", style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),),
                          )
                        ],
                      ),
                    ),
                  )
                );
              },
            ),
            const Divider(color: Colors.orange, height: 1, thickness: 1,),
            ListTile(
              title: const Text("1995 Hope Of Light Association"),
              leading: const Icon(Icons.home),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      elevation: 5,
                      insetPadding: const EdgeInsets.symmetric(
                          vertical: 100, horizontal: 20
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, icon: const Icon(Icons.cancel)
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "1995 Hope Of Light Association",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(color: Colors.orange, height: 1, thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("E/18256, Ahmedabad (Gujarat)"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("23/276, Adarshnagar, Behind Pragatinagar Garden, Naranpura"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("9825070090"),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b2");
                              },
                              child: const Text("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1", style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),),
                            )
                          ],
                        ),
                      ),
                    )
                );
              },
            ),
            const Divider(color: Colors.orange, height: 1, thickness: 1,),
            ListTile(
              title: const Text("1 million Entrepreneurs International Forum"),
              leading: const Icon(Icons.home),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      elevation: 5,
                      insetPadding: const EdgeInsets.symmetric(
                          vertical: 100, horizontal: 20
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, icon: const Icon(Icons.cancel)
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "1 million Entrepreneurs International Forum",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(color: Colors.orange, height: 1, thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("E - 228 - Navasari, Navsari (Gujarat)"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("At and Post: Amalsad, Taluka: Gandevi,"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("9825070090"),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b3");
                              },
                              child: const Text("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1", style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),),
                            )
                          ],
                        ),
                      ),
                    )
                );
              },
            ),
            const Divider(color: Colors.orange, height: 1, thickness: 1,),
            ListTile(
              title: const Text("365 Foundation Rajkot"),
              leading: const Icon(Icons.home),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      elevation: 5,
                      insetPadding: const EdgeInsets.symmetric(
                          vertical: 100, horizontal: 20
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, icon: const Icon(Icons.cancel)
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "365 Foundation Rajkot",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(color: Colors.orange, height: 1, thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("Near Punjab National Bank Rajya Gor Street No 2"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("24, Jayesh Colony, Fatehgunj, Rajkot"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("9909002234"),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1");
                              },
                              child: const Text("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1", style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),),
                            )
                          ],
                        ),
                      ),
                    )
                );
              },
            ),
            const Divider(color: Colors.orange, height: 1, thickness: 1,),
            ListTile(
              title: const Text("451 Varsh Juna Patliya Viravadi Hanuman Charitable Trust"),
              leading: const Icon(Icons.home),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      elevation: 5,
                      insetPadding: const EdgeInsets.symmetric(
                          vertical: 100, horizontal: 20
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, icon: const Icon(Icons.cancel)
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "451 Varsh Juna Patliya Viravadi Hanuman Charitable Trust",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(color: Colors.orange, height: 1, thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("F/2062/Panchmahal, Godhra (Gujarat)"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("Civil Lines Road Near District Court Godhra"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("HIV/AIDS,Education & Literacy,Health & Family Welfare,Human Rights,Minority Issues,Rural Development & Poverty Alleviation,Women's Development & Empowerment"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("9426398023"),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1");
                              },
                              child: const Text("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1", style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),),
                            )
                          ],
                        ),
                      ),
                    )
                );
              },
            ),
            const Divider(color: Colors.orange, height: 1, thickness: 1,),
            ListTile(
              title: const Text("4 Leg Rescue Foundation"),
              leading: const Icon(Icons.home),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      elevation: 5,
                      insetPadding: const EdgeInsets.symmetric(
                          vertical: 100, horizontal: 20
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, icon: const Icon(Icons.cancel)
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "4 Leg Rescue Foundation",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(color: Colors.orange, height: 1, thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("E/3612 Ahmedabad, Dehggam (Gujarat)"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("Motipavahi, Tal Dehgam, Dist Gandhinagar Gujarat"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("9409514439"),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1");
                              },
                              child: const Text("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1", style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),),
                            )
                          ],
                        ),
                      ),
                    )
                );
              },
            ),
            const Divider(color: Colors.orange, height: 1, thickness: 1,),
            ListTile(
              title: const Text("84 Kp Pragati Mehsana"),
              leading: const Icon(Icons.home),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      elevation: 5,
                      insetPadding: const EdgeInsets.symmetric(
                          vertical: 100, horizontal: 20
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, icon: const Icon(Icons.cancel)
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "84 Kp Pragati Mehsana",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(color: Colors.orange, height: 1, thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("E/3185/Mhsana, Mehsana (Gujarat)"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("To Post Bhsariya TA Dist.Mehsana"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("Agriculture,Animal Husbandry, Dairying & Fisheries,Art & Culture,Children,Dalit Upliftment,Disaster Management,Education & Literacy,Aged/Elderly,Environment & Forests,Food Processing,Health & Family Welfare,HIV/AIDS,Housing,Human Rights,Micro Finance (SHGs),Micro Small & Medium Enterprises,Minority Issues,Tribal Affairs,Vocational Training"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("7567668968"),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1");
                              },
                              child: const Text("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1", style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),),
                            )
                          ],
                        ),
                      ),
                    )
                );
              },
            ),
            const Divider(color: Colors.orange, height: 1, thickness: 1,),
            ListTile(
              title: const Text("9 To 9 Destiny Group Charitable Trust"),
              leading: const Icon(Icons.home),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      elevation: 5,
                      insetPadding: const EdgeInsets.symmetric(
                          vertical: 100, horizontal: 20
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, icon: const Icon(Icons.cancel)
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "9 To 9 Destiny Group Charitable Trust",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(color: Colors.orange, height: 1, thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("F/1309, Dahod (Gujarat)"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("At and PO Devgadh Bariyadahod gujarat 389380"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("Animal Husbandry, Dairying & Fisheries,Art & Culture,Biotechnology,Children,Civic Issues,Dalit Upliftment,Education & Literacy,Aged/Elderly,Environment & Forests,Health & Family Welfare,HIV/AIDS,Human Rights,Information & Communication Technology,Panchayati Raj,Right to Information & Advocacy,Rural Development & Poverty Alleviation,Tribal Affairs,Urban Development & Poverty Alleviation,Vocational Training,Women's Development & Empowerment"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("9825257855"),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1");
                              },
                              child: const Text("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1", style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),),
                            )
                          ],
                        ),
                      ),
                    )
                );
              },
            ),
            const Divider(color: Colors.orange, height: 1, thickness: 1,),
            ListTile(
              title: const Text("A S Foundation And Charitable Trust"),
              leading: const Icon(Icons.home),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      elevation: 5,
                      insetPadding: const EdgeInsets.symmetric(
                          vertical: 100, horizontal: 20
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, icon: const Icon(Icons.cancel)
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "A S Foundation And Charitable Trust",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(color: Colors.orange, height: 1, thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("f/5922/bk, Deesa (Gujarat)"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("B/4, Bhumi Society, Behind Murali Tyre Works"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("Art & Culture,Children,Dalit Upliftment,Education & Literacy,Environment & Forests,Labour & Employment,Sports,Tourism,Tribal Affairs,Urban Development & Poverty Alleviation,Vocational Training,Women's Development & Empowerment,Youth Affairs"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("9904927817"),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1");
                              },
                              child: const Text("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1", style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),),
                            )
                          ],
                        ),
                      ),
                    )
                );
              },
            ),
            const Divider(color: Colors.orange, height: 1, thickness: 1,),
            ListTile(
              title: const Text("A V Vision Foundation"),
              leading: const Icon(Icons.home),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                      elevation: 5,
                      insetPadding: const EdgeInsets.symmetric(
                          vertical: 100, horizontal: 20
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, icon: const Icon(Icons.cancel)
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "A V Vision Foundation",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(color: Colors.orange, height: 1, thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("F2375 Surat, Surat (Gujarat)"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("1 Jalaram Nagar Society 1st Floor Near Bal Ananth Ashram Katargam Main Road, Surat 395400"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("Agriculture,Dalit Upliftment,Education & Literacy,HIV/AIDS,Science & Technology,Women's Development & Empowerment,Any Other,Art & Culture,Children,Drinking Water,Environment & Forests,Health & Family Welfare,Information & Communication Technology,Sports,Urban Development & Poverty Alleviation,Vocational Training"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text("9925376150"),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launch("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1");
                              },
                              child: const Text("https://www.google.com/maps/search/+24,+JAYESH+COLONY,+FATEHGUNJ,+VADODARA/@22.3212153,73.1861665,17z/data=!3m1!4b1", style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),),
                            )
                          ],
                        ),
                      ),
                    )
                );
              },
            ),
            const Divider(color: Colors.orange, height: 1, thickness: 1,),
          ],
        ),
      ),
    );
  }
}
