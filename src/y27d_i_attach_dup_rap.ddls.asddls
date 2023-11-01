@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Attachement'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Y27D_I_ATTACH_DUP_RAP as select from y27d_db_attach
association to parent Z27D_I_RAP_ITEM as _soItem on
$projection.sales_doc = _soItem.sales_doc and
$projection.item_positon = _soItem.item_position
association to Z27D_I_RAP_HEAD as _sohead
on $projection.sales_doc = _sohead.sales_doc
{
    key y27d_db_attach.vbeln as sales_doc,
    key y27d_db_attach.posnr as item_positon,
    key y27d_db_attach.attch_id as attach_Id,
      @Semantics.largeObject:
      { mimeType: 'MimeType',
      fileName: 'Filename',
      contentDispositionPreference: #INLINE }
//      @EndUserText.label: 'attachement'
      document            as Attachment,
      @Semantics.mimeType: true
      mimetype              as MimeType,
      filename              as Filename,
      comments              as Comments,
    _soItem,
    _sohead
    
}
