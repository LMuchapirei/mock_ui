// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mock_ui/slot_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageView(
        children: [
          Page1Mockup(),

        ],
      ),
    );
  }
}

class Page1Mockup extends StatefulWidget {
  Page1Mockup({super.key});

  @override
  State<Page1Mockup> createState() => _Page1MockupState();
}

class _Page1MockupState extends State<Page1Mockup> {
  List<Map<String, dynamic>> optionsList = [
    {
      "icon": Icons.local_parking_rounded,
      "desc1": "Find a",
      "desc2": "parking"
    },
    {"icon": Icons.map_outlined, "desc1": "Place", "desc2": "location"},
    {"icon": Icons.security_outlined, "desc1": "Car", "desc2": "Security"},
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                    flex: 7,
                    child: Container(
                      color: const Color(0xFFcea958),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          'Harare,ZWE',
                                          style: TextStyle(
                                              color: Color(0xFF9f8755)),
                                        ),
                                        Icon(Icons.location_on_outlined,
                                        color: Color(0xFFaa9354),)
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Good Morning,Jacob!',
                                      style: TextStyle(
                                          color: Color(0xFF503913),
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white,
                                  )),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Color(0xFFe1cb99),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    hintText:
                                        'Search parking,car insurance .....',
                                    border: InputBorder.none),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("SERVICES",style: TextStyle(
                                  fontWeight: FontWeight.w500
                                ),),
                                Row(
                                  children: [
                                    Text("View All"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(Icons.arrow_forward_ios,size: 12,)
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: SizedBox(
                                height: 180,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.separated(
                                  itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return SizedBox(
                                      height: 120,
                                      width: 120,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Color(0xFFebdcbb),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: InkWell(
                                          onTap: () {
                                                                                   
                                            final item = optionsList[index]
                                                      ["desc2"];
                                            if(item=="parking"){
                                              Navigator.of(context).push(
                                                MaterialPageRoute(builder: (context) => SLotView(),)
                                              );
                                            }
                                                                                      
                                          },
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                left: 10, top: 30, bottom: 30),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                      optionsList[index]["icon"]),
                                                  Spacer(),
                                                  Text(optionsList[index]
                                                      ["desc1"]),
                                                  Text(
                                                      optionsList[index]["desc2"])
                                                ]),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return SizedBox(
                                      width: 10,
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                Flexible(
                    flex: 4,
                    child: Container(
                      color: const Color(0xFF050e15),
                      child: Column(children: [
                        Spacer(),
                        SizedBox(
                          height: 90,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 50,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFF26313e),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              applyExpanded(child:TextButton.icon(
                                  onPressed: () {
                                    setState(() {
                                      selectedIndex = 0;
                                    });
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor: selectedIndex == 0 ? Colors.black: Colors.white,
                                    backgroundColor: selectedIndex == 0 ? Color(0xFFf9e428):  Colors.transparent,
                                    shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    )
                                  ),
                                  icon: Icon(Icons.home),
                                  label:
                                      Text(selectedIndex == 0 ? "Home" : "")),apply:selectedIndex == 0),
                              applyExpanded(child:TextButton.icon(
                                  onPressed: () {
                                    setState(() {
                                      selectedIndex = 1;
                                    });
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor: selectedIndex == 1 ? Colors.black: Colors.white,
                                    backgroundColor: selectedIndex == 1 ? Color(0xFFf9e428):  Colors.transparent,
                                               shape:RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      )
                                  ),
                                  icon: Icon(Icons.map),
                                  label:
                                      Text(selectedIndex == 1 ? "Locate" : "")),apply: selectedIndex == 1),
                              applyExpanded(child: TextButton.icon(
                                  onPressed: () {
                                    setState(() {
                                      selectedIndex = 2;
                                    });
                                  },
                                    style: TextButton.styleFrom(
                                    foregroundColor: selectedIndex == 2 ? Colors.black: Colors.white,
                                    backgroundColor: selectedIndex == 2 ? Color(0xFFf9e428): Colors.transparent,
                                                shape:RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      )
                                  ),
                                  icon: Icon(Icons.calendar_month_outlined),
                                  label:
                                      Text(selectedIndex == 2 ? "Calender" : "")),apply: selectedIndex == 2)
                              ,applyExpanded(child: TextButton.icon(
                                  onPressed: () {
                                    setState(() {
                                      selectedIndex = 3;
                                    });
                                  },
                                    style: TextButton.styleFrom(
                                    foregroundColor: selectedIndex == 3 ? Colors.black: Colors.white,
                                    backgroundColor: selectedIndex == 3 ? Color(0xFFf9e428): Colors.transparent,
                                                shape:RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      )
                                  ),
                                  icon: Icon(
                                      Icons.settings_input_component_outlined),
                                  label:
                                      Text(selectedIndex == 3 ? "Preferences" : "")),apply: selectedIndex == 3)
                            ],
                          ),
                        ),
                        Spacer()
                      ]),
                    ))
              ],
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: 150,
              child: ClipPath(
                clipper: CustomSemiCircleClipper(down: 90,holeRadius: 30),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFffffff)),
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.width * 0.7,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal:14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Rezende Parkade",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black
                                ),),
                                SizedBox(height: 10,),
                                Text("Julius Nyerere Way,HRE",style: TextStyle(
                                  fontWeight: FontWeight.w300
                                ),)
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1
                                )
                              ),
                              child: Icon(Icons.circle_outlined))
                          ],
                        ),
                      ),
                      Padding(
                         padding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal:14.0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                         padding: const EdgeInsets.symmetric(                 
                          horizontal:30.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Duration",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Text("Balance Paid",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(                               
                                    text: TextSpan(
                                    text: "9hrs",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                    children: [
                                      TextSpan(text: "/31 days",style:TextStyle(
                                      fontWeight: FontWeight.w200,
                                      color: Colors.grey
                                    ),)
                                    ]
                                  )),
                                  Text("\$558 USD")
                                ],
                              )
                            ],
                          ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10
                        ),
                        child: Center(
                          child: Image.asset("assets/images/barcode.png",height: 60,width: 300,fit: BoxFit.cover,),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget applyExpanded({required Widget child,required bool apply}){
    return apply? Expanded(child: child,):child;
  }
}



// class MyHomePageX extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//       ClipPath(
//         clipper: CustomSemiCircleClipper(down: 40, holeRadius: 20),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(
//               Radius.circular(15),
//             ),
//             color: Colors.blueAccent,
//           ),
//           width: 300,
//           height: 95,
//           padding: EdgeInsets.all(15),
//           child: Text('first example'),
//         ),
//       ),
//       SizedBox(
//         height: 20,
//       ),
//       ClipPath(
//         clipper: CustomSemiCircleClipper(down: 100, holeRadius: 40),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(
//               Radius.circular(15),
//             ),
//             color: Colors.amber,
//           ),
//           width: 200,
//           height: 250,
//           padding: EdgeInsets.all(35),
//           child: Text('second example'),
//         ),
//       ),
//     ]);
//   }
// }

class CustomSemiCircleClipper extends CustomClipper<Path> {
  CustomSemiCircleClipper({required this.down, required this.holeRadius});

  final double down;
  final double holeRadius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0.0,size.height - down - holeRadius)
      ..arcToPoint(
        Offset(0, size.height-down),
        clockwise: true,
        radius: Radius.circular(1),
      )
      ..lineTo(0.0,size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height-down)
      ..arcToPoint(
        Offset(size.width, size.height- down - holeRadius),
        clockwise: true,
        radius: Radius.circular(1),
      );

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomSemiCircleClipper oldClipper) => true;
}

class Page2Mockup extends StatelessWidget {
  const Page2Mockup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

