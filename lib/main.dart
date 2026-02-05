import 'package:flutter/material.dart';

// 1. Import ไฟล์หน้าหลักของเพื่อนแต่ละคน 
// (ตรวจสอบชื่อไฟล์ใน GitHub ให้ตรงกับตรงนี้นะครับ)
import 'mm1.dart' as m1;
import 'mm2.dart' as m2;
import 'mm3.dart' as m3; // คอมเมนต์ไว้ก่อนถ้าเพื่อนคนที่ 3 ยังไม่อัปโหลดไฟล์

void main() {
  runApp(const MaterialApp(
    home: TeamMenu(),
    debugShowCheckedModeBanner: false,
  ));
}

class TeamMenu extends StatelessWidget {
  const TeamMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('มหาราชันมารร้าย'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'เลือกดูผลงานสมาชิก',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            
            // ปุ่มงานคนที่ 1
            ElevatedButton(
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => m1.MyHomePage(title: 'งานของคนที่ 1')) // ลบ const ออกแล้ว
              ),
              child: const Text('งานของสมาชิกคนที่ 1 อรรถวุฒิ จันหลง'),
            ),
            const SizedBox(height: 15),

            // ปุ่มงานคนที่ 2
            ElevatedButton(
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => m2.MyHomePage(title: 'งานของคนที่ 2')) // ลบ const ออกแล้ว
              ),
              child: const Text('งานของสมาชิกคนที่ 2 อนุภัทร อุดหมอ'),
            ),
            
            //ปลดคอมเมนต์เมื่อเพื่อนคนที่ 3 อัปโหลดไฟล์แล้ว
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => m3.MyHomePage(title: 'งานของคนที่ 3'))
              ),
              child: const Text('งานของสมาชิกคนที่ 3 วรากร คำดี'),
            ),
            
          ],
        ),
      ),
    );
  }
}