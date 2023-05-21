import 'package:clean_arch/app/modules/home/data/shared/response/response_presentation.dart';
import 'package:clean_arch/app/modules/home/domain/repositories/get_users_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'get_users_usecase.dart';

final $GetUsersUseCaseImpl = Bind.singleton((i) => GetUsersUseCaseImpl(i()));

class GetUsersUseCaseImpl implements GetUsersUseCase {

  GetUsersUseCaseImpl(this._getUsersRepository);

  final GetUsersRepository _getUsersRepository;

  @override
  Future<ResponsePresentation> call() async{
    try {
      var res = await _getUsersRepository();
      return ResponsePresentation(sucess: true, body: res);
    } catch (e) {
      return ResponsePresentation(sucess: false, message: e.toString());
    }
  }
}
  