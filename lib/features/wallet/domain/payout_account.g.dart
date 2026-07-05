// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payout_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayoutAccountImpl _$$PayoutAccountImplFromJson(Map<String, dynamic> json) =>
    _$PayoutAccountImpl(
      id: (json['id'] as num).toInt(),
      accountType: json['account_type'] as String,
      holderName: json['holder_name'] as String,
      bankName: json['bank_name'] as String?,
      branchCode: json['branch_code'] as String?,
      isDefault: json['is_default'] as bool,
      isVerified: json['is_verified'] as bool,
      verifiedAt: json['verified_at'] as String?,
    );

Map<String, dynamic> _$$PayoutAccountImplToJson(_$PayoutAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_type': instance.accountType,
      'holder_name': instance.holderName,
      'bank_name': instance.bankName,
      'branch_code': instance.branchCode,
      'is_default': instance.isDefault,
      'is_verified': instance.isVerified,
      'verified_at': instance.verifiedAt,
    };
