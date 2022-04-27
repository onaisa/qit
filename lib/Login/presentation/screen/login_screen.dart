import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qittestonaisa/Login/controller/cubit/login_cubit.dart';
import 'package:qittestonaisa/Login/data/login_repo.dart';
import 'package:qittestonaisa/Login/presentation/widgets/login_form.dart';
import 'package:qittestonaisa/Login/presentation/widgets/login_foter.dart';
import 'package:qittestonaisa/Login/presentation/widgets/login_header.dart';
import 'package:qittestonaisa/Login/presentation/widgets/login_social_media_icons.dart';
import 'package:qittestonaisa/config/constent.dart';
import 'package:qittestonaisa/get_it_.dart/my_get_it_objects.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(appPadding),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LoginHeader(),
                  const LoginForm(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [SocialMediaIcons(), LoginFoter()],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // )
        ),
      ),
    );
  }
}
