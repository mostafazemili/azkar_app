import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text("تطبيق مسبحتي"),
        flexibleSpace: Container(
          decoration:const  BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.greenAccent], // استخدم الأزرق والأخضر الفاتح هنا
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue, Colors.greenAccent], // استخدم الأزرق والأخضر الفاتح هنا
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40), // ترك مساحة فارغة بين النصوص
              Text(
                "تطبيق مسبحة الأذكار هو تطبيق إلكتروني مبتكر يهدف إلى تعزيز وتسهيل تواصلك الدائم مع الله من خلال تيسير عملية التسبيح والأذكار.",
                style: GoogleFonts.arefRuqaa(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 200),

              Container(
                alignment: Alignment.bottomCenter,
                color: Colors.greenAccent,
                padding: const EdgeInsets.all(8),
                child:
                const  Text(
                  "Developed by the programmer, Mustafa Kh. Zemili",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,

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
