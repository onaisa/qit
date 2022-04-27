import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qittestonaisa/Login/controller/cubit/login_cubit.dart';
import 'package:qittestonaisa/config/constent.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController passWordController;
  late TextEditingController emailController;

  var formkey = GlobalKey<FormState>();
  late FocusNode pwFocsNode;
  late FocusNode eFocsNode;
  @override
  void initState() {
    pwFocsNode = FocusNode();
    eFocsNode = FocusNode();
    passWordController = TextEditingController();
    emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // emailController.dispose();
    // passWordController.dispose();
    pwFocsNode.unfocus();
    eFocsNode.unfocus();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: appPadding, vertical: appPadding * 2),
        child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: emailController,
                  focusNode: eFocsNode,
                  // validator: (String? value) {
                  //   if (value == null && value!.isEmpty) {
                  //     return "please enter your email";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  onFieldSubmitted: (value) {
                    eFocsNode.unfocus();
                    FocusScope.of(context).requestFocus(pwFocsNode);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Email Address",
                      suffixIcon: const Icon(
                        Icons.email_outlined,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                ),
                TextFormField(
                  controller: passWordController,
                  focusNode: pwFocsNode,
                  // validator: (String? value) {
                  //   if (value == null && value!.isEmpty) {
                  //     return "please enter your passsword";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  onFieldSubmitted: (value) {
                    pwFocsNode.unfocus();
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: const Icon(
                        Icons.lock_outline,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                ),
                BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        orElse: () {},
                        success: () {
                          Navigator.pushNamed(context, '/home');
                        });
                  },
                  builder: (context, state) {
                    LoginCubit controller =
                        BlocProvider.of<LoginCubit>(context);
                    return state.when(
                        faliure: (error) => Column(
                              children: [
                                LoginButton(
                                    formkey: formkey,
                                    passWordController: passWordController,
                                    emailController: emailController),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: appPadding / 8),
                                  child: Text(
                                    "$error",
                                    style: TextStyle(color: Colors.red),
                                    softWrap: true,
                                  ),
                                )
                              ],
                            ),
                        initial: () => LoginButton(
                            formkey: formkey,
                            passWordController: passWordController,
                            emailController: emailController),
                        loading: () => const SizedBox(
                            height: 50.0,
                            width: 50.0,
                            child: Center(child: CircularProgressIndicator())),
                        success: () => const SizedBox());
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forogt Password ?",
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.formkey,
    required this.passWordController,
    required this.emailController,
  }) : super(key: key);

  final GlobalKey<FormState> formkey;

  final TextEditingController passWordController;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // if (formkey.currentState!.validate()) {
        print("Pressed ");
        BlocProvider.of<LoginCubit>(context).login(
            passWord: passWordController.text, email: emailController.text);
        // }
      },
      child: Container(
          height: 50.0,
          decoration: BoxDecoration(
              color: Colors.black87, borderRadius: BorderRadius.circular(30.0)),
          child: Center(
            child: Text(
              "LOGIN",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.white),
            ),
          )),
    );
  }
}
