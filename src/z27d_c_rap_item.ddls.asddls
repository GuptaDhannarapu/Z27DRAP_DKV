@EndUserText.label: 'Sales Item consumption View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity Z27D_C_RAP_ITEM as projection on Z27D_I_RAP_ITEM
{
    key sales_doc,
    key item_position,
    mat_num,
    mat_desc,
    unit_cost,
    total_item_cost,
    cost_currency,
    quanity,
    unit,
    last_changed,
    /* Associations */
    _sohead : redirected to parent Z27D_C_RAP_HEAD,
    _soAttach : redirected to composition child Y27D_C_ATTACH_DUP_RAP
}
