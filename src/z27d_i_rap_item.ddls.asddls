@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Item interface View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z27D_I_RAP_ITEM as select from y27d_db_vbap
association to parent Z27D_I_RAP_HEAD as _sohead on
$projection.sales_doc = _sohead.sales_doc
composition[0..*] of Y27D_I_ATTACH_DUP_RAP as _soAttach
{
    key vbeln as sales_doc,
    key posnr as item_position,
    matnr as mat_num,
    @Semantics.text: true
    arktx as mat_desc,
    
    @Semantics.amount.currencyCode: 'cost_currency'
    netpr as unit_cost,
    
    @Semantics.amount.currencyCode: 'cost_currency'
    netwr as total_item_cost,
    waerk as cost_currency,
    
    @Semantics.quantity.unitOfMeasure: 'unit'
    kpein as quanity,
    kmein as unit,
    
    @Semantics.systemDateTime.createdAt: true
    last_changed_timestamp as last_changed,
    _sohead,
    _soAttach
}
