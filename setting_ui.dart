import 'package:flutter/material.dart';
import 'package:studier/settings_title.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"))),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SettingsTitle(
                color: Colors.blue,
                icon: Icons.password_outlined,
                title: "Change Password",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTitle(
                color: Colors.black,
                icon: Icons.dark_mode,
                title: "Change Theme",
                onTap: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              SettingsTitle(
                color: Colors.yellow,
                icon: Icons.notification_add_outlined,
                title: "Notifications",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTitle(
                color: Colors.green,
                icon: Icons.question_answer_outlined,
                title: "About",
                onTap: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              SettingsTitle(
                color: Colors.red,
                icon: Icons.delete_forever_outlined,
                title: "Delete Account",
                onTap: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              RaisedButton(
                  onPressed: () {},
                  color: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "SIGN OUT",
                    style: TextStyle(
                        fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
