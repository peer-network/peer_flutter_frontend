import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/auth_provider.dart';
import 'package:peer_app/data/provider/chat_provider.dart';
import 'package:peer_app/data/provider/feed_provider.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';
import 'package:peer_app/presentation/wrapper/auth_wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  // ensure initialized
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => NewsFeedProvider()),
        ChangeNotifierProvider(create: (_) => ChatProvider()),
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        home: const AuthWrapper(),
      ),
    );
  }
}
