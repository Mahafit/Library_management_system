import 'package:book_app/src/page/home/home.dart';
import 'package:book_app/src/page/home/homeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF9e76b4),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 24,
          ),
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Poppins',
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            mainAxisSize: MainAxisSize.max,
            children: [
              //height: 100,
              //เว้นวรรค
              SizedBox(

                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/book1.jpg',
                      ).image,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //buttonwidget
                    TextButton(
                      onPressed: () async {
                        print('button pressed ...');
                      },
                      child: Text(
                        'Change Photo',
                        style: TextStyle(
                          color: Color(0xFF9e76b4),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                alignment: Alignment.centerLeft ,
                child: Text(
                  'First Name',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 16),
                child: TextFormField(
                  controller: textController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Color(0xFFDBE2E7),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                    hintText: 'First name',
                    hintStyle: TextStyle(
                      color: Color(0xFF95A1AC),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Color(0xFFDBE2E7),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                  ),
                  style: TextStyle(
                    color: Color(0xFFDBE2E7),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                alignment: Alignment.centerLeft ,
                child: Text(
                  'Last name',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 16),
                child: TextFormField(
                  controller: textController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Color(0xFFDBE2E7),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                    hintText: 'last name',
                    hintStyle: TextStyle(
                      color: Color(0xFF95A1AC),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Color(0xFFDBE2E7),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                  ),
                  style: TextStyle(
                    color: Color(0xFFDBE2E7),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: Text(
                  'phone number',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                        child: TextFormField(
                          controller: textController3,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'phone',
                            labelStyle: TextStyle(
                              color: Color(0xFF95A1AC),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                            ),
                            hintText: 'Your phone number',
                            hintStyle: TextStyle(
                              color: Color(0xFF95A1AC),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF9e76b4),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Color(0xFFDBE2E7),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                          ),
                          style: TextStyle(
                            //Color(0xFF9e76b4)
                            color: Color(0xFFDBE2E7),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ),
                 Container(
                    alignment: Alignment.centerLeft,
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                      child: TextButton(
                        onPressed: () async {},
                        child: Text(
                          'Verify',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF9e76b4),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xFF9e76b4),
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                        ),
                      ),

                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: TextButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                    child: Text(
                      ' Submit ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF9e76b4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
