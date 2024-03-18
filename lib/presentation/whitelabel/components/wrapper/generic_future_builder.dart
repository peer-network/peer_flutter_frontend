import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';

// Generic FutureBuilder Wrapper Component
class GenericFutureBuilder<T> extends StatelessWidget {
  final Future<T> futureFunction;
  final Widget Function(BuildContext context, T data) dataBuilder;
  final String? name;

  const GenericFutureBuilder({
    super.key,
    required this.futureFunction,
    required this.dataBuilder,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: futureFunction,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingComponent(onRefresh: () => futureFunction);
        } else if (snapshot.hasError) {
          return ErrorComponent(error: snapshot.error.toString());
        } else if (snapshot.hasData && snapshot.data != null) {
          return dataBuilder(context, snapshot.data as T);
        } else {
          return ErrorComponent(
              error: name != null
                  ? "An error occurred while fetching $name"
                  : "An error occurred while fetching data");
        }
      },
    );
  }
}
