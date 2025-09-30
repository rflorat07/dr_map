import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

void main() {
  runApp(const ProviderScope(child: DRMainApp()));
}

class DRMainApp extends ConsumerWidget {
  const DRMainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exampleValue = ref.watch(exampleValueProvider);

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              Text(exampleValue),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(exampleValueProvider.notifier)
                      .updateValue('New Value from Button');
                },
                child: const Text('Click me to update'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@riverpod
String example(Ref ref) {
  return 'Hello World from Testing Riverpod!';
}

@riverpod
class ExampleValue extends _$ExampleValue {
  @override
  String build() => 'Hello World from Testing Riverpod with Class!';

  void updateValue(String newValue) {
    state = newValue;
  }
}
