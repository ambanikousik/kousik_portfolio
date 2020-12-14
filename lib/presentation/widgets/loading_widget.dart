import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class LoadingWidget extends StatelessWidget {
  final String message;
  const LoadingWidget({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        color: Colors.black.withOpacity(0.8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (message == null)
                const SizedBox(
                        width: 32,
                        height: 32,
                        child: CircularProgressIndicator(strokeWidth: 3))
                    .padding(bottom: 16),
              Text(
                message ?? 'Please wait …',
                style: const TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ).padding(bottom: 4),
            ]));
  }
}
