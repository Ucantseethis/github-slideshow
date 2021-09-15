// import 'dart:convert';
// import 'package:http/http.dart' as http;

// import 'package:flutter/material.dart';
// import 'package:email_validator/email_validator.dart';
// import 'package:boxz_website/helpers/style.dart';
// import 'package:boxz_website/widgets/button.dart';

// class NewletterCard extends StatefulWidget {
//   const NewletterCard({Key key}) : super(key: key);

//   @override
//   _NewletterCardState createState() => _NewletterCardState();
// }

// class _NewletterCardState extends State<NewletterCard> {
//   final _formKey = GlobalKey<FormState>();
//   String email;
//   String sentResponse;
//   bool isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 8,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//       child: Form(
//         key: _formKey,
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: Column(
//             children: [
//               const SizedBox(height: 12),
//               Text(
//                 "Get Notified First and Receive a 5\$ Discount On Your First Order ",
//                 style: TextStyle(
//                   fontFamily: 'Code-Next-ExtraBold',
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 12),
//               Text(
//                 "Be the first to be notified when\nboxz is available",
//                 style: TextStyle(
//                   fontFamily: 'Code-Next-ExtraBold',
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 12),
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 margin: const EdgeInsets.symmetric(horizontal: 42),
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     icon: Icon(Icons.email_outlined),
//                     hintText: "Email",
//                     border: InputBorder.none,
//                   ),
//                   style: TextStyle(
//                     fontFamily: 'Code-Next-ExtraBold',
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   onSaved: (email) => this.email = email,
//                   validator: (email) =>
//                       email != null && !EmailValidator.validate(email)
//                           ? 'Enter a valid email'
//                           : null,
//                 ),
//               ),
//               const SizedBox(height: 12),
//               if (isLoading)
//                 CircularProgressIndicator(
//                   valueColor: AlwaysStoppedAnimation(disable),
//                 )
//               else ...[
//                 if (sentResponse = null)
//                   Container(
//                     margin: const EdgeInsets.symmetric(horizontal: 50),
//                     child: ButtonTheme(
//                         minWidth: double.infinity,
//                         child: GestureDetector(
//                           child: CustomButton(
//                             text: 'Subscribe',
//                           ),
//                           onTap: _submit,
//                         )),
//                   )
//                 else
//                   Text(
//                     sentResponse,
//                     style: TextStyle(
//                       fontFamily: 'Code-Next-ExtraBold',
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//               ],
//               const SizedBox(height: 12)
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _submit() async {
//     if (_formKey.currentState.validate()) {
//       _formKey.currentState.save();

//       try {
//         setState(() {
//           isLoading = true;
//         });
//         final response = await http.post("CLOUD_FUNCTION_URL",
//             headers: {
//               'Content-Type': 'application/json; charset=UTF-8',
//               'Access-Control-Allow-Origin': '*',
//             },
//             body: jsonEncode({"email": email}));
//         if (response.statusCode == 200) {
//           setState(() {
//             sentResponse = "We sent an email confirmation!";
//             isLoading = false;
//           });
//         } else {
//           setState(() {
//             sentResponse = response.body;
//             isLoading = false;
//           });
//         }
//       } catch (e) {
//         setState(() {
//           sentResponse = "Something went wrong, please try again";
//           isLoading = false;
//         });
//       }
//     }
//   }
// }
