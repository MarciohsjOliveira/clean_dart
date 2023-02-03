
import 'package:tuple/tuple.dart';

import '../../app/core/usecases/param_usecase.dart';
import '../entities/paging.dart';
import '../repositories/article_repository.dart';

class FetchHeadlineUseCase extends ParamUseCase<Paging, Tuple2<int, int>> {
  final ArticleRepository _repo;
  FetchHeadlineUseCase(this._repo);

  @override
  Future<Paging> execute(Tuple2 param) {
    return _repo.fetchHeadline(param.item1, param.item2);
  }
}
