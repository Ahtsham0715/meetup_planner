// import 'package:flutter/material.dart';
// import 'package:meetup_planner/res/extensions/size_extension.dart';


// import '../assets/image_assets.dart';
// import '../colors/app_color.dart';

// class BottomSheetView extends StatelessWidget {
//   final Color color;
//   final String headertext;
//   final String btntext;
//   final String? text;
//   final String? subtext;
//   final VoidCallback btnOntap;
//   const BottomSheetView(
//       {super.key,
//       required this.color,
//       required this.headertext,
//       required this.btntext,
//       this.text = '',
//       this.subtext = '',
//       required this.btnOntap});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: text!.isEmpty
//             ? context.blockSizeVertical * 25
//             : context.blockSizeVertical * 35,
//         color: color,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ListTile(
//               leading: Container(
//                 padding: EdgeInsets.all(2.0),
//                 decoration: BoxDecoration(
//                   color: AppColor.whiteColor,
//                   borderRadius: BorderRadius.circular(5.0),
//                 ),
//                 child: Icon(
//                   Icons.check,
//                   color: color,
//                 ),
//               ),
//               horizontalTitleGap: -125.0,
//               title: CustomText(
//                 title: headertext,
//                 fontcolor: AppColor.primaryTextColor,
//                 textalign: TextAlign.center,
//                 fontsize: 24,
//                 fontweight: FontWeight.w700,
//               ),
//               trailing: SizedBox(
//                 width: context.blockSizeHorizontal * 35,
//                 // height: context.blockSizeHorizontal * 0.5,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     ImageIcon(
//                       AssetImage(ImageAssets.send),
//                       color: AppColor.whiteColor,
//                     ),
//                     ImageIcon(
//                       AssetImage(ImageAssets.chat),
//                       color: AppColor.whiteColor,
//                     ),
//                     ImageIcon(
//                       AssetImage(ImageAssets.info),
//                       color: AppColor.whiteColor,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             text!.isEmpty
//                 ? Center()
//                 : SizedBox(
//                     height: 10.0,
//                   ),
//             text!.isEmpty
//                 ? Center()
//                 : Align(
//                     alignment: Alignment.centerLeft,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25.0),
//                       child: CustomText(
//                         title: text!,
//                         fontcolor: AppColor.whiteColor,
//                         textalign: TextAlign.left,
//                         fontsize: 24,
//                         fontweight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//             subtext!.isEmpty
//                 ? Center()
//                 : Align(
//                     alignment: Alignment.centerLeft,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25.0),
//                       child: CustomText(
//                         title: subtext!,
//                         fontcolor: AppColor.whiteColor,
//                         textalign: TextAlign.left,
//                         fontsize: 18,
//                         fontweight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//             !text!.isEmpty
//                 ? Center()
//                 : SizedBox(
//                     height: 40.0,
//                   ),
//             RoundButton(
//               text: CustomText(
//                 title: btntext,
//                 fontcolor: color,
//                 textalign: TextAlign.center,
//                 fontsize: 16,
//                 fontweight: FontWeight.bold,
//               ),
//               buttonColor: AppColor.whiteColor,
//               onPress: btnOntap,
//               height: context.blockSizeVertical * 7,
//               width: context.blockSizeHorizontal * 85,
//             ),
//           ],
//         ));
//   }
// }
