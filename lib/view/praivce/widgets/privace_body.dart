import 'package:flutter/material.dart';
import 'package:team_project/view/praivce/widgets/privace_switch_item.dart';

class PrivaceBody extends StatefulWidget {
  const PrivaceBody({super.key});

  @override
  State<PrivaceBody> createState() => _PrivaceBodyState();
}

bool isActive1 = false;
bool isActive2 = false;
bool isActive3 = false;
bool isActive4 = false;

class _PrivaceBodyState extends State<PrivaceBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrivaceSwitch(
          title: 'Name',
          subtitle: 'Ammar Ahmed',
          value: isActive1,
          onChange: (value) {
            setState(() {
              isActive1 = value;
            });
          },
        ),
        PrivaceSwitch(
          title: 'Phone number',
          subtitle: '01078654434',
          value: isActive2,
          onChange: (value) {
            setState(() {
              isActive2 = value;
            });
          },
        ),
        PrivaceSwitch(
          title: 'Email',
          subtitle: 'ammar21@gmail.com',
          value: isActive3,
          onChange: (value) {
            setState(() {
              isActive3 = value;
            });
          },
        ),
        PrivaceSwitch(
          title: 'Recommendations',
          subtitle:
              'If we see you interact with somthing more, we will recommend more of that content.',
          value: isActive4,
          onChange: (value) {
            setState(() {
              isActive4 = value;
            });
          },
        ),
      ],
    );
  }
}
