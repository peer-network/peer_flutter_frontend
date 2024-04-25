import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/provider/auth_provider.dart';
import 'package:peer_app/data/provider/chat_provider.dart';
import 'package:peer_app/data/provider/news_feed_provider.dart';
import 'package:peer_app/data/provider/theme_provider.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/data/services/gql_client_service.dart';
import 'package:peer_app/presentation/whitelabel/theme.dart';
import 'package:peer_app/presentation/wrapper/auth_wrapper.dart';
import 'package:provider/provider.dart';

void main() async {
  // ensure initialized
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  GraphQLClientSingleton();
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
        ChangeNotifierProvider(create: (_) => WalletSheetProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider())
      ],
      child: GraphQLProvider(
          client: ValueNotifier(GraphQLClientSingleton().client),
          child: const ThemedApp()),
    );
  }
}

class ThemedApp extends StatelessWidget {
  const ThemedApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      restorationScopeId: 'root',
      debugShowCheckedModeBanner: false,
      theme: lightTheme, // light theme
      darkTheme: darkTheme, // dark theme
      themeMode: themeProvider.themeMode, // theme observer
      home: const AuthWrapper(),
    );
  }
}
