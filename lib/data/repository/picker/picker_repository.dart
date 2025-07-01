import 'package:balancei_app/domain/entities/picker/base_picker_entity.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class PickerRepository {
  AsyncResult<List<BasePickerEntity>> getAvailableColors();

  AsyncResult<List<BasePickerEntity>> getAvailableIcons();
}
