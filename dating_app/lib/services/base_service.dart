
import '../app_dependencies.dart';
import '../network/netword.dart';

abstract class BaseService {
  final dio = AppDependencies.injector.get<BaseDio>();
}
