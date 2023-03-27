import 'package:flutter/material.dart';
import 'package:udgam2k23/methods/methods.dart';
import 'package:udgam2k23/screens/teams/widgets/team_card.dart';

class AppTeam extends StatefulWidget {
  const AppTeam({super.key});

  @override
  State<AppTeam> createState() => _AppTeamState();
}

class _AppTeamState extends State<AppTeam> {
  Methods method = Methods();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.04,
            right: size.width * 0.04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                height: size.height * 0.065,
                decoration: BoxDecoration(
                  color: const Color(
                    0xff00386d,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "App Team",
                        style: TextStyle(
                          fontFamily: 'Samarkan',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/AppTeam/Dee.jpg",
                name: "Dhireen Kumar Rajak",
                designation: "Member",
                onPressed1: () => method.launch("tel:+919382038024"),
                onPressed2: () =>
                    method.launch("mailto:b200040@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/CoreTeam/SS.jpg",
                name: "Aman Saurav",
                designation: "Member",
                onPressed1: () => method.launch("tel:+917384128688"),
                onPressed2: () =>
                    method.launch("mailto:b200054@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/AppTeam/PranshuJaiswal.jpg",
                name: "Pranshu Jaiswal",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918250574639"),
                onPressed2: () =>
                    method.launch("mailto:b210021@nitsikkim.ac.in"),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              TeamCard(
                imagePath: "assets/teams/AppTeam/PranshuJaiswal.jpg",
                name: "Saurav Kumar",
                designation: "Member",
                onPressed1: () => method.launch("tel:+918250574639"),
                onPressed2: () =>
                    method.launch("mailto:b210021@nitsikkim.ac.in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}