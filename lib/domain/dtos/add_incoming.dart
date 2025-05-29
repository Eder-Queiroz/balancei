const Object _sentinel = Object();

class AddIncomingDTO {
  final double? value;
  final bool? received;
  final String? description;
  final bool? isRecurring;
  final bool? repeat;

  AddIncomingDTO({
    this.value,
    this.received,
    this.description,
    this.isRecurring,
    this.repeat,
  });

  AddIncomingDTO copyWith({
    Object? value = _sentinel,
    Object? received = _sentinel,
    Object? description = _sentinel,
    Object? isRecurring = _sentinel,
    Object? repeat = _sentinel,
  }) {
    return AddIncomingDTO(
      value: value == _sentinel ? this.value : value as double?,
      received: received == _sentinel ? this.received : received as bool?,
      description:
          description == _sentinel ? this.description : description as String?,
      isRecurring:
          isRecurring == _sentinel ? this.isRecurring : isRecurring as bool?,
      repeat: repeat == _sentinel ? this.repeat : repeat as bool?,
    );
  }
}
