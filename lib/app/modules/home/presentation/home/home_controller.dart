import 'package:clean_arch/app/modules/home/data/shared/response/response_presentation.dart';
import 'package:clean_arch/app/modules/home/domain/models/dtos/user_dto.dart';
import 'package:clean_arch/app/modules/home/domain/usecases/get_users_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';


final $HomeController = Bind.singleton((i) => HomeController(i()));

class HomeController{
  HomeController(this._getUsersUseCase);
  final GetUsersUseCase _getUsersUseCase;
  List<UserDto> contacts = [];
  Future<void> getData() async {
    ResponsePresentation res = await _getUsersUseCase();
    if(!res.sucess){
      contacts = [];
      return;
    }

    contacts = res.body as List<UserDto>;

  }
}