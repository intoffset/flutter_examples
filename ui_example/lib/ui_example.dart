library ui_example;

import 'package:flutter/material.dart';

class UiExamples extends StatelessWidget {
  const UiExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormExample(),
        SizedBox(height: 16),
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

class FormExample extends StatelessWidget {
  const FormExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FormTextFields(),
            const SizedBox(height: 16),
            const SwitchExample(title: 'Enable option'),
            const SizedBox(height: 16),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(child: FormRadioButtons()),
                Flexible(child: FormCheckBoxes()),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Save'),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FormTextFields extends StatelessWidget {
  const FormTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Flexible(
              child: TextField(
                decoration: InputDecoration(label: Text('First name'), filled: true),
              ),
            ),
            SizedBox(width: 16),
            Flexible(
              child: TextField(
                decoration: InputDecoration(label: Text('Last name'), filled: true),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(label: Text('Email'), filled: true),
        ),
      ],
    );
  }
}

class FormCheckBoxes extends StatelessWidget {
  const FormCheckBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('Select yoru device'),
        CheckboxExample(title: 'iOS'),
        CheckboxExample(title: 'Android'),
        CheckboxExample(title: 'Mac'),
        CheckboxExample(title: 'Windows'),
        CheckboxExample(title: 'Linux'),
      ],
    );
  }
}

enum Gender { male, female, other }

class FormRadioButtons extends StatefulWidget {
  const FormRadioButtons({super.key});

  @override
  State<FormRadioButtons> createState() => _FormRadioButtonsState();
}

class _FormRadioButtonsState extends State<FormRadioButtons> {
  Gender? _selected = Gender.male;
  void onChanged(Gender? v) => setState(() {
        _selected = v;
      });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('Select yoru gender'),
        RadioListTile<Gender>(
            value: Gender.male, groupValue: _selected, onChanged: onChanged, title: const Text('Male')),
        RadioListTile<Gender>(
            value: Gender.female, groupValue: _selected, onChanged: onChanged, title: const Text('Female')),
        RadioListTile<Gender>(
            value: Gender.other, groupValue: _selected, onChanged: onChanged, title: const Text('Other')),
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
  final String title;
  const SwitchExample({super.key, required this.title});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(widget.title),
      value: value,
      onChanged: (newValue) => setState(() {
        value = newValue;
      }),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}

class CheckboxExample extends StatefulWidget {
  final String title;
  const CheckboxExample({super.key, required this.title});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.title),
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
