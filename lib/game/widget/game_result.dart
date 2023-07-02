import 'package:flutter/material.dart';
import 'package:part2_rsp_game/game/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;

  const GameResult({required this.isDone, required this.callback, this.result, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result!.displayString,
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8),
          TextButton(
            child: const Text('다시 하기', style: TextStyle(fontSize: 24),),
            onPressed: () => callback.call(),
          )
        ],
      );
    }
    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택 해 주세요.',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
