@EndUserText.label: 'Consumption View of Sales Head'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity Z27D_C_RAP_HEAD
  provider contract transactional_query
   as projection on Z27D_I_RAP_HEAD
{
    key sales_doc,
    created_at,
    created_by,
    sales_org,
    sales_dist,
    sales_div,
    total_cost,
    cost_currency,
    block,
    block_status,
    block_status_msg,
    LastChangedTimestamp,
    /* Associations */
    _soItem : redirected to composition child Z27D_C_RAP_ITEM
}
