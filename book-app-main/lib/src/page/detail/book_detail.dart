import 'package:flutter/material.dart';

class BookDetailWidget extends StatefulWidget {
  const BookDetailWidget({Key? key}) : super(key: key);

  @override
  _BookDetailWidgetState createState() => _BookDetailWidgetState();
}

class _BookDetailWidgetState extends State<BookDetailWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.pink[100],
      body: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 45, 16, 8),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 300, 0),
                            child: GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[900],
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Text(
                            'THE MAGIC SHOP\nเราทุกคนล้วนมีเวทมนตร์อยู่ในใจ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Prompt',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Image.network(
                            'https://storage.naiin.com/system/application/bookstore/resource/product/201907/482105/1000220914_front_XXL.jpg?imgname=INTO-THE-MAGIC-SHOP-%E0%B9%80%E0%B8%A3%E0%B8%B2%E0%B8%97%E0%B8%B8%E0%B8%81%E0%B8%84%E0%B8%99%E0%B8%A5%E0%B9%89%E0%B8%A7%E0%B8%99%E0%B8%A1%E0%B8%B5%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B9%80%E0%B8%A7%E0%B8%97%E0%B8%A1%E0%B8%99%E0%B8%95%E0%B8%A3%E0%B9%8C%E0%B8%AD%E0%B8%A2%E0%B8%B9%E0%B9%88%E0%B9%83%E0%B8%99%E0%B9%83%E0%B8%88',
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'เล่าถึงความทรงจำของผู้เขียนผ่านตัวละคร จิม โดตี เด็กชายวัย 12 ขวบ ที่มีพ่อเป็นผู้ติดสุราเรื้อรัง แม่ที่พยายามฆ่าตัวตายทุกครั้งที่มีโอกาส และพี่ชายที่มักหนีออกจากบ้านอยู่บ่อยครั้ง บันทึกความทรงจำของเด็กชายเริ่มขึ้นในวันที่เขาออกเดินทางไปซื้อปลอกนิ้วมายากลและบังเอิญพบกับ รูธ หญิงชราร้านขายของมายากลที่เสนอสอนกลบางอย่างซึ่งไม่สามารถหาซื้อได้ตามร้านขายของมายากลทั่วไป และเป็นกลที่สามารถเสกสิ่งที่ต้องการให้เกิดขึ้นจริงได้ โดยใช้เพียงสิ่งเดียว นั่นก็คือ “จิต” แต่มีข้อแม้ว่าจิมจะต้องฝึกฝนกลต่าง ๆ อย่างสม่ำเสมอ และมาหารูธทุกวันตลอด 6 สัปดาห์ที่เธออยู่ที่เมืองแห่งนี้\n\nจิมไม่รู้ด้วยซ้ำว่ากลที่รูธจะสอนคือกลอะไร ไม่รู้ว่าจะเรียนได้สำเร็จหรือไม่ แต่สิ่งเดียวที่จิมรู้นั่นก็คือ ณ ตอนนั้นเขาไม่มีอะไรจะเสียอีกแล้ว ทั้งครอบครัว การเรียน เงินทอง หรือแม้แต่อนาคต กลของหญิงชราผู้นี้จึงเปรียบเสมือนแสงแห่งความหวังที่ส่องเข้ามาในชีวิตที่มืดมิดของเด็กชายตัวเล็ก จิมตอบตกลงโดยที่เขาไม่อาจรู้เลยว่าคำตอบนั้นจะเปลี่ยนชะตาชีวิตของเขาไปอย่างสิ้นเชิง',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                height: 1.2),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(60, 5, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE6E6E6),
                                    border: Border.all(
                                      color: Color(0xFFE491FF),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 0),
                                        child: Text(
                                          'LOCATION',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        color: Color(0xFFE491FF),
                                      ),
                                      Text(
                                        'จิตวิทยา ชั้น1',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE6E6E6),
                                    border: Border.all(
                                      color: Color(0xFFE491FF),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 0),
                                        child: Text(
                                          'STATUS',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        color: Color(0xFFE491FF),
                                      ),
                                      Text(
                                        'Look on shelf',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'ผู้แต่ง',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
                                child: Text(
                                  'JAMESR.DOTY M.D.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'ผู้แปล',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
                                child: Text(
                                  'นพ. นที สาครยุทธเดช',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'สำนักพิมพ์',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                                child: Text(
                                  'บริษัทอมรินทร์ บุ๊ค เซ็นเตอร์ จำกัด',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'พิมพ์ครั้งที่',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'ISBN',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
                                child: Text(
                                  '9786161830342',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(80, 30, 0, 0),
                              child: TextButton(
                                onPressed: () async {
                                  print('Button pressed ...');
                                },
                                child: Text(
                                  'UPDATE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.deepOrange[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 12),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 30, 0, 0),
                              child: TextButton(
                                onPressed: () async {
                                  print('Button pressed ...');
                                },
                                child: Text(
                                  'DELETE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
