import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feature_state.dart';
part 'feature_cubit.freezed.dart';

class FeatureCubit extends Cubit<FeatureState> {
  FeatureCubit() : super(FeatureState.initial());
}
