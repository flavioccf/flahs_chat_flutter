import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat_flutter/blocs/auth_bloc.dart';
import 'package:flash_chat_flutter/routes/routes.dart';
import 'package:flash_chat_flutter/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  // https://stackoverflow.com/a/63492262
  // https://stackoverflow.com/questions/55591958/flutter-firestore-causing-d8-cannot-fit-requested-classes-in-a-single-dex-file
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        initialRoute: WelcomeScreen.id,
        routes: routeList(),
      ),
    );
  }
}
