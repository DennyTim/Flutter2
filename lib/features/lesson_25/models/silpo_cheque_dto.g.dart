// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'silpo_cheque_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SilpoChequeDto _$SilpoChequeDtoFromJson(Map<String, dynamic> json) =>
    SilpoChequeDto(
      chPrediction: json['chPrediction'] as String?,
      chequeMagicName: json['chequeMagicName'] as String?,
      sumDiscount: (json['sumDiscount'] as num?)?.toDouble(),
      sumCashback: (json['sumCashback'] as num?)?.toDouble(),
      chequeHeader: json['chequeHeader'] == null
          ? null
          : ChequeHeaderDto.fromJson(
              json['chequeHeader'] as Map<String, dynamic>,
            ),
      chequeActions: (json['chequeActions'] as List<dynamic>?)
          ?.map((e) => ChequeActionsItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      chequeLines: (json['chequeLines'] as List<dynamic>?)
          ?.map((e) => ChequeLinesItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      feedbackRates: json['feedbackRates'] as List<dynamic>?,
    );

Map<String, dynamic> _$SilpoChequeDtoToJson(SilpoChequeDto instance) =>
    <String, dynamic>{
      'chPrediction': instance.chPrediction,
      'chequeMagicName': instance.chequeMagicName,
      'sumDiscount': instance.sumDiscount,
      'sumCashback': instance.sumCashback,
      'chequeHeader': instance.chequeHeader,
      'chequeActions': instance.chequeActions,
      'chequeLines': instance.chequeLines,
      'feedbackRates': instance.feedbackRates,
    };

ChequeActionsItemDto _$ChequeActionsItemDtoFromJson(
  Map<String, dynamic> json,
) => ChequeActionsItemDto(
  actionType: (json['actionType'] as num?)?.toInt(),
  actionTypeCodeName: json['actionTypeCodeName'] as String?,
  actionId: (json['actionId'] as num?)?.toInt(),
  discpercent: (json['discpercent'] as num?)?.toInt(),
  discount: (json['discount'] as num?)?.toInt(),
  varcharData: json['varcharData'] as String?,
);

Map<String, dynamic> _$ChequeActionsItemDtoToJson(
  ChequeActionsItemDto instance,
) => <String, dynamic>{
  'actionType': instance.actionType,
  'actionTypeCodeName': instance.actionTypeCodeName,
  'actionId': instance.actionId,
  'discpercent': instance.discpercent,
  'discount': instance.discount,
  'varcharData': instance.varcharData,
};

ChequeHeaderDto _$ChequeHeaderDtoFromJson(Map<String, dynamic> json) =>
    ChequeHeaderDto(
      filId: (json['filId'] as num?)?.toInt(),
      chequeId: (json['chequeId'] as num?)?.toInt(),
      created: json['created'] as String?,
      loyaltyFactId: (json['loyaltyFactId'] as num?)?.toInt(),
      businessCardId: (json['businessCardId'] as num?)?.toInt(),
      sumReg: (json['sumReg'] as num?)?.toDouble(),
      sumBalance: (json['sumBalance'] as num?)?.toDouble(),
      filialName: json['filialName'] as String?,
      cityName: json['cityName'] as String?,
      frId: (json['frId'] as num?)?.toInt(),
      zId: (json['zId'] as num?)?.toInt(),
      frChequeId: (json['frChequeId'] as num?)?.toInt(),
      payType: (json['payType'] as num?)?.toInt(),
      payTypeArray: json['payTypeArray'] as List<dynamic>?,
      fiscalNumber: json['fiscalNumber'] as String?,
      externalOperationId: json['externalOperationId'] as String?,
    );

Map<String, dynamic> _$ChequeHeaderDtoToJson(ChequeHeaderDto instance) =>
    <String, dynamic>{
      'filId': instance.filId,
      'chequeId': instance.chequeId,
      'created': instance.created,
      'loyaltyFactId': instance.loyaltyFactId,
      'businessCardId': instance.businessCardId,
      'sumReg': instance.sumReg,
      'sumBalance': instance.sumBalance,
      'filialName': instance.filialName,
      'cityName': instance.cityName,
      'frId': instance.frId,
      'zId': instance.zId,
      'frChequeId': instance.frChequeId,
      'payType': instance.payType,
      'payTypeArray': instance.payTypeArray,
      'fiscalNumber': instance.fiscalNumber,
      'externalOperationId': instance.externalOperationId,
    };

ChequeLinesItemDto _$ChequeLinesItemDtoFromJson(Map<String, dynamic> json) =>
    ChequeLinesItemDto(
      chequeLineId: (json['chequeLineId'] as num?)?.toInt(),
      lagerId: (json['lagerId'] as num?)?.toInt(),
      lagerNameUA: json['lagerNameUA'] as String?,
      lagerUnit: json['lagerUnit'] as String?,
      kolvo: (json['kolvo'] as num?)?.toInt(),
      priceOut: (json['priceOut'] as num?)?.toDouble(),
      unitText: json['unitText'] as String?,
      fileName: json['fileName'] as String?,
      sumCashbackLine: (json['sumCashbackLine'] as num?)?.toInt(),
      additionalData: json['additionalData'] == null
          ? null
          : ChequeLinesItemAdditionalDataDto.fromJson(
              json['additionalData'] as Map<String, dynamic>,
            ),
      like: json['like'] == null
          ? null
          : ChequeLinesItemLikesDto.fromJson(
              json['like'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ChequeLinesItemDtoToJson(ChequeLinesItemDto instance) =>
    <String, dynamic>{
      'chequeLineId': instance.chequeLineId,
      'lagerId': instance.lagerId,
      'lagerNameUA': instance.lagerNameUA,
      'lagerUnit': instance.lagerUnit,
      'kolvo': instance.kolvo,
      'priceOut': instance.priceOut,
      'unitText': instance.unitText,
      'fileName': instance.fileName,
      'sumCashbackLine': instance.sumCashbackLine,
      'additionalData': instance.additionalData,
      'like': instance.like,
    };

ChequeLinesItemAdditionalDataDto _$ChequeLinesItemAdditionalDataDtoFromJson(
  Map<String, dynamic> json,
) => ChequeLinesItemAdditionalDataDto(
  id: json['id'] as String?,
  title: json['title'] as String?,
  icon: json['icon'] as String?,
  ratio: json['ratio'] as String?,
  sectionSlug: json['sectionSlug'] as String?,
  companyId: json['companyId'] as String?,
  externalProductId: json['externalProductId'] as String?,
  slug: json['slug'] as String?,
  classifierSapId: json['classifierSapId'] as String?,
  brandId: json['brandId'] as String?,
  brandTitle: json['brandTitle'] as String?,
  weighted: json['weighted'] as bool?,
  departmentName: json['departmentName'] as String?,
  barcodes: (json['barcodes'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  weight: (json['weight'] as num?)?.toDouble(),
  scanExcise: json['scanExcise'] as bool?,
);

Map<String, dynamic> _$ChequeLinesItemAdditionalDataDtoToJson(
  ChequeLinesItemAdditionalDataDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'icon': instance.icon,
  'ratio': instance.ratio,
  'sectionSlug': instance.sectionSlug,
  'companyId': instance.companyId,
  'externalProductId': instance.externalProductId,
  'slug': instance.slug,
  'classifierSapId': instance.classifierSapId,
  'brandId': instance.brandId,
  'brandTitle': instance.brandTitle,
  'weighted': instance.weighted,
  'departmentName': instance.departmentName,
  'barcodes': instance.barcodes,
  'weight': instance.weight,
  'scanExcise': instance.scanExcise,
};

ChequeLinesItemLikesDto _$ChequeLinesItemLikesDtoFromJson(
  Map<String, dynamic> json,
) => ChequeLinesItemLikesDto(contains: json['contains'] as bool?);

Map<String, dynamic> _$ChequeLinesItemLikesDtoToJson(
  ChequeLinesItemLikesDto instance,
) => <String, dynamic>{'contains': instance.contains};
