import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = '192.168.91.157';
  static String user = 'user';
  static String password = 'password';
  static String database = 'library_management_system';
  static int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
        host: host, port: port, user: user, password: password, db: database);
    return await MySqlConnection.connect(settings);
  }
}

void main() async {
  var mysql = Mysql();
  var conn = await mysql.getConnection();
  var results = await conn.query('select * from book');
  print(results);
  await conn.close();
}
