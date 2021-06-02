// import 'package:auto_route/auto_route.dart';
// import 'package:eshule_mobile/core/util/constant.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:eshule_mobile/features/domain/entities/course.dart';
// import 'package:eshule_mobile/features/presentation/bloc/student/apply_course/application_bloc.dart';

// class ApplicationDialogue extends StatelessWidget {
//   const ApplicationDialogue({
//     Key? key,
//     required this.course,
//     required ApplicationBloc applicationBloc,
//   })   : _applicationBloc = applicationBloc,
//         super(key: key);

//   final Course course;
//   final ApplicationBloc _applicationBloc;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => _applicationBloc,
//       child: AlertDialog(
//         content: Text(
//           "Are you sure you want to ${course.applied ? "unapply" : "apply"}?",
//           style: TextStyle(
//             // fontWeight: FontWeight.w600,
//             fontSize: 18,
//           ),
//         ),
//         actionsPadding: EdgeInsets.all(5),
//         actions: [
//           BlocBuilder<ApplicationBloc, ApplicationState>(
//             builder: (context, state) {
//               return state.maybeMap(
//                 //!this state
//                 loading: (state) => Text(
//                   course.applied ? "UNAPPLYING" : "APPLYING",
//                   style: TextStyle(
//                     color: course.applied ? Colors.red : Colors.green,
//                     fontWeight: FontWeight.w800,
//                     letterSpacing: 1.4,
//                   ),
//                 ),
//                 // context.router.pop(),
//                 orElse: () => TextButton(
//                   onPressed: () {
//                     course.applied
//                         ? _applicationBloc.add(
//                             ApplicationEvent.unapply(
//                               courseId: course.id,
//                             ),
//                           )
//                         : _applicationBloc.add(
//                             ApplicationEvent.apply(
//                               courseId: course.id,
//                             ),
//                           );
//                     context.router.pop();
//                   },
//                   child: Text(
//                     course.applied ? "UNAPPLY" : "APPLY",
//                     style: TextStyle(
//                       color: course.applied ? Colors.red : Colors.green,
//                       fontWeight: FontWeight.w800,
//                       letterSpacing: 1.4,
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//           TextButton(
//             onPressed: () => context.router.pop(),
//             child: Text(
//               "CANCEL",
//               style: TextStyle(
//                 color: kBlackColor,
//                 fontWeight: FontWeight.w800,
//                 letterSpacing: 1.4,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
