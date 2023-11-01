@EndUserText.label: 'Consumption View for Attachements'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity Y27D_C_ATTACH_DUP_RAP
  as projection on Y27D_I_ATTACH_DUP_RAP
{
    key sales_doc,
    key item_positon,
    key attach_Id,
    Attachment,
    MimeType,
    Filename,
    Comments,
    
    /* Associations */
    _sohead : redirected to Z27D_C_RAP_HEAD,
    _soItem : redirected to parent Z27D_C_RAP_ITEM
}
