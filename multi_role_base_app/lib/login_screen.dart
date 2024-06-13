import 'package:flutter/material.dart';
import 'package:multi_role_base_app/home_screen.dart';
import 'package:multi_role_base_app/student_screen.dart';
import 'package:multi_role_base_app/teacher_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  _LoginScreenState() {
    selectedVal = sizeList[1];
  }
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  final sizeList = ["teacher", "student", "admin"];
  String? selectedVal = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        automaticallyImplyLeading: false,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your passsword';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Age',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              // DropdownButton(
              //   value: selectedVal,
              //   items: sizeList
              //       .map(
              //         (e) => DropdownMenuItem(child: Text(e), value: e),
              //       )
              //       .toList(),
              //   onChanged: (e) {
              //     setState(() {
              //       selectedVal = e as String;
              //     });
              //   },
              // ),
              DropdownButtonFormField(
                value: selectedVal,
                items: sizeList
                    .map(
                      (item) => DropdownMenuItem(
                        child: Text(
                          item,
                          // style: TextStyle(fontSize: 24),
                        ),
                        value: item,
                      ),
                    )
                    .toList(),
                onChanged: (item) {
                  setState(() {
                    selectedVal = item as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down_circle,
                  color: Colors.deepPurple,
                ),
                dropdownColor: Colors.deepPurple.shade50,
                decoration: InputDecoration(
                  labelText: "User Type",
                  prefixIcon: Icon(
                    Icons.accessibility_new_rounded,
                    color: Colors.deepPurple,
                  ),
                  border: UnderlineInputBorder(),
                  // border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: ElevatedButton(
              //         onPressed: () {
              //           // Validate returns true if the form is valid, or false otherwise.
              //           if (_formKey.currentState!.validate()) {
              //             // If the form is valid, display a snackbar. In the real world,
              //             // you'd often call a server or save the information in a database.
              //             ScaffoldMessenger.of(context).showSnackBar(
              //               const SnackBar(content: Text('Processing Data')),
              //             );
              //           }
              //         },
              //         child: const Text('Submit'),
              //       ),
              //     ),
              //   ],
              // ),
              InkWell(
                onTap: () async {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    SharedPreferences sp =
                        await SharedPreferences.getInstance();
                    sp.setString('email', emailController.text.toString());
                    sp.setString('age', ageController.text.toString());
                    //admin, student, teacher
                    sp.setString('userType', selectedVal.toString());
                    sp.setBool('isLogin', true);
                    if (sp.getString('userType') == 'teacher') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TeacherScreen()));
                    } else if (sp.getString('userType') == 'student') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentScreen()));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('You are logged in')),
                    );
                  }
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.green,
                  child: Center(child: Text('Sign Up')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
