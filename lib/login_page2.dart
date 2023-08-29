import 'package:flutter/material.dart';

class Login2 extends StatelessWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFFE4E5E8),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                color: Color(0xFF7E7FEB),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100, right: 185, left: 185),
            height: MediaQuery.of(context).size.height / 7.5,
            width: MediaQuery.of(context).size.width / 4.5,
            decoration: BoxDecoration(
                color: const Color(0xFFFEFEFE),
                borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 11.5,
            width: MediaQuery.of(context).size.height / 8.5,
            margin: const EdgeInsets.only(top: 120, right: 200, left: 197.5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF8081EB),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 150,
              top: 212,
              left: 190,
            ),
            child: Text("APP  ICON",
                style: TextStyle(
                  color: Color(0xFFE3E6FF),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                )),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width / 1.3,
            margin: const EdgeInsets.only(top: 280, left: 55, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFFEFEFE),
            ),
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 40.0),
                 child: Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   const Text("Welcome To App Name",style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xFF2E2E2E),fontSize: 19),),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Text("Choose Sign up or Log in Method",style: TextStyle(fontWeight: FontWeight.w300,color: Color(0xFF2E2E2E),fontSize: 16.5),),
                   ],
                 ),
               ),
               Container(
                 height:  MediaQuery.of(context).size.height / 17,
                 width:  MediaQuery.of(context).size.width / 1.5,
                 margin: const EdgeInsets.only(top: 40),
                 alignment: Alignment.center,
                 decoration: BoxDecoration(color: const Color(0xFF7E7FEB),
                 borderRadius: BorderRadius.circular(7)),
                 child: const Text("Sign In",style: TextStyle(color: Color(0xFFFEFEFE),fontWeight: FontWeight.w500,fontSize: 18)),
               ),
               Container(
                 height:  MediaQuery.of(context).size.height / 17,
                 width:  MediaQuery.of(context).size.width / 1.5,
                 margin: const EdgeInsets.only(bottom:40,top: 25),
                 alignment: Alignment.center,
                 decoration: BoxDecoration(color: const Color(0xFFFEFEFE),
                     borderRadius: BorderRadius.circular(7),
                 border: Border.all(color: const Color(0xFF7E7FEB),width: 1.5)),
                 child: const Text("Sign Up",style: TextStyle(color: Color(0xFF7E7FEB),fontWeight: FontWeight.w500,fontSize: 18)),
               ),
               
               Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Text("Or",style: TextStyle(fontWeight: FontWeight.w300,color: Color(0xFF2E2E2E),fontSize: 17),),
                   ],
                 ),
               ),

               Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 5,right: 5),
                     child: Card(
                       color: const Color(0xFF6684B2),
                       margin: const EdgeInsets.only(bottom:40,top: 25 ),
                       child: SizedBox(
                         height: MediaQuery.of(context).size.height /15 ,
                         width:MediaQuery.of(context).size.width /8.5 ,
                         child:const Center(child: Text("f",style: TextStyle(color: Color(0xFFFEFEFE),fontSize: 32))) ,
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 5,right: 5),
                     child: Card(
                       color: const Color(0xFF36E0F9),
                       margin: const EdgeInsets.only(bottom:40,top: 25 ),
                       child: SizedBox(
                         height: MediaQuery.of(context).size.height /15 ,
                         width:MediaQuery.of(context).size.width /8.5 ,
                         child:const Center(child: Text("t",style: TextStyle(color: Color(0xFFFEFEFE),fontSize: 32))) ,
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 5,right: 5),
                     child: Card(
                       color: const Color(0xFFFD6B52),
                       margin: const EdgeInsets.only(bottom:40,top: 25 ),
                       child: SizedBox(
                         height: MediaQuery.of(context).size.height /15 ,
                         width:MediaQuery.of(context).size.width /8.5 ,
                         child:const Padding(
                           padding: EdgeInsets.only(bottom: 10.0),
                           child: Center(child: Text("g",style: TextStyle(color: Color(0xFFFEFEFE),fontSize: 30))),
                         ) ,
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Card(
                       color: const Color(0xFF797B7A),
                       margin: const EdgeInsets.only(bottom:40,top: 25 ),
                       child: SizedBox(
                         height: MediaQuery.of(context).size.height /15 ,
                         width:MediaQuery.of(context).size.width /8.5 ,
                         child:const Center(child:  Icon(Icons.mobile_screen_share_sharp,color: Color(0xFFFEFEFE),size: 30),) ,
                       ),
                     ),
                   ),
                 ],
               )
             ],
           ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 120,
              top: 740,
              left: 220,
            ),
            child: Text("Skip",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                )),
          ),
        ],
      ),
    );
  }
}
