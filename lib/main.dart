import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/provider/auth_provider.dart';
import 'package:peer_app/data/provider/chat_contacts_provider.dart';
import 'package:peer_app/data/provider/contacts_provider.dart';
// import 'package:peer_app/data/provider/chat_provider.dart'; // ChatProvider is now ChatCpntactsProvider (is assume so)
import 'package:peer_app/data/provider/news_feed_provider.dart';
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
        ChangeNotifierProvider(create: (_) => ChatContactsProvider()),
        ChangeNotifierProvider(create: (_) => ContactsProvider()),
        // ChatProvider is now ChatCpntactsProvider (is assume so)
        // ChangeNotifierProvider(create: (_) => ChatProvider()),
        ChangeNotifierProvider(create: (_) => WalletSheetProvider())
      ],
      child: GraphQLProvider(
        client: ValueNotifier(GraphQLClientSingleton().client),
        child: MaterialApp(
          restorationScopeId: 'root',
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const AuthWrapper(),
        ),
      ),
    );
  }
}
