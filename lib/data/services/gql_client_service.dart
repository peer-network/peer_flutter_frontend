import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLClientSingleton {
  static final GraphQLClientSingleton _instance =
      GraphQLClientSingleton._internal();
  late GraphQLClient _client;
  String? _token;

  factory GraphQLClientSingleton() {
    return _instance;
  }

  GraphQLClientSingleton._internal() {
    _initClient();
  }

  void _initClient() {
    final AuthLink authLink = AuthLink(
      getToken: () async {
        return _token != null ? 'Bearer $_token' : null;
      },
    );

    final HttpLink httpLink = HttpLink(
      'https://getpeer.eu/graphql',
    );

    final Link link = authLink.concat(httpLink);
    _client = GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    );
  }

  Future<void> updateToken(String? newToken) async {
    _token = newToken;
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
