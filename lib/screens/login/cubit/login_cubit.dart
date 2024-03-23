import 'dart:developer';

import 'package:application_flutter/common/storage/app_prefs.dart';
import 'package:application_flutter/common/ui_helpers.dart';
import 'package:application_flutter/get_it.dart';
import 'package:application_flutter/models/user/request/login_request.dart';
import 'package:application_flutter/models/user/user_pres.dart';
import 'package:application_flutter/repositories/data_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  final dataRepository = getIt<DataRepository>();
  final appPrefs = getIt<AppPref>();
  LoginCubit() : super(const LoginCubitState.initial(data: LoginStateData()));

  void login({required String email, required String password}) async {
    try {
      UIHelpers.showLoading();
      emit(LoginCubitState.getError(data: state.data!.copyWith(error: '')));
      if (email.isEmpty) {
        emit(LoginCubitState.getError(
            data: state.data!.copyWith(error: 'Email không được để trống')));
      } else if (password.isEmpty) {
        emit(LoginCubitState.getError(
            data: state.data!.copyWith(error: 'Mật khẩu không được để trống')));
      } else {
        final request = LoginRequest(email: email, password: password);
        final response = await dataRepository.login(request: request);
        log(response.toString());
        if (response.isSuccessed == true) {
          emit(LoginCubitState.getError(
              data: state.data!.copyWith(error: 'Success')));
          await appPrefs.saveToken(tokenJson: response.toRawJson());
          await UserPreferences.saveUserFromToken(token: response.resultObj);
        } else {
          UIHelpers.showSnackBar(message: response.message);
          emit(LoginCubitState.getError(
              data: state.data!.copyWith(error: response.message)));
        }
      }
    } catch (error) {
      debugPrint('Login Error: $error');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void showPass(bool value) {
    emit(LoginCubitState.showPass(data: state.data!.copyWith(showPass: value)));
  }
}
