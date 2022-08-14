import 'package:barcode/barcode.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:beauty_pariour2/screens/loginFirstScreen/loginFirstScreen_bloc.dart';
import 'package:beauty_pariour2/screens/loginFirstScreen/login_contact_view.dart';
import 'package:beauty_pariour2/screens/loginFirstScreen/widgets/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginFirstStepScreen extends StatefulWidget {
   const LoginFirstStepScreen({Key? key}) : super(key: key);

  @override
  State<LoginFirstStepScreen> createState() => _LoginFirstStepScreenState();
}

class _LoginFirstStepScreenState extends State<LoginFirstStepScreen> {
final bloc = LoginFirstScreenBloc();

  @override
  void initState() {
    super.initState();
    print(" page is called");
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(body:Column(children: [ 
          SearchView(bloc: bloc),
          ContactView(bloc: bloc),
        ],),
     );
    
    //return CupertinoPageScaffold(
    //   backgroundColor:const Color(0xffF8FAE4),
    //   navigationBar: const CupertinoNavigationBar(
    //     backgroundColor: Color(0xffBEDCFA),
    //     middle: Text("Cosmetics"),
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.all(12),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //       Expanded(
    //         child: GridView.count(
    //                 crossAxisCount: 2 ,
    //                 children: List.generate(120,(index){
           
    //         return const Card(
    //               color: Color(0xffECFCFF),
    //         );
    //                 }),
    //               ),
    //       )
    //       ],
    //         ),
    //         ),
      // body: Padding(
      //   padding: const EdgeInsets.only(top: 80.0),
      //   child: Column(
      //     children: [
      //       ClipRRect(
      //         borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      //         child: Padding(
      //           padding: const EdgeInsets.all(15.0),
      //           child: ClipRRect(
      //             borderRadius: BorderRadius.circular(10),
      //             child: Container(
      //               height: 80,
      //              width: double.maxFinite,
      //               padding: const EdgeInsets.all(16.0),
      //               decoration: const BoxDecoration(
      //                 color: Color(0xffF6EBEC),
      //                 border: Border(
      //                   bottom: BorderSide(
      //                       width: 8.0,
      //                       color: Color.fromARGB(255, 162, 73, 156)),
      //                 ),
      //               ),
      //               child: BarcodeWidget(
      //                 barcode: Barcode.qrCode(),
      //                 data: 'Hello Flutter',
      //                 errorBuilder: (context, error) =>
      //                     Center(child: Text(error)),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 12,
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Container(
      //               height: 100,
      //               width: 50,
      //               decoration: const BoxDecoration(
      //                 color: Color(0xffFF7BA9),
      //                 border: Border(
      //                   bottom: BorderSide(
      //                       width: 8.0,
      //                       color: Color.fromARGB(255, 162, 73, 156)),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           ClipRRect(
      //             borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      //             child: Padding(
      //               padding: const EdgeInsets.all(12.0),
      //               child: ClipRRect(
      //                 borderRadius: BorderRadius.circular(10),
      //                 child: Container(
      //                   height: 120,
      //                   width: 200,
      //                   padding: const EdgeInsets.all(16.0),
      //                   decoration: const BoxDecoration(
      //                     color: Color(0xFFFF7BA9),
      //                     border: Border(
      //                       bottom: BorderSide(
      //                         width: 8.0,
      //                         color: Color.fromARGB(255, 247, 190, 213),
      //                       ),
      //                     ),
      //                   ),
      //                   child: Row(
      //                       crossAxisAlignment: CrossAxisAlignment.center,
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         const CircleAvatar(
      //                           backgroundColor:
      //                               Color.fromARGB(255, 230, 187, 217),
      //                           child: Icon(Icons.check_rounded,
      //                               color: Color(0xFFFF7BA9), size: 40),
      //                         ),
      //                         const SizedBox(width: 15),
      //                         Column(
      //                             mainAxisAlignment: MainAxisAlignment.center,
      //                             crossAxisAlignment: CrossAxisAlignment.start,
      //                             children: const [
      //                               Text("Valid",
      //                                   style: TextStyle(
      //                                       color: Color.fromARGB(
      //                                           255, 227, 51, 122),
      //                                       fontSize: 18)),
      //                               Text("Document ")
      //                             ])
      //                       ]),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
   // );
  }
}
