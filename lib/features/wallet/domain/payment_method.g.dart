// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodImpl _$$PaymentMethodImplFromJson(Map<String, dynamic> json) =>
    _$PaymentMethodImpl(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      logoUrl: json['logo_url'] as String?,
      isActive: json['is_active'] as bool,
      isDefault: json['is_default'] as bool,
      paymentFlow: json['payment_flow'] as String?,
      supportedCurrencies:
          json['supported_currencies'] == null
              ? const []
              : _toStringList(json['supported_currencies']),
      minAmount: _toNullableDouble(json['min_amount']),
      maxAmount: _toNullableDouble(json['max_amount']),
      settlementDays: (json['settlement_days'] as num?)?.toInt(),
      displayOrder: (json['display_order'] as num?)?.toInt(),
      isPreferred: json['is_preferred'] as bool?,
      isConfigured: json['is_configured'] as bool?,
    );

Map<String, dynamic> _$$PaymentMethodImplToJson(_$PaymentMethodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'logo_url': instance.logoUrl,
      'is_active': instance.isActive,
      'is_default': instance.isDefault,
      'payment_flow': instance.paymentFlow,
      'supported_currencies': instance.supportedCurrencies,
      'min_amount': instance.minAmount,
      'max_amount': instance.maxAmount,
      'settlement_days': instance.settlementDays,
      'display_order': instance.displayOrder,
      'is_preferred': instance.isPreferred,
      'is_configured': instance.isConfigured,
    };
