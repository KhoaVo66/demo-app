
import 'package:demo_app/controller/videoplayer.dart';
import 'package:demo_app/model/users.dart';
import 'package:demo_app/pages/nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class GuidePage extends StatelessWidget {

  const GuidePage({super.key, required this.users});
  static const Color grey1 = Color(0xffF5F5F5);
  static const Color grey = Color(0xff555555);
  static const Color green1 = Color(0xff00CEA6);
  static const Color star = Color(0xffFFC100);
  final User users;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
                child: Container(
                  height: 156,
                  child: Image(
                    image: AssetImage('assets/guide/guide.png'),
                    fit: BoxFit.fitWidth,
                  ),
                )
            ),
            Positioned(
              top: 30,
              left: 5,
                child: IconButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => NavScreen()
                    ));
                  },
                  icon: Icon(Icons.arrow_back_ios_new, size: 25, color: Colors.white,),
                )
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 16,
              top: 94,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(users.avatar),
                        ),
                        Text(
                          users.name,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, size: 13, color: star,),
                            Icon(Icons.star, size: 13, color: star,),
                            Icon(Icons.star, size: 13, color: star,),
                            Icon(Icons.star, size: 13, color: star,),
                            Icon(Icons.star, size: 13, color: star,),
                            SizedBox(width: 10,),
                            Text(
                              '${users.review} Reviews',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: grey,
                                fontSize: 14
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text(
                              'Vietnamese',
                              style: TextStyle(
                                color: grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                backgroundColor: grey1
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              'English',
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  backgroundColor: grey1
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              'Korean',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  backgroundColor: grey1
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, size: 18, color: green1,),
                            SizedBox(width: 5,),
                            Text(
                              users.address,
                              style: TextStyle(
                                color: green1,
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Positioned(
                      top: 74,
                      right: 16,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(Size.zero),
                            padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(16, 20, 16, 20)),
                            backgroundColor: MaterialStateProperty.all(green1),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ))
                          ),
                          onPressed: (){},
                          child: Text(
                            'CHOOSE THIS GUIDE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                    )
                  ],
                )
            ),
            Positioned(
              bottom: 0,
              right: 16,
              left: 16,
              top: 275,
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${lorem(paragraphs: 1, words: 40)}',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        SizedBox(height: 10,),
                        Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Positioned(
                                  child: Container(
                                      height: 193,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: Image(
                                          image: AssetImage(users.avatar),
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: 145,
                              top: 65,
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Color.fromARGB(130, 255, 255, 255),
                                  textColor: Colors.white,
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: green1,
                                    size: 50,
                                  ),
                                  padding: EdgeInsets.all(5),
                                  shape: CircleBorder(),
                                )
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 133,
                          child: Table(
                            border: TableBorder.all(color: Colors.grey.shade400, style: BorderStyle.solid),
                            columnWidths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(3)
                            },
                            children: [
                              TableRow(
                                  children: [
                                    Container(
                                      height: 44,
                                      child: Center(
                                        child: Text('1 - 3 Travelers'),
                                      ),
                                    ),
                                    Container(
                                      height: 44,
                                      child: Center(
                                        child: Text('\$10/ hour'),
                                      ),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Container(
                                      height: 44,
                                      child: Center(
                                        child: Text('4 - 6 Travelers'),
                                      ),
                                    ),
                                    Container(
                                      height: 44,
                                      child: Center(
                                        child: Text('\$14/ hour'),
                                      ),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Container(
                                      height: 44,
                                      child: Center(
                                        child: Text('7 - 9 Travelers'),
                                      ),
                                    ),
                                    Container(
                                      height: 44,
                                      child: Center(
                                        child: Text('\$17/ hour'),
                                      ),
                                    )
                                  ]
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                            'My Experiences',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
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
                          width: MediaQuery.of(context).size.width,
                          height: 282,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 178,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10)
                                      ),
                                      child: Image(
                                        image: AssetImage('assets/location/hoian.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 175,
                                        height: 90,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10)
                                          ),
                                          child: Image(
                                            image: AssetImage('assets/location/hoian.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 3,),
                                      Container(
                                        width: 175,
                                        height: 85,
                                        child: Image(
                                          image: AssetImage('assets/location/hoian.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Text(
                                        '2 Hour Bicycle Tour exploring Hoian',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined, size: 20, color: green1,),
                                        Text(
                                          'Hoian, Vietnam',
                                          style: TextStyle(
                                            color: green1,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 3),
                                          child: Text(
                                            'Jan 25, 2020',
                                            style: TextStyle(
                                              color: grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.favorite_border, color: green1, size: 20,),
                                            SizedBox(width: 5,),
                                            Text(
                                              '1234 Likes',
                                              style: TextStyle(
                                                color: grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
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
                          width: MediaQuery.of(context).size.width,
                          height: 282,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 178,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10)
                                      ),
                                      child: Image(
                                        image: AssetImage('assets/location/image3.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 175,
                                        height: 90,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10)
                                          ),
                                          child: Image(
                                            image: AssetImage('assets/location/hoian1.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 3,),
                                      Container(
                                        width: 175,
                                        height: 85,
                                        child: Image(
                                          image: AssetImage('assets/location/hoian.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Text(
                                        'Food tour in Danang',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined, size: 20, color: green1,),
                                        Text(
                                          'Danang, Vietnam',
                                          style: TextStyle(
                                              color: green1,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 3),
                                          child: Text(
                                            'Jan 20, 2020',
                                            style: TextStyle(
                                                color: grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.favorite_border, color: green1, size: 20,),
                                            SizedBox(width: 5,),
                                            Text(
                                              '234 Likes',
                                              style: TextStyle(
                                                  color: grey,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Reviews',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                              ),
                            ),
                            Text(
                              'SEE MORE',
                              style: TextStyle(
                                color: green1,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                            'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1213.jpg',
                                          ),
                                          radius: 25,
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Kellie Koch',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                SizedBox(width: 15,),
                                                Text(
                                                  'Jan 22, 2020',
                                                  style: TextStyle(
                                                      color: grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                        lorem(paragraphs: 1, words: 50)
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                            'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/406.jpg',
                                          ),
                                          radius: 25,
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Lauren Wunsch',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                SizedBox(width: 15,),
                                                Text(
                                                  'Jan 22, 2020',
                                                  style: TextStyle(
                                                      color: grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                        lorem(paragraphs: 1, words: 50)
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                            'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/447.jpg',
                                          ),
                                          radius: 25,
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Maria Weissnat',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                Icon(Icons.star, size: 12, color: star,),
                                                SizedBox(width: 15,),
                                                Text(
                                                  'Jan 22, 2020',
                                                  style: TextStyle(
                                                      color: grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                        lorem(paragraphs: 1, words: 50)
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
