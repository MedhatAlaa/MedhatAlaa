//
//
// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
//   static String routeName = "/home";
// }
//
// class _HomePageState extends State<HomePage> {
//   bool toogle = false;
//   final TextEditingController _emailTextEditingController =
//       TextEditingController();
//   final TextEditingController _passwordTextEditingController =
//       TextEditingController();
//
//   void onChangeFn(String txt) {
//     print("this is the text onChange() $txt");
//   }
//
//   ///! life cycle of Android activity (latest version)
//   //////! life cycle of Android fragment (latest version)
//   ///! App Delegate iOS
//   @override
//   Widget build(BuildContext context) {
//     final GlobalKey<FormState> _signInformKey = GlobalKey<FormState>();
//     var formattedDate = DateFormat.yMMMd().add_jms();
//     return Scaffold(
//         appBar: AppBar(),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Visibility(
//                 visible: true,
//                 child: TextButton(
//                     onPressed: () {
//                       print(Navigator.of(context).canPop());
//                     },
//                     child: const Text("Can pop ?")),
//               ),
//
//               // !!!!!!!!!!!
//               // will cause an error that we discussed before
//               //! please refer to https://www.youtube.com/watch?v=jckqXR5CrPI
//               // ListView(),
//               // !!!!!!!!!!!
//               //Extracting a Widget vs Methods
//               //! -  https://www.youtube.com/watch?v=IOyq-eTRhvo&t=32s
//               // !!!!!!!!!!!
//
//               Form(
//                 key: _signInformKey,
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       toolbarOptions: const ToolbarOptions(),
//                       //to be discussed with validation
//                       // maxlength of the text input
//                       // maxLength: 20,
//                       ///[limit the text without showing the number]
//                       decoration: const InputDecoration(
//                           label: Text("Email"),
//                           focusedErrorBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: Colors.green,
//                           ))),
//                       controller: _emailTextEditingController,
//                       validator: (email) {
//                         //Guard statment
//                         if (email == null) return null;
//                         if (!email.contains("@") || !email.contains(".")) {
//                           return 'Invalid Email';
//                         }
//                         return null;
//                       },
//
//                       ///[it should be with same signature and return time]
//                       //! please refer to https://www.youtube.com/watch?v=OmCaloD7sis
//                     ),
//                     DropdownButtonFormField(
//                       value: 0,
//                       items: const [
//                         DropdownMenuItem(
//                           child: Text("All cities"),
//                           value: 0,
//                         ),
//                         DropdownMenuItem(
//                           child: Text("Alex"),
//                           value: 10,
//                         ),
//                         DropdownMenuItem(
//                           child: Text("Tanta"),
//                           value: 14,
//                         ),
//                         DropdownMenuItem(
//                           child: Text("Matrouh"),
//                           value: 16,
//                         ),
//                       ],
//                       onChanged: (value) {
//                         print(value);
//                       },
//                     ),
//                     TextFormField(
//                       //to be discussed with validation
//
//                       // maxlength of the text input
//                       // maxLength: 20,
//                       ///[limit the text without showing the number]
//
//                       obscureText: true,
//                       obscuringCharacter: "*",
//                       decoration: const InputDecoration(
//                           label: Text("Password"),
//                           focusedErrorBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: Colors.green,
//                           ))),
//                       controller: _passwordTextEditingController,
//                       validator: (txt) {
//                         //Guard statment
//                         if (txt == null) return null;
//                         if (txt.length < 6) {
//                           return 'short string';
//                         }
//                         return null;
//                       },
//
//                       ///[it should be with same signature and return time]
//                       //! please refer to https://www.youtube.com/watch?v=OmCaloD7sis
//                     ),
//                   ],
//                 ),
//               ),
//               Builder(builder: (ctx) {
//                 return MainButton(
//                   buttonText: "Open SNackbar",
//                   onPressed: () {
//                     Scaffold.of(ctx).showSnackBar(
//                         const SnackBar(content: Text("Trying to be good")));
//                   },
//                 );
//               }),
//
// //unique
//               ///Showing dialogs
//               ElevatedButton.icon(
//                   onPressed: () {
//                     if (_signInformKey.currentState!.validate()) {
//                       showOkCancelAlertDialog(
//                         context: context,
//                         title: "Congrats!",
//                         okLabel: "Ø­Ø³Ù†Ø§Ù‹",
//                         cancelLabel: "Ù„Ø§ Ø§Ø±ØºØ¨",
//                         message:
//                             "Ù‡Ù„ ØªØ±ÙŠØ¯ ÙØ¹Ù„Ø§ Ø§Ù„ØªØ®Ù„Øµ Ù…Ù† Ù‡Ø°Ø§ Ø§Ù„ÙƒÙˆØ±Ø³",
//                         isDestructiveAction: true,
//                       );
//                     } else {
//                       print("Error");
//                     }
//                   },
//                   icon: const Icon(Icons.edit),
//                   label: const Text("Submit")),
//               const SizedBox(
//                 height: 24,
//               ),
//
//               TextButton(
//                   onPressed: () {
//                     Navigator.of(context)
//                         .push(MaterialPageRoute(builder: (ctx) {
//                       return const ScreenTwo();
//                     }));
//                   },
//                   child: const Text("Navigate to screen 2"))
//             ],
//           ),
//         ));
//
//     //! Padding Vs ViewPadding Vs and ViewInsets,
//     // https://www.youtube.com/watch?v=ceCo8U0XHqw
//
//     //!- keys value vs global vs object vs unique keys
//     // https://dhruvnakum.xyz/keys-in-flutter-uniquekey-valuekey-objectkey-pagestoragekey-globalkey
//     // https://www.youtube.com/watch?v=kn0EOS-ZiIc
//     // https://www.youtube.com/watch?v=WQpPMYxxTfg
//     // https://www.youtube.com/watch?v=WhnB_5yjyWQ
//   }
// }
