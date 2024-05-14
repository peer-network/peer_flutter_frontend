import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/queries.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

class HelloWorldPage extends StatefulWidget {
  const HelloWorldPage({super.key});

  @override
  State<HelloWorldPage> createState() => _HelloWorldPageState();
}

class _HelloWorldPageState extends State<HelloWorldPage> {
  Future fetchData() async {
    final QueryOptions options = QueryOptions(document: Queries.helloWorld);

    final client = GraphQLClientSingleton();
    final result = await client.query(options);

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }

        final data = snapshot.data.data["hello"];

        return Center(child: Text(data));
      },
    );
  }
}
