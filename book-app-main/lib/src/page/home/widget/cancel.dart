import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CancelWidget extends StatefulWidget {
  const CancelWidget({Key? key}) : super(key: key);

  @override
  _CancelWidgetState createState() => _CancelWidgetState();
}

class _CancelWidgetState extends State<CancelWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFA49CF1),
        automaticallyImplyLeading: false,
        title: Text(
          'Cancel Subscription',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Text(
                        'เมื่อทำการยกเลิกแล้วอายุสมาชิกที่ยังคงเหลือยังสามารถใช้งานได้ถึงวันสุดท้ายของการเป็นสมาชิก จะไม่มีการตัดบัตรการต่ออายุสมาชิก',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
              child: TextButton(
                onPressed: () async {
                  print('IconButton pressed ...');
                },
                child: Text(
                  'ยืนยันการยกเลิก',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Text(
                'เอาไว้ก่อน',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
