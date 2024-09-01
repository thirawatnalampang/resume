import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 183, 255),
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(255, 251, 255, 21),
            indicatorWeight: 3,
            isScrollable: true,
            tabs: [
              Tab(text: 'ข้อมูลส่วนตัวทั่วไป'),
              Tab(text: 'ติดต่อ'),
              Tab(text: 'ความสามารถในด้านต่าง ๆ'),
              Tab(text: 'การศึกษา และการฝึกอบรม รวมถึงประสบการณ์'),
              Tab(text: 'งานอดิเรกที่สนใจ'),
            ],
          ),
          title: const Text('My Resume'),
        ),
        body: TabBarView(
          children: [
            // ข้อมูลส่วนตัวทั่วไป
            ListView(
              children: [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text('นายถิรวัฒน์ ณ ลำปาง'),
                ),
                const ListTile(
                  leading: Icon(Icons.cake),
                  title: Text('23 มีนาคม 2547'),
                ),
                const ListTile(
                  leading: Icon(Icons.people),
                  title: Text('ชาย'),
                ),
                const SizedBox(height: 20), 
                Center(
                  child: Image.asset(
                    'images/profile.jpg', 
                    width: 500,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            // ติดต่อ
            ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('thirawatnalampang@gmail.com'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('0988405158'),
                ),
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text('kan_tae'),
                ),
                ListTile(
                  leading: Icon(Icons.facebook),
                  title: Text('thirawat nalampang'),
                ),
              ],
            ),
            // ความสามารถในด้านต่าง ๆ
            ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.language),
                  title: Text('English,Thai'),
                ),
                ListTile(
                  leading: Icon(Icons.code),
                  title: Text('ภาษา C'),
                ),
                ListTile(
                  leading: Icon(Icons.storage),
                  title: Text('SQL'),
                ),
                ListTile(
                  leading: Icon(Icons.dock),
                  title: Text('Docker '),
                ),
                ],
            ),
            // การศึกษา และการฝึกอบรม รวมถึงประสบการณ์
            ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Kasetsart university campus'),
                ),
                ListTile(
                  leading: Icon(Icons.lightbulb),
                  title: Text('เข้าร่วมกิจกรรม Huawei'),
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text('-'),
                ),
              ],
            ),
            // สิ่งที่สนใจ
            ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.sports_soccer),
                  title: Text('ฟุตบอล'),
                ),
                ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('ฟังเพลง'),
                ),
                ListTile(
                  leading: Icon(Icons.movie),
                  title: Text('ดูหนัง'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
