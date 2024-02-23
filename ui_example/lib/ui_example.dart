library ui_example;

import 'package:flutter/material.dart';

class UiExamples extends StatelessWidget {
  const UiExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldExamples(),
        SizedBox(height: 16),
        ButtonExamples(),
        SizedBox(height: 16),
        SnackBarButton(),
        SizedBox(height: 16),
        ErrorSnackBarButton(),
        SizedBox(height: 16),
        FabExamples(),
        SizedBox(height: 16),
        SegmentedButtonExample(),
        SizedBox(height: 16),
        SwitchExample(),
        SizedBox(height: 16),
        CheckboxExample(),
        SizedBox(height: 16),
        SliderExample(),
        SizedBox(height: 16),
        CardExample(),
        SizedBox(height: 16),
        FilledCardExample(),
        SizedBox(height: 16),
        OutlinedCardExample(),
      ],
    );
  }
}

class TextFieldExamples extends StatelessWidget {
  const TextFieldExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Flexible(
          child: TextField(
            decoration: InputDecoration(filled: true, label: Text('Text field')),
          ),
        ),
        SizedBox(width: 16),
        Flexible(
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder(), label: Text('Text field')),
          ),
        ),
      ],
    );
  }
}

class ButtonExamples extends StatelessWidget {
  const ButtonExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Button'),
        ),
        const SizedBox(width: 12),
        FilledButton(
          onPressed: () {},
          child: const Text('Button'),
        ),
        const SizedBox(width: 12),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Button'),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {},
          child: const Text('Button'),
        ),
      ],
    );
  }
}

class SnackBarButton extends StatelessWidget {
  const SnackBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Show Snackbar'),
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          showCloseIcon: true,
          content: Text('Something happend!'),
        ),
      ),
    );
  }
}

class ErrorSnackBarButton extends StatelessWidget {
  const ErrorSnackBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Show Error Snackbar'),
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).colorScheme.error,
          showCloseIcon: true,
          content: Row(
            children: [
              Icon(Icons.error_rounded, color: Theme.of(context).colorScheme.onError),
              const SizedBox(width: 8),
              Text('Something wrong!', style: TextStyle(color: Theme.of(context).colorScheme.onError)),
            ],
          ),
        ),
      ),
    );
  }
}

class FabExamples extends StatelessWidget {
  const FabExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add_rounded),
        ),
        const SizedBox(width: 12),
        FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.add_rounded),
          label: const Text('ADD'),
        ),
      ],
    );
  }
}

class SegmentedButtonExample extends StatefulWidget {
  const SegmentedButtonExample({super.key});

  @override
  State<SegmentedButtonExample> createState() => _SegmentedButtonExampleState();
}

class _SegmentedButtonExampleState extends State<SegmentedButtonExample> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<int>(
      segments: const [
        ButtonSegment(value: 0, label: Text('Good'), icon: Icon(Icons.thumb_up)),
        ButtonSegment(value: 1, label: Text('Bad'), icon: Icon(Icons.thumb_up)),
      ],
      onSelectionChanged: (selected) => setState(() {
        value = selected.first;
      }),
      selected: {value},
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.auto_awesome_rounded),
            SizedBox(height: 12),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
          ],
        ),
      ),
    );
  }
}

class FilledCardExample extends StatelessWidget {
  const FilledCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card.filled(
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.auto_awesome_rounded),
            SizedBox(height: 12),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
          ],
        ),
      ),
    );
  }
}

class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card.outlined(
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.auto_awesome_rounded),
            SizedBox(height: 12),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
          ],
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Switch'),
      value: value,
      onChanged: (newValue) => setState(() {
        value = newValue;
      }),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Check box'),
      value: isChecked,
      onChanged: (newValue) => setState(() {
        isChecked = newValue!;
      }),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double value = 20;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      max: 100,
      divisions: 5,
      label: value.round().toString(),
      onChanged: (newValue) => setState(() {
        value = newValue;
      }),
    );
  }
}
