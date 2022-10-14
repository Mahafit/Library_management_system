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
      backgroundColor: Color(0xFFF4CAFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFB7CFF),
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //height: 100,
            //เว้นวรรค
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://picsum.photos/seed/100/600',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //buttonwidget -ฬ
                  TextButton(
                    onPressed: () async {
                      print('button pressed ...');
                    },
                    child: Text(
                      'Change Photo',
                      style: TextStyle(
                        color: Color(0xFFFB7CFF),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.85, 0),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
              child: TextFormField(
                controller: textController1,
                obscureText: false,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                  hintText: 'Your First name',
                  hintStyle: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  filled: true,
                  fillColor: Color(0xFFDBE2E7),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                ),
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.85, 0),
              child: Text(
                'Last name',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
              child: TextFormField(
                controller: textController2,
                obscureText: false,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                  hintText: 'Your last name',
                  hintStyle: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  filled: true,
                  fillColor: Color(0xFFDBE2E7),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                ),
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.85, 0),
              child: Text(
                'phone number',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: TextFormField(
                        controller: textController3,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Lastname',
                          labelStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                          hintText: 'Your full name...',
                          hintStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0082FF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0082FF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          filled: true,
                          fillColor:
                              Color(0xFFDBE2E7).withOpacity(0.5000000000000001),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                        ),
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.05),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child: TextButton(
                      onPressed: () async {},
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          color: Color(0xFF0082FF),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0x00000000),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFF0082FF),
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.05),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
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
                    'Submit',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF0082FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
