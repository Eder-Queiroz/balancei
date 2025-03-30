import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final String title;
  final String description;
  final String value;
  final DateTime date;
  final IconData icon;
  final int color;
  final bool isIncoming;
  const TransactionCard({
    super.key,
    required this.title,
    required this.description,
    required this.value,
    required this.date,
    required this.icon,
    required this.color,
    this.isIncoming = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Row(
            spacing: CommonSpacing.large,
            children: [
              CircleAvatar(
                backgroundColor: Color(color),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: CommonSpacing.small),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              value,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: isIncoming ? Color(0xFF00C48C) : null,
                  ),
            ),
            Text(
              DateFormat('dd MMM yyyy').format(date),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Color(0xFF79747E),
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
