import 'package:flutter/material.dart';

class AvailableIconsTableHelpers {
  AvailableIconsTableHelpers._();

  static const List<IconData> _allFinancialIcons = [
    Icons.account_balance,
    Icons.attach_money,
    Icons.monetization_on,
    Icons.currency_exchange,
    Icons.credit_card,
    Icons.account_balance_wallet,
    Icons.trending_up,
    Icons.add_circle,
    Icons.payments,
    Icons.work,
    Icons.request_page,
    Icons.redeem,
    Icons.trending_down,
    Icons.shopping_cart,
    Icons.shopping_bag,
    Icons.receipt_long,
    Icons.receipt,
    Icons.local_offer,
    Icons.restaurant,
    Icons.directions_car,
    Icons.home,
    Icons.local_hospital,
    Icons.school,
    Icons.shopping_basket,
    Icons.theater_comedy,
    Icons.fitness_center,
    Icons.wifi,
    Icons.local_laundry_service,
    Icons.child_friendly,
    Icons.pets,
    Icons.show_chart,
    Icons.savings,
    Icons.pie_chart,
    Icons.account_balance,
    Icons.trending_up,
    Icons.real_estate_agent,
    Icons.calendar_today,
    Icons.flag,
    Icons.edit_calendar,
    Icons.lock_clock,
    Icons.auto_graph,
    Icons.check_circle,
  ];

  static List<String> convertIconsToHexCodes() {
    return _allFinancialIcons
        .map((icon) => icon.codePoint.toRadixString(16))
        .toList();
  }
}
