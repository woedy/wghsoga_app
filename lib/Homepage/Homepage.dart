
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:wghsoga_app/constants.dart';

import '../../Components/keyboard_utils.dart';
import '../Components/stoke_text.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {

  final _formKey = GlobalKey<FormState>();


  List<FocusNode>? _focusNodes;

  TextEditingController controller = TextEditingController(text: "");
  bool hasError = false;
  String email_token = "";




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wes_back2.png'),
            fit: BoxFit.cover
          )
        ),
        child: SafeArea(

          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning..', style: TextStyle(height: 1, color: wesWhite, fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Nyahan', style: TextStyle(height: 1, color: wesWhite, fontSize: 36, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.search, size: 30, color: wesYellow,),
                        SizedBox(
                          width: 10,
                        ),
                        Stack(
                          children: [
                            Icon(Icons.notifications_active_outlined, size: 30, color: wesYellow,),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: CircleAvatar(
                                backgroundColor: wesYellow,
                                radius: 5,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                        color: wesYellow,
                                        borderRadius: BorderRadius.circular(500),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.2),
                                            blurRadius: 2,
                                            offset: Offset(2, 4), // Shadow position
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/nyahan.png'),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(500),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.2),
                                              blurRadius: 2,
                                              offset: Offset(2, 4), // Shadow position
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),

              Expanded(child: Container(
                child: ListView(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: wesWhite.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('05 Year Group', style: TextStyle(height: 1, color: wesYellow, fontSize: 16, fontFamily: 'Montserrat', fontWeight: FontWeight.w500),),
                              Text('View All', style: TextStyle(height: 1, color: wesWhite, fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          Container(
                            height: 100,
                            //color: Colors.red,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 20,
                              itemBuilder: (context, index){
                               return  Row(
                                 children: [
                                   Column(
                                     children: [
                                       Stack(
                                         children: [
                                           Container(
                                             height: 75,
                                             width: 75,
                                             decoration: BoxDecoration(
                                               color: wesYellow,
                                               borderRadius: BorderRadius.circular(20),
                                               boxShadow: [
                                                 BoxShadow(
                                                   color: Colors.black.withOpacity(0.2),
                                                   blurRadius: 2,
                                                   offset: Offset(2, 4), // Shadow position
                                                 ),
                                               ],
                                             ),
                                           ),
                                           Positioned(
                                             top: 0,
                                             left: 1,
                                             right: 1,
                                             child: Container(
                                               height: 71,
                                               width: 71,
                                               decoration: BoxDecoration(
                                                 color: Colors.white,
                                                 image: DecorationImage(
                                                   image: AssetImage('assets/images/nyahan.png'),
                                                   fit: BoxFit.cover,
                                                 ),
                                                 borderRadius: BorderRadius.circular(20),
                                                 boxShadow: [
                                                   BoxShadow(
                                                     color: Colors.black.withOpacity(0.2),
                                                     blurRadius: 2,
                                                     offset: Offset(2, 4), // Shadow position
                                                   ),
                                                 ],
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                                       SizedBox(
                                         height: 7,
                                       ),
                                       Text('Sandra', style: TextStyle(height: 1, color: wesWhite, fontSize: 14, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),

                                     ],
                                   ),
                                   SizedBox(
                                     width: 10,
                                   ),

                                 ],
                               );
                              },
                            ),
                          )

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: wesWhite.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Latest Events', style: TextStyle(height: 1, color: wesYellow, fontSize: 16, fontFamily: 'Montserrat', fontWeight: FontWeight.w500),),
                              Text('View All', style: TextStyle(height: 1, color: wesWhite, fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          Container(
                            height: 180,
                            //color: Colors.red,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 20,
                              itemBuilder: (context, index){
                                return  Row(
                                  children: [
                                    Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height: 120,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                color: wesYellow,
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.2),
                                                    blurRadius: 2,
                                                    offset: Offset(2, 4), // Shadow position
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              top: 0,
                                              left: 1,
                                              right: 1,
                                              child: Container(
                                                height: 117,
                                                width: 170,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/images/nyahan.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius: BorderRadius.circular(20),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.2),
                                                      blurRadius: 2,
                                                      offset: Offset(2, 4), // Shadow position
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              right: 0,
                                              top: 10,

                                              child: Column(
                                                children: [
                                                  StrokedText(
                                                    text: '25',
                                                    strokeWidth: 5.0,
                                                    strokeColor: wesGreen,
                                                    textColor: wesYellow,
                                                    fontSize: 48.0,
                                                  ),
                                                  StrokedText(
                                                    text: 'September',
                                                    strokeWidth: 5.0,
                                                    strokeColor: wesGreen,
                                                    textColor: wesWhite,
                                                    fontSize: 20.0,
                                                  ),
                                                  StrokedText(
                                                    text: '2024',
                                                    strokeWidth: 5.0,
                                                    strokeColor: wesGreen,
                                                    textColor: wesWhite,
                                                    fontSize: 20.0,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Container(
                                            width: 180,

                                            child: Text('Speech & Prize Giving Day terte etertert', style: TextStyle(height: 1, color: wesWhite, fontSize: 14, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),)),

                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),

                                  ],
                                );
                              },
                            ),
                          )

                        ],
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: wesWhite.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Latest News', style: TextStyle(height: 1, color: wesYellow, fontSize: 16, fontFamily: 'Montserrat', fontWeight: FontWeight.w500),),
                              Text('View All', style: TextStyle(height: 1, color: wesWhite, fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          Container(
                            height: 230,
                            //color: Colors.red,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 20,
                              itemBuilder: (context, index){
                                return  Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height: 180,
                                              width: 240,
                                              decoration: BoxDecoration(
                                                color: wesYellow,
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.2),
                                                    blurRadius: 2,
                                                    offset: Offset(2, 4), // Shadow position
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              top: 0,
                                              left: 1,
                                              right: 1,
                                              child: Container(
                                                height: 180,
                                                width: 240,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/images/nyahan.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius: BorderRadius.circular(20),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.2),
                                                      blurRadius: 2,
                                                      offset: Offset(2, 4), // Shadow position
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            width: 180,

                                            child: Column(
                                              children: [
                                                Text('Rotary District 9102 Calling', style: TextStyle(height: 1, color: wesWhite, fontSize: 14, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text('For your Attention Dear Sisters. P....', style: TextStyle(height: 1, color: Colors.grey, fontSize: 10, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),
                                              ],
                                            )),

                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),

                                  ],
                                );
                              },
                            ),
                          )

                        ],
                      ),
                    ),



                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: wesWhite.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Projects', style: TextStyle(height: 1, color: wesYellow, fontSize: 16, fontFamily: 'Montserrat', fontWeight: FontWeight.w500),),
                              Text('View All', style: TextStyle(height: 1, color: wesWhite, fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          Container(
                            height: 260,
                            //color: Colors.red,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 20,
                              itemBuilder: (context, index){
                                return  Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height: 200,
                                              width: 330,
                                              decoration: BoxDecoration(
                                                color: wesYellow,
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black.withOpacity(0.2),
                                                    blurRadius: 2,
                                                    offset: Offset(2, 4), // Shadow position
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              top: 0,
                                              left: 1,
                                              right: 1,
                                              child: Container(
                                                height: 200,
                                                width: 330,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/images/nyahan.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius: BorderRadius.circular(20),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.2),
                                                      blurRadius: 2,
                                                      offset: Offset(2, 4), // Shadow position
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            width: 180,

                                            child: Column(
                                              children: [
                                                Text('Rotary District 9102 Calling', style: TextStyle(height: 1, color: wesYellow, fontSize: 14, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text('For your Attention Dear Sisters. P....', style: TextStyle(height: 1, color: wesWhite, fontSize: 10, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),
                                              ],
                                            )),

                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),

                                  ],
                                );
                              },
                            ),
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              )),

              Container(
                padding: EdgeInsets.symmetric(vertical: 15),

                decoration: BoxDecoration(
                  color: wesGreen,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        /*      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DashboardScreen()));
                      */  },
                      child: Column(
                        children: [
                          Icon(Icons.home, color: wesYellow,),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Home', style: TextStyle(height: 1, color: wesYellow, fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),

                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                      //  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => UserBookings()));
                      },
                      child: Column(
                        children: [
                          Icon(Icons.shopping_cart, color: wesYellow,),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Shop', style: TextStyle(height: 1, color: wesYellow, fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),

                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                       // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AllShopsScreen()));


                      },
                      child: Column(
                        children: [
                          Icon(Icons.money, color: wesYellow,),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Pay Dues', style: TextStyle(height: 1, color: wesYellow, fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),

                        ],
                      ),
                    ),

                    InkWell(
                      onTap: (){

                     //   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ChatScreen()));

                      },
                      child: Column(
                        children: [
                          Icon(Icons.settings, color: wesYellow,),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Settings', style: TextStyle(height: 1, color: wesYellow, fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),


                        ],
                      ),
                    ),

                    InkWell(
                      onTap: (){

                        //Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => UserProfile()));

                      },
                      child: Column(
                        children: [

                          Icon(Icons.account_circle, color: wesYellow,),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Settings', style: TextStyle(height: 1, color: wesYellow, fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w300),),

                        ],
                      ),
                    ),


                  ],
                ),
              )

            ],
          ),
        ),
      )
    );
  }

}

