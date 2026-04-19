// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daycare_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DaycareState {

 double get happiness; double get energy; double get hunger;
/// Create a copy of DaycareState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DaycareStateCopyWith<DaycareState> get copyWith => _$DaycareStateCopyWithImpl<DaycareState>(this as DaycareState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DaycareState&&(identical(other.happiness, happiness) || other.happiness == happiness)&&(identical(other.energy, energy) || other.energy == energy)&&(identical(other.hunger, hunger) || other.hunger == hunger));
}


@override
int get hashCode => Object.hash(runtimeType,happiness,energy,hunger);

@override
String toString() {
  return 'DaycareState(happiness: $happiness, energy: $energy, hunger: $hunger)';
}


}

/// @nodoc
abstract mixin class $DaycareStateCopyWith<$Res>  {
  factory $DaycareStateCopyWith(DaycareState value, $Res Function(DaycareState) _then) = _$DaycareStateCopyWithImpl;
@useResult
$Res call({
 double happiness, double energy, double hunger
});




}
/// @nodoc
class _$DaycareStateCopyWithImpl<$Res>
    implements $DaycareStateCopyWith<$Res> {
  _$DaycareStateCopyWithImpl(this._self, this._then);

  final DaycareState _self;
  final $Res Function(DaycareState) _then;

/// Create a copy of DaycareState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? happiness = null,Object? energy = null,Object? hunger = null,}) {
  return _then(_self.copyWith(
happiness: null == happiness ? _self.happiness : happiness // ignore: cast_nullable_to_non_nullable
as double,energy: null == energy ? _self.energy : energy // ignore: cast_nullable_to_non_nullable
as double,hunger: null == hunger ? _self.hunger : hunger // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DaycareState].
extension DaycareStatePatterns on DaycareState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DaycareState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DaycareState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DaycareState value)  $default,){
final _that = this;
switch (_that) {
case _DaycareState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DaycareState value)?  $default,){
final _that = this;
switch (_that) {
case _DaycareState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double happiness,  double energy,  double hunger)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DaycareState() when $default != null:
return $default(_that.happiness,_that.energy,_that.hunger);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double happiness,  double energy,  double hunger)  $default,) {final _that = this;
switch (_that) {
case _DaycareState():
return $default(_that.happiness,_that.energy,_that.hunger);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double happiness,  double energy,  double hunger)?  $default,) {final _that = this;
switch (_that) {
case _DaycareState() when $default != null:
return $default(_that.happiness,_that.energy,_that.hunger);case _:
  return null;

}
}

}

/// @nodoc


class _DaycareState implements DaycareState {
  const _DaycareState({required this.happiness, required this.energy, required this.hunger});
  

@override final  double happiness;
@override final  double energy;
@override final  double hunger;

/// Create a copy of DaycareState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DaycareStateCopyWith<_DaycareState> get copyWith => __$DaycareStateCopyWithImpl<_DaycareState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DaycareState&&(identical(other.happiness, happiness) || other.happiness == happiness)&&(identical(other.energy, energy) || other.energy == energy)&&(identical(other.hunger, hunger) || other.hunger == hunger));
}


@override
int get hashCode => Object.hash(runtimeType,happiness,energy,hunger);

@override
String toString() {
  return 'DaycareState(happiness: $happiness, energy: $energy, hunger: $hunger)';
}


}

/// @nodoc
abstract mixin class _$DaycareStateCopyWith<$Res> implements $DaycareStateCopyWith<$Res> {
  factory _$DaycareStateCopyWith(_DaycareState value, $Res Function(_DaycareState) _then) = __$DaycareStateCopyWithImpl;
@override @useResult
$Res call({
 double happiness, double energy, double hunger
});




}
/// @nodoc
class __$DaycareStateCopyWithImpl<$Res>
    implements _$DaycareStateCopyWith<$Res> {
  __$DaycareStateCopyWithImpl(this._self, this._then);

  final _DaycareState _self;
  final $Res Function(_DaycareState) _then;

/// Create a copy of DaycareState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? happiness = null,Object? energy = null,Object? hunger = null,}) {
  return _then(_DaycareState(
happiness: null == happiness ? _self.happiness : happiness // ignore: cast_nullable_to_non_nullable
as double,energy: null == energy ? _self.energy : energy // ignore: cast_nullable_to_non_nullable
as double,hunger: null == hunger ? _self.hunger : hunger // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
