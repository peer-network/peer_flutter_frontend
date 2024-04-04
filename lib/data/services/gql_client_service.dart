import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/presentation/whitelabel/endpoints.dart';

// graphql_client_singleton.dart

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
        return null;
      },
    );

    final HttpLink httpLink = HttpLink(
      'http://${ApiEndpoints.baseUrl}/v1/graphql',
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
