output "customers_id" {
  description = "Map of id values across all customers, keyed the same as var.customers except keys with no id are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "customers_address" {
  description = "Map of address values across all customers, keyed the same as var.customers except keys with no address are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.address if v.address != null && length(v.address) > 0 }
}
output "customers_balance" {
  description = "Map of balance values across all customers, keyed the same as var.customers except keys with no balance are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.balance if v.balance != null }
}
output "customers_business_name" {
  description = "Map of business_name values across all customers, keyed the same as var.customers except keys with no business_name are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.business_name if v.business_name != null && length(v.business_name) > 0 }
}
output "customers_cash_balance" {
  description = "Map of cash_balance values across all customers, keyed the same as var.customers except keys with no cash_balance are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.cash_balance if v.cash_balance != null && length(v.cash_balance) > 0 }
}
output "customers_created" {
  description = "Map of created values across all customers, keyed the same as var.customers except keys with no created are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.created if v.created != null }
}
output "customers_currency" {
  description = "Map of currency values across all customers, keyed the same as var.customers except keys with no currency are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.currency if v.currency != null && length(v.currency) > 0 }
}
output "customers_customer_account" {
  description = "Map of customer_account values across all customers, keyed the same as var.customers except keys with no customer_account are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.customer_account if v.customer_account != null && length(v.customer_account) > 0 }
}
output "customers_default_source" {
  description = "Map of default_source values across all customers, keyed the same as var.customers except keys with no default_source are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.default_source if v.default_source != null && length(v.default_source) > 0 }
}
output "customers_delinquent" {
  description = "Map of delinquent values across all customers, keyed the same as var.customers except keys with no delinquent are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.delinquent if v.delinquent != null }
}
output "customers_description" {
  description = "Map of description values across all customers, keyed the same as var.customers except keys with no description are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "customers_discount" {
  description = "Map of discount values across all customers, keyed the same as var.customers except keys with no discount are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.discount if v.discount != null && length(v.discount) > 0 }
}
output "customers_email" {
  description = "Map of email values across all customers, keyed the same as var.customers except keys with no email are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.email if v.email != null && length(v.email) > 0 }
}
output "customers_individual_name" {
  description = "Map of individual_name values across all customers, keyed the same as var.customers except keys with no individual_name are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.individual_name if v.individual_name != null && length(v.individual_name) > 0 }
}
output "customers_invoice_credit_balance" {
  description = "Map of invoice_credit_balance values across all customers, keyed the same as var.customers except keys with no invoice_credit_balance are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.invoice_credit_balance if v.invoice_credit_balance != null && length(v.invoice_credit_balance) > 0 }
}
output "customers_invoice_prefix" {
  description = "Map of invoice_prefix values across all customers, keyed the same as var.customers except keys with no invoice_prefix are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.invoice_prefix if v.invoice_prefix != null && length(v.invoice_prefix) > 0 }
}
output "customers_invoice_settings" {
  description = "Map of invoice_settings values across all customers, keyed the same as var.customers except keys with no invoice_settings are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.invoice_settings if v.invoice_settings != null && length(v.invoice_settings) > 0 }
}
output "customers_livemode" {
  description = "Map of livemode values across all customers, keyed the same as var.customers except keys with no livemode are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.livemode if v.livemode != null }
}
output "customers_metadata" {
  description = "Map of metadata values across all customers, keyed the same as var.customers except keys with no metadata are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "customers_name" {
  description = "Map of name values across all customers, keyed the same as var.customers except keys with no name are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "customers_next_invoice_sequence" {
  description = "Map of next_invoice_sequence values across all customers, keyed the same as var.customers except keys with no next_invoice_sequence are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.next_invoice_sequence if v.next_invoice_sequence != null }
}
output "customers_object" {
  description = "Map of object values across all customers, keyed the same as var.customers except keys with no object are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.object if v.object != null && length(v.object) > 0 }
}
output "customers_payment_method" {
  description = "Map of payment_method values across all customers, keyed the same as var.customers except keys with no payment_method are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.payment_method if v.payment_method != null && length(v.payment_method) > 0 }
}
output "customers_phone" {
  description = "Map of phone values across all customers, keyed the same as var.customers except keys with no phone are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.phone if v.phone != null && length(v.phone) > 0 }
}
output "customers_preferred_locales" {
  description = "Map of preferred_locales values across all customers, keyed the same as var.customers except keys with no preferred_locales are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.preferred_locales if v.preferred_locales != null && length(v.preferred_locales) > 0 }
}
output "customers_shipping" {
  description = "Map of shipping values across all customers, keyed the same as var.customers except keys with no shipping are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.shipping if v.shipping != null && length(v.shipping) > 0 }
}
output "customers_tax" {
  description = "Map of tax values across all customers, keyed the same as var.customers except keys with no tax are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.tax if v.tax != null && length(v.tax) > 0 }
}
output "customers_tax_exempt" {
  description = "Map of tax_exempt values across all customers, keyed the same as var.customers except keys with no tax_exempt are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.tax_exempt if v.tax_exempt != null && length(v.tax_exempt) > 0 }
}
output "customers_tax_id_data" {
  description = "Map of tax_id_data values across all customers, keyed the same as var.customers except keys with no tax_id_data are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.tax_id_data if v.tax_id_data != null && length(v.tax_id_data) > 0 }
}
output "customers_test_clock" {
  description = "Map of test_clock values across all customers, keyed the same as var.customers except keys with no test_clock are omitted"
  value       = { for k, v in stripe_customer.customers : k => v.test_clock if v.test_clock != null && length(v.test_clock) > 0 }
}

