import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../view_model/sign_up/cubit.dart';
import '../../view_model/sign_up/states.dart';

class UploadUserProfilePic extends StatelessWidget {
  const UploadUserProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = SignUpCubit.get(context);
        return Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            cubit.profilePic == null
                ? //default image
            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.grey[300],
              child: const ClipOval(
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 65,
                  )
              ),
            )
                : // user profile image
            CircleAvatar(
              radius: 55,
              backgroundImage: FileImage(
                  File(cubit.profilePic!.path)
              ),
            ),
            InkWell(
              onTap: () {
                // cubit.addImage();
                ImagePicker().pickImage(source: ImageSource.gallery)
                    .then((value) => cubit.uploadProfilePic(value!));
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade300,
                child: Icon(
                  Icons.add_a_photo,
                  size: 30,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
