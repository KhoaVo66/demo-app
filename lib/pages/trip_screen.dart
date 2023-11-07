import 'package:demo_app/pages/current_trips.dart';
import 'package:demo_app/pages/guide_page.dart';
import 'package:flutter/material.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({super.key});
  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  static const Color grey1 = Color(0xffF5F5F5);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(140),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/location/background.jpg'),fit: BoxFit.fitWidth),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 16,
                      child: Text(
                        'My Trips',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold
                        ),
                      )
                  )
                ],
              ),
            ),
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Column(
                    children: [
                      Container(
                        child: const TabBar(
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: Colors.white,
                            indicator: BoxDecoration(
                                color: Color(0xff00cea6),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: EdgeInsets.zero,
                            indicatorPadding: EdgeInsets.zero,
                            labelPadding: EdgeInsets.zero,
                            dividerColor: Colors.transparent,
                            tabs: [
                              Tab(
                                child: SizedBox(
                                  width: 95,
                                  height: 40,
                                  child: Center(
                                    child: Text(
                                      'Current Trips',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14
                                      ),
                                    ),
                                  )
                                ),
                              ),
                              Tab(
                                child: SizedBox(
                                    width: 95,
                                    height: 40,
                                    child: Center(
                                      child: Text(
                                        'Next Trips',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14
                                        ),
                                      ),
                                    )
                                ),
                              ),
                              Tab(
                                child: SizedBox(
                                    width: 95,
                                    height: 40,
                                    child: Center(
                                      child: Text(
                                        'Past Trips',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14
                                        ),
                                      ),
                                    )
                                ),
                              ),
                              Tab(
                                child: SizedBox(
                                    width: 95,
                                    height: 40,
                                    child: Center(
                                      child: Text(
                                        'Wish List',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14
                                        ),
                                      ),
                                    ),
                                ),
                              ),
                            ]
                        ),
                      ),
                      const Expanded(
                          child: TabBarView(
                              children: [
                                CurrentTrips(),
                                Center(child: Text('Next Trips'),),
                                Center(child: Text('Past Trips'),),
                                Center(child: Text('Wish List'),),
                              ]
                          )
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 16,
                  bottom: 80,
                  child: SizedBox(
                      height:60,width: 60,
                      child: FittedBox(
                        child: FloatingActionButton(
                          backgroundColor: GuidePage.green1,
                          onPressed: (){},
                          child: Icon(
                            Icons.add,
                            size: 34,
                            color: Colors.white,
                          ),
                          shape: CircleBorder(
                          ),
                        ),
                      ),
                  ),
                )
              ],
            ),
          ),
      );
  }
}
