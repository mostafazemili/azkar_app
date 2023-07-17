

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter=0;
  String _content="استغفر الله";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:AppBar(
        //توسيط عنوان الصفحة الرئيسية
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        // automaticallyImplyLeading: false,
        title:  Text("مسبحة الأذكار", style: GoogleFonts.arefRuqaa(
          color: Colors.black,fontSize: 30,
        ),),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/info_screen');
          }, icon: const Icon(Icons.info)),
          PopupMenuButton<String>(
            onSelected: (String value){
              if(_content!= value){
                setState(() {
                  _content =value;
                  _counter=0;
                });
              }
            },
              elevation: 5,
              offset: Offset(2,35),
              itemBuilder: (context) {
            return [
              PopupMenuItem(height: 15,value: "استغفر الله",child: Text("استغفر الله ", style: GoogleFonts.arefRuqaa(fontWeight:FontWeight.bold),),),
              PopupMenuDivider(),
              PopupMenuItem(height: 15,value: "الحمد لله",child: Text("الحمد لله ", style: GoogleFonts.arefRuqaa(fontWeight:FontWeight.bold),),),
              PopupMenuDivider(),
              PopupMenuItem(height: 15,value: "الله اكبر",child: Text("الله اكبر ", style: GoogleFonts.arefRuqaa(fontWeight:FontWeight.bold),),),
              PopupMenuDivider(),
              PopupMenuItem(height: 15,value: "سبحان الله ",child: Text("سبحان الله ", style: GoogleFonts.arefRuqaa(fontWeight:FontWeight.bold),),),
              PopupMenuDivider(),
              PopupMenuItem(height: 15,value: "لا اله الا الله ",child: Text("لا اله الا الله ", style: GoogleFonts.arefRuqaa(fontWeight:FontWeight.bold),),),
            ];
          }
          ),

        ],
      ),
      body: Container(
        decoration:const  BoxDecoration(
          gradient: LinearGradient (
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.greenAccent,
              Colors.lightBlue,
            ],
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image:  NetworkImage('https://m.media-amazon.com/images/I/41140kXQ2lL._AC_UF1000,1000_QL80_.jpg'),
                ),
                color: Colors.lightBlueAccent,
                boxShadow: const [
                  BoxShadow(
                  color:Colors.black87,
                    blurRadius: 6,
                    offset: Offset(0,6)
                  ),
                ],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(40)
              ),

            ),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 60,
              margin: const  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),


              ),
              child:Row(
                children: [
                  Expanded(
                    child: Text(_content,style: GoogleFonts.arefRuqaa(
                      fontWeight:FontWeight.w700,
                      fontSize: 25,
                      fontStyle: FontStyle.italic,

                    ),
                    textAlign: TextAlign.center,),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                  height: 60,
                  width: 50,
                  child:
                  Expanded(
                    child: Text(_counter.toString() ,style: GoogleFonts.arefRuqaa(
                    fontWeight:FontWeight.w700,
                      fontSize: 25,
                      fontStyle: FontStyle.italic,),),
                  ),)

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25),
              child: Row(
                children: [

                Expanded(
                  flex: 2,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      ++_counter;

                    });
                  },style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10)
                      )
                    )
                  ) ,
                    child: Text("تسبيح ", style: GoogleFonts.arefRuqaa(
                    color:Colors.black87,

                  ),
                  ),),
                ),
                Expanded(
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        _counter=0;
                      });
                    },style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreenAccent.shade700 ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10)
                            )
                        )

                    ) , child: Text("اعادة ", style: GoogleFonts.arefRuqaa(
                      color:Colors.black87,

                    ),
                    ),),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "tap to add ",
        backgroundColor: Colors.greenAccent,
        onPressed: (){
          setState(() {
            ++_counter;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
