import 'package:demo_app/model/location.dart';
import 'package:demo_app/model/users.dart';
import 'package:demo_app/pages/guide_page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _Home_pageState();
}

class _Home_pageState extends State<HomePage> {
  static const Color grey = Color(0xff555555);
  static const Color green1 = Color(0xff00CEA6);
  static const Color star = Color(0xffFFC100);
  List<TopJourney> _topjourneys = TopJourney.topjourneys;
  List<Story> _stories = Story.stories;
  List<User> _users = User.users;
  List<FeaturedTour> _featuredtours = FeaturedTour.featuredtours;
  List<TravelNew> _travelnews = TravelNew.travelnews;
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
            ),
          ),
          Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 140,
                child: Image(
                  image: AssetImage('assets/location/background.jpg'),
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              top: 150,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
              )),
          Positioned(
              top: 63,
              left: 16,
              child: Text(
                'Explore',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: 248,
              top: 50,
              child: Container(
                width: 140,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Da Nang',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.wb_cloudy_outlined,
                          size: 32,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '26°C',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
            top: 130,
            left: 16,
            child: Container(
              width: 380,
              height: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(60, 0, 0, 0),
                      offset: Offset(0.0, 1),
                      blurRadius: 12,
                      spreadRadius: 0),
                ],
              ),
              child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(4),
                    hintText: 'Hi, where do you want to explore?',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    prefixIcon: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          child: Image(
                            image: AssetImage('assets/location/search.png'),
                          ),
                        )),
                  )),
            ),
          ),
          Positioned(
              top: 180,
              bottom: 0,
              left: 0,
              right: 0,
              child: ListView(
                children: [
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'Top Journeys',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ), //Top Journeys
                          SizedBox(height: 10,),
                          SizedBox(
                            height: 280,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: _topjourneys.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 232,
                                          height: 258,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Color.fromARGB(20, 0, 0, 0),
                                                    offset: Offset(0.0, 1),
                                                    blurRadius: 12,
                                                    spreadRadius: 0),
                                              ],
                                              color: Colors.white),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    height: 140,
                                                    width: 232,
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(10),
                                                          topRight: Radius.circular(10)),
                                                      child: Image(
                                                        image: AssetImage(_topjourneys[index].image,),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 10,
                                                    bottom: 10,
                                                      child: Row(
                                                        children: [
                                                          Icon(Icons.star, size: 15, color: star,),
                                                          Icon(Icons.star, size: 15, color: star,),
                                                          Icon(Icons.star, size: 15, color: star,),
                                                          Icon(Icons.star, size: 15, color: star,),
                                                          Icon(Icons.star, size: 15, color: star,),
                                                          SizedBox(width: 10,),
                                                          Text(
                                                              '${_topjourneys[index].liked} likes',
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 12
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                  ),
                                                  Positioned(
                                                    top: 10,
                                                    right: 10,
                                                      child: ImageIcon(
                                                        AssetImage('assets/favorite.png'),
                                                        color: Colors.white, size: 20,
                                                      )
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        _topjourneys[index].title,
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16
                                                      ),
                                                    ),
                                                    SizedBox(height: 5,),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.calendar_month_outlined,size: 14, color: grey,),
                                                        SizedBox(width: 6,),
                                                        Text(
                                                            _topjourneys[index].calendar,
                                                          style: TextStyle(
                                                            color: grey,
                                                            fontSize: 14
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.watch_later_outlined, size: 14, color: grey,),
                                                        SizedBox(width: 6,),
                                                        Text(
                                                            _topjourneys[index].date,
                                                          style: TextStyle(
                                                            color: grey,
                                                            fontSize: 14
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                        '\$${_topjourneys[index].price}',
                                                      style: TextStyle(
                                                        color: green1,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                            ),
                          ), //Top Journeys
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Row(
                              children: [
                                Text(
                                  'Best Guides',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(width: 176,),
                                Text(
                                  'SEE MORE',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: green1
                                  ),
                                ),
                              ],
                            ),
                          ), //Best Guides
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: GridView.builder(
                                itemCount: _users.length,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 20,
                                  crossAxisSpacing: 20,
                                  mainAxisExtent: 240
                                ),
                                itemBuilder: (context , index) {
                                  return Container(
                                    child: new InkResponse(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) =>
                                                GuidePage(users: User.users[index])
                                        )
                                        );
                                      },
                                      child: Stack(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                ),
                                                child: Image(image: AssetImage(_users[index].avatar),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(height: 7,),
                                              Text(
                                                _users[index].name,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500
                                                ),
                                              ),
                                              SizedBox(height: 5,),
                                              Row(
                                                children: [
                                                  Icon(Icons.location_on_outlined, size: 20, color: green1,),
                                                  Text(
                                                    _users[index].address,
                                                    style: TextStyle(
                                                      color: green1,
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          Positioned(
                                            top: 140,
                                            left: 10,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.star, size: 17, color: star,),
                                                      Icon(Icons.star, size: 17, color: star,),
                                                      Icon(Icons.star, size: 17, color: star,),
                                                      Icon(Icons.star, size: 17, color: star,),
                                                      Icon(Icons.star, size: 17, color: star,),
                                                    ],
                                                  ),
                                                  Text(
                                                    '${_users[index].review} Reviews',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11,
                                                    ),
                                                  )
                                                ],
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                            ),
                          ), //Best Guides
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                                'Top Experiences',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ), //Top Exp
                          SizedBox(height: 10,),
                          SizedBox(
                            height: 350,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Container(
                                        width: 203,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 203,
                                                  height: 259,
                                                  decoration: BoxDecoration(boxShadow: [
                                                    BoxShadow(
                                                        color:
                                                        Color.fromARGB(20, 0, 0, 0),
                                                        offset: Offset(0.0, 1.0),
                                                        blurRadius: 12,
                                                        spreadRadius: 0)
                                                  ]),
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(10)),
                                                    child: Image(
                                                      image: AssetImage(
                                                         _stories[index].image,
                                                      ),
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 16,
                                                  bottom: 10,
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: 70,
                                                        height: 70,
                                                        child: CircleAvatar(
                                                          backgroundColor: green1,
                                                          radius: 60,
                                                          child: CircleAvatar(
                                                            backgroundImage: AssetImage(
                                                              _users[index].avatar
                                                            ),
                                                            radius: 30,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 3,),
                                                      Container(
                                                        width: 93,
                                                        height: 23,
                                                        decoration: BoxDecoration(
                                                            color: Color.fromARGB(
                                                                255, 0, 206, 166),
                                                            borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    100))),
                                                        child: Center(
                                                          child: Text(
                                                            _users[index].name,
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                color: Colors.white),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 5,),
                                            SizedBox(
                                              width: 150,
                                              child: Text(
                                                _stories[index].title,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Row(
                                              children: [
                                                Icon(Icons.location_on_outlined, size: 18, color: green1,),
                                                SizedBox(width: 5,),
                                                Text(
                                                  _stories[index].location,
                                                  style: TextStyle(
                                                    color: green1,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                              ),
                            ),
                          ), //Top Exp
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Row(
                              children: [
                                Text(
                                  'Featured Tours',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(width: 140,),
                                Text(
                                  'SEE MORE',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: green1
                                  ),
                                ),
                              ],
                            ),
                          ), //Featured Tours
                          SizedBox(height: 10,),
                          SizedBox(
                            height: 810,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16, right: 16),
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: _featuredtours.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        width: 342,
                                        height: 250,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(10)),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromARGB(80, 0, 0, 0),
                                                  offset: Offset(0.8, 0),
                                                  blurRadius: 3,
                                                  spreadRadius: 0),
                                            ],
                                            color: Colors.white),
                                        child: Stack(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(10),
                                                      topRight: Radius.circular(10)),
                                                  child: Image(
                                                    image: AssetImage(_featuredtours[index].image),
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 10),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        _featuredtours[index].title,
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600
                                                        ),
                                                      ),
                                                      SizedBox(height: 5,),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.calendar_month_outlined, size: 14, color: grey,),
                                                          SizedBox(width: 7,),
                                                          Text(
                                                            _featuredtours[index].calendar,
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w400
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined, size: 14, color: grey,),
                                                          SizedBox(width: 7,),
                                                          Text(
                                                            _featuredtours[index].date,
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w400
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Positioned(
                                              bottom: 50,
                                              right: 15,
                                                child: IconButton(
                                                  onPressed: (){
                                                    setState(() {
                                                      click = !click;
                                                    });
                                                  },
                                                  icon: Icon(click ? Icons.favorite_border : Icons.favorite),
                                                  color: green1,
                                                )
                                            ),
                                            Positioned(
                                              bottom: 20,
                                              right: 15,
                                                child: Text(
                                                  '\$${_featuredtours[index].price}',
                                                  style: TextStyle(
                                                    color: green1,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                )
                                            ),
                                            Positioned(
                                              right: 10,
                                              top: 10,
                                                child: ImageIcon(
                                                  AssetImage('assets/favorite.png'),
                                                  size: 20,
                                                  color: Colors.white,
                                                )
                                            ),
                                            Positioned(
                                              top: 125,
                                              left: 10,
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.star, size: 17,color: star,),
                                                    Icon(Icons.star, size: 17,color: star,),
                                                    Icon(Icons.star, size: 17,color: star,),
                                                    Icon(Icons.star, size: 17,color: star,),
                                                    Icon(Icons.star, size: 17,color: star,),
                                                    SizedBox(width: 7,),
                                                    Text(
                                                      '${_featuredtours[index].liked} likes',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500
                                                      ),
                                                    )
                                                  ],
                                                )
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                              ),
                            ),
                          ), //Featured Tours
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 16,top: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Travel News',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(width: 140,),
                                Text(
                                  'SEE MORE',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: green1
                                  ),
                                ),
                              ],
                            ),
                          ), //Travel News
                          SizedBox(
                            height: 750,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16, right: 16),
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: _travelnews.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                                      child: Container(
                                        width: 342,
                                        height: 200,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              _travelnews[index].title,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            Text(
                                              _travelnews[index].calendar,
                                              style: TextStyle(
                                                color: grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            ClipRRect(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              child: Image(
                                                  image: AssetImage(_travelnews[index].image),
                                                fit: BoxFit.fitWidth,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                              ),
                            ),
                          ) //Travel News
                        ],
                      ),
                    ],
                  ),
                ],
              )
          ), // body
        ],
      )
    );
  }
}
