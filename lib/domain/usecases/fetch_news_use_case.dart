
import 'package:tuple/tuple.dart';

import '../../app/core/usecases/param_usecase.dart';
import '../entities/paging.dart';
import '../repositories/article_repository.dart';

class FetchNewsUseCase extends ParamUseCase<Paging, Tuple3<String, int, int>> {
  final ArticleRepository _repo;
  FetchNewsUseCase(this._repo);

  @override
  Future<Paging> execute(Tuple3 param) {
    return _repo.fetchNewsByCategory(param.item1, param.item2, param.item3);
  }
}
