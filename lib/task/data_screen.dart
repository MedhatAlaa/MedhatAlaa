import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            width: double.infinity,
            height: 350.0,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Email : MedhatAlaa@gmail.com0000000',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow:  TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Name : Medhat Alaa',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow:  TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Gender : Male',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow:  TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'status : single',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow:  TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_apps/componants/recomponants.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import 'my_home_page.dart';
//
// class LoginTest extends StatefulWidget {
//   const LoginTest({Key? key}) : super(key: key);
//
//   @override
//   State<LoginTest> createState() => _LoginTestState();
// }
//
// class _LoginTestState extends State<LoginTest> {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   var formKey = GlobalKey<FormState>();
//   bool isPassword = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Sign in ',
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Form(
//           key: formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextFormField(
//                 controller: emailController,
//                 onTap: () {},
//                 validator: (val) {
//                   if (val!.isEmpty) {
//                     return 'Email Must not be empty ';
//                   }
//                   return null;
//                 },
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: const InputDecoration(
//                   hintText: 'Email',
//                   prefixIcon: Icon(Icons.email),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15.0,
//               ),
//               TextFormField(
//                 controller: passwordController,
//                 onTap: () {},
//                 validator: (val) {
//                   if (val!.isEmpty) {
//                     return 'Password Must not be empty ';
//                   }
//                   return null;
//                 },
//                 keyboardType: TextInputType.visiblePassword,
//                 obscureText: isPassword,
//                 decoration: InputDecoration(
//                   hintText: 'Password',
//                   prefixIcon: const Icon(
//                     Icons.lock,
//                   ),
//                   suffixIcon: IconButton(
//                     onPressed: () {
//                       setState(() {
//                         isPassword = !isPassword;
//                       });
//                     },
//                     icon: Icon(
//                         isPassword ? Icons.visibility_off : Icons.visibility),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20.0,
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     if (formKey.currentState!.validate()) {
//                       setData();
//                       navigateTo(context, const MyHomePage());
//                     }
//                   },
//                   child: const Text(
//                     'Sing in ',
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   void setData() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//
//     sharedPreferences.setString('email', emailController.text);
//     sharedPreferences.setString('password', passwordController.text);
//   }
// }
