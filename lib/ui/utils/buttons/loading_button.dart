import 'package:balancei_app/ui/utils/buttons/loading_button_view_model.dart';
import 'package:balancei_app/ui/utils/common_radius.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

class LoadingButton extends ConsumerStatefulWidget {
  final bool enabled;
  final AsyncResult<Unit> Function() onPressed;
  final String label;
  final VoidCallback? onSuccess;
  final String? errorMessage;
  const LoadingButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.enabled = true,
    this.onSuccess,
    this.errorMessage,
  });

  @override
  ConsumerState<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends ConsumerState<LoadingButton> {
  late final viewModel = ref.watch(loadingButtonViewModelProvider.notifier);

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(loadingButtonViewModelProvider);

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(CommonRadius.extraLarge),
          ),
          padding: const EdgeInsets.all(CommonSpacing.small),
          elevation: 4,
          disabledBackgroundColor:
              Theme.of(context).primaryColor.withValues(alpha: 0.5),
        ),
        onPressed: widget.enabled
            ? () async {
                viewModel.startLoading();
                final result = await widget.onPressed();
                result.fold(
                  (_) {
                    widget.onSuccess?.call();
                  },
                  (error) {
                    if (widget.errorMessage != null &&
                        widget.errorMessage!.isNotEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(widget.errorMessage!),
                          duration: const Duration(milliseconds: 1500),
                          width: 280.0, // Width of the SnackBar.
                          padding: const EdgeInsets.symmetric(
                            horizontal: CommonSpacing.extraSmall,
                          ),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              CommonRadius.large.x,
                            ),
                          ),
                        ),
                      );
                    }
                  },
                );
                viewModel.stopLoading();
              }
            : null,
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
            : Text(
                widget.label,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                    ),
              ),
      ),
    );
  }
}
