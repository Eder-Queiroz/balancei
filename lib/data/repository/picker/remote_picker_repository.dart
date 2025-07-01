import 'package:balancei_app/data/datasource/dao/available_color_dao.dart';
import 'package:balancei_app/data/datasource/dao/available_icon_dao.dart';
import 'package:balancei_app/data/mappers/base_picker_mapper.dart';
import 'package:balancei_app/data/repository/picker/picker_repository.dart';
import 'package:balancei_app/domain/entities/picker/base_picker_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

final pickerRepositoryProvider = Provider<PickerRepository>((ref) {
  final availableColorDao = ref.read(availableColorDaoProvider);
  final availableIconDao = ref.read(availableIconDaoProvider);
  return RemotePickerRepository(
    availableColorDao: availableColorDao,
    availableIconDao: availableIconDao,
  );
});

class RemotePickerRepository implements PickerRepository {
  final AvailableColorDao _availableColorDao;
  final AvailableIconDao _availableIconDao;

  RemotePickerRepository({
    required AvailableColorDao availableColorDao,
    required AvailableIconDao availableIconDao,
  })  : _availableColorDao = availableColorDao,
        _availableIconDao = availableIconDao;

  @override
  AsyncResult<List<BasePickerEntity>> getAvailableColors() async {
    return _availableColorDao.getAllAvailableColors().flatMap(
          (colors) => Success(
            colors.map(BasePickerMapper.fromColorsDatabase).toList(),
          ),
        );
  }

  @override
  AsyncResult<List<BasePickerEntity>> getAvailableIcons() async {
    return _availableIconDao.getAllAvailableIcons().flatMap(
          (icons) => Success(
            icons.map(BasePickerMapper.mapIcons).toList(),
          ),
        );
  }
}
