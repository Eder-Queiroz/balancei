import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchFormField extends StatelessWidget {
  final String labelText;
  final TextStyle? labelStyle;
  final bool value;
  final ValueChanged<bool> onChanged;
  final String? helperText;
  final String? errorText;

  const SwitchFormField({
    super.key,
    required this.labelText,
    required this.value,
    required this.onChanged,
    this.helperText,
    this.errorText,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    // Cores baseadas no tema do InputDecoration
    final Color borderColor = errorText != null
        ? theme.colorScheme.error
        : inputDecorationTheme.enabledBorder?.borderSide.color ??
            theme.colorScheme.onSurface.withValues(alpha: 0.38);

    print("Border color: $borderColor");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: CommonSpacing.ultraSmall),
          child: Row(
            children: [
              Text(
                labelText,
                style: labelStyle ?? inputDecorationTheme.labelStyle,
              ),
              const Spacer(),
              Transform.scale(
                scale: 0.8,
                child: CupertinoSwitch(
                  value: value,
                  onChanged: onChanged,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 1.0,
          color: borderColor,
        ),
        // Texto de ajuda ou erro abaixo da linha
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              errorText!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.error,
              ),
            ),
          )
        else if (helperText != null)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              helperText!,
              style: theme.textTheme.bodySmall,
            ),
          ),
      ],
    );
  }
}
