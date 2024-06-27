
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:wghsoga_app/constants.dart';

import '../../Components/keyboard_utils.dart';

class UpdateOption extends StatefulWidget {
  const UpdateOption({super.key});

  @override
  State<UpdateOption> createState() => _UpdateOptionState();
}

class _UpdateOptionState extends State<UpdateOption> {

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
            image: AssetImage('assets/images/wes_back.png'),
            fit: BoxFit.cover
          )
        ),
        child: SafeArea(

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: wesGreen,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 2,
                              offset: Offset(2, 4), // Shadow position
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: wesYellow,
                          ),
                        ),
                      ),
                    ),
                    Image(
                        height: 50,
                        image: AssetImage('assets/images/geyhey_logo.png'))
                  ],
                ),
              ),



              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Welcome', style: TextStyle(height:1, color: wesWhite, fontSize: 28, fontFamily: 'Montserrat'),),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Nyahan', style: TextStyle(height:1, color: wesWhite, fontSize: 62, fontFamily: 'Montserrat', fontWeight: FontWeight.w400),),

                          SizedBox(
                            height: 20,
                          ),
                          Text('Update your profile to tell us more about you or proceed to dashboard if you are in a hurry....', style: TextStyle(height:1, color: wesWhite, fontSize: 16, fontFamily: 'Montserrat'),),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),



                    Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.all(16),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: wesYellow,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text('Update My Profile', style: TextStyle(fontSize: 15, color: wesGreen),),
                      ),
                    ),
             SizedBox(
                      height: 20,
                    ),



                    Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.all(16),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: wesYellow,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text('Not now!\nAm in a hurry', textAlign: TextAlign.center, style: TextStyle(fontSize: 15, color: wesGreen),),
                      ),
                    ),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        SizedBox(
                          height: 30,
                        ),


                      ],
                    ),


                  ],
                ),
              ),




            ],
          ),
        ),
      )
    );
  }
}
