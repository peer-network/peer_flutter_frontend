import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/services/auth_service.dart';

class GraphQLClientSingleton {
  static final GraphQLClientSingleton _instance =
      GraphQLClientSingleton._internal();
  late GraphQLClient _client;

  factory GraphQLClientSingleton() {
    return _instance;
  }

  GraphQLClientSingleton._internal() {
    _initClient();
  }

  void _initClient() {
    final AuthLink authLink = AuthLink(
      getToken: () async {
        return 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJwZWVyYXBwLmRlIiwiYXVkIjoicGVlcmFwcC5kZSIsInVpZCI6IjBjZjYzZTFlLTM5NzItNGU2MS04Yjg1LThkNWZiOGZiYTcwYyIsImlhdCI6MTcyNDQxMDgwOCwiZXhwIjoxNzI1MDE1NjA4fQ.R2fkAxe0TFauhOwaCtxqA4LueNXG65n3HBrV-xqdh4YhEn9lBtUQ9hiheEiNqWYZXugGORU6u1i0wgJZAYZvB-dmy_uK_WLV5UtvhnSvISHCIHkHS4PknlieCpm0b5ouDgley2ij7hHhUmID-HMCFFIGlT5nhfLlUAK4D-Q88Qq3zPTRHWQ1k6Y9Aj63tO8NkOtbjhKWRBTlJz7xPUHitUbWhZ73r6sP7VSk92uG92wVXWcJlSYiQpEHMDzcuOjTjE-W6X8kAjmu5M7sWVoZDU7Y2ybE8j4HnVLV4wIhhayxAymnhc8RBbrXn5_VdcLo89hBceMj9rvqvrHNIIOEtw';
      },
    );

    final HttpLink httpLink = HttpLink(
      'http://10.10.121.78:8888/graphql',
    );

    final Link link = authLink.concat(httpLink);
    _client = GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    );
  }

  void updateClient() {
    _initClient();
  }

  Future<QueryResult> query(QueryOptions options) async {
    return await _client.query(options);
  }

  Future<QueryResult> mutate(MutationOptions options) async {
    return await _client.mutate(options);
  }

  GraphQLClient get client => _client;
}
