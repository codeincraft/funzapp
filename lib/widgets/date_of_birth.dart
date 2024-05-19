// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:intl/intl.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:zippa_travels/core/configs/size_config.dart';
// import 'package:zippa_travels/core/constants/themes/app_colors.dart';
// import 'package:zippa_travels/core/constants/themes/app_text_styles.dart';
// import 'package:zippa_travels/core/shared/widgets/app_button.dart';
// import 'package:zippa_travels/core/shared/widgets/custom_appbar.dart';

// class DepartureDate extends StatefulWidget {
//   const DepartureDate({super.key});

//   @override
//   State<DepartureDate> createState() => _DepartureDateState();
// }

// class _DepartureDateState extends State<DepartureDate> {
//   DateTime today = DateTime.now();
//   bool isButtonEnabled = false;
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//   String formattedDay = "Departure Date";
//   void _onDaySelect (DateTime day, DateTime focusedDay){
//     setState(() {
//       final departureD = DateTime(
//         day.year,
//         day.month,
//         day.day,
//         );
//          formattedDay =
//           DateFormat('MMM, dd, yyyy').format(departureD);
//       isButtonEnabled = formattedDay != 'Departure Date' 
//           ? true
//           : false;
//            today = focusedDay;
//     });
//   }
  

  

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//         decoration: BoxDecoration(
//           color: AppColors.white
//         ),
//         padding: EdgeInsets.symmetric(vertical: 20,),
//         height: getVerticalSize(double.infinity),
//         width: getHorizontalSize(double.infinity),
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               child: CustomAppBar(
//                 title: '',
//                 // leading: Assets.images.backArrow.image(),
//               ),
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Select departure date',
//                        style: AppStyle.txtGeistRegular14.copyWith(
//                             fontSize: 14,
//                             // wordSpacing: 1,
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.darkText),),
//                       Gap(20),
//                       SizedBox(
//                         height: 50,
//                         width: double.infinity,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             InkWell(
//                                 child: Container(
//                                   padding: EdgeInsets.symmetric(
//                                       horizontal: 10, vertical: 5),
//                                   height: 45,
//                                   width: 160,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(7),
//                                       color: AppColors.formFill,
//                                       border: Border.all(color: AppColors.formBorder,
//                                       width: 1)
//                                       ),
//                                   child: Row(
//                                     children: [
//                                       Icon(
//                                         Icons.calendar_month_outlined,
//                                         color: AppColors.black.withOpacity(0.5),
//                                         size: 15.75,
//                                       ),
//                                       Gap(5),
//                                       // Departure Date
//                                       Text(
//                                         formattedDay,
//                                         style: AppStyle.txtGeistRegular16.copyWith(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.w400
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 onTap: () {
//                                   // GoRouter.of(context).pushNamed(RouteNames.departureAndarrival);
//                                 }),
//                             Gap(20),
//                           ],
//                         ),
//                       ),
//                       Gap(20),
//                       Divider(color: AppColors.formBorder,),
//                       Gap(10),
//                       Container(
//                         height: 350,
//                         child: TableCalendar(
//                           locale: 'en_US',
//                           headerStyle: HeaderStyle(
//                             formatButtonVisible: false,
//                             titleCentered: true,
//                             leftChevronIcon: Container(
//                               alignment: Alignment.center,
//                               height: 25,
//                               width: 30,
//                               decoration: BoxDecoration(
//                                 color: AppColors.formFill,
//                                 borderRadius: BorderRadius.circular(7),
//                                 border: Border.all(
//                                   color: AppColors.formBorder
//                                 ),
//                               ),
//                               child: Icon(Icons.arrow_back_ios_new,
//                               size: 12,),
//                             ),
//                             rightChevronIcon:  Container(
//                               alignment: Alignment.center,
//                               height: 25,
//                               width: 30,
//                               decoration: BoxDecoration(
//                                 color: AppColors.formFill,
//                                 borderRadius: BorderRadius.circular(7),
//                                 border: Border.all(
//                                   color: AppColors.formBorder
//                                 ),
//                               ),
//                               child: Icon(Icons.arrow_forward_ios_rounded,
//                               size: 12,),
//                             ),
//                             titleTextStyle: AppStyle.txtGeistMedium32,
//                           ),
//                           availableGestures: AvailableGestures.all,
//                           calendarStyle: CalendarStyle(
//                             todayDecoration:
//                                 BoxDecoration(color: AppColors.primary.withOpacity(0.0)),
//                             todayTextStyle:
//                                 TextStyle(color: AppColors.black),
//                             selectedDecoration:
//                                 BoxDecoration(color: AppColors.primary),
//                           ),
//                           rowHeight: 40,
//                           focusedDay: today,
//                           firstDay: DateTime.utc(2000, 1, 1),
//                           lastDay: DateTime.utc(3030, 1, 1),
//                           onDaySelected: _onDaySelect,
//                           rangeSelectionMode: RangeSelectionMode.toggledOn,
//                           selectedDayPredicate: (day) =>
//                               isSameDay(day, today),
//                           onFormatChanged: (format) {
//                             if (_calendarFormat != format) {
//                               setState(() {
//                                 _calendarFormat != format;
//                               });
//                             }
//                           },
//                         ),
//                       ),
//                       Gap(20),
//                       // AppButton(
//                       //   onTap: isButtonEnabled ? _submit : null,
//                       //   text: 'Done',
//                       //   fontsize: 40,
//                       //   textColor:
//                       //       isButtonEnabled ? AppColors.white : AppColors.black,
//                       //   width: double.infinity,
//                       //   height: 50,
//                       //   buttonColor: isButtonEnabled
//                       //       ? AppColors.primary
//                       //       : AppColors.formBorder,
//                       //   borderRadius: 10,
//                       // ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _submit() {
//     // Action to perform when the button is pressed
//     // context.go('/home');
//   }
// }
