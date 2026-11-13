output "customers_id" {
  description = "Map of id values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.id }
}
output "customers_address" {
  description = "Map of address values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.address }
}
output "customers_balance" {
  description = "Map of balance values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.balance }
}
output "customers_business_name" {
  description = "Map of business_name values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.business_name }
}
output "customers_cash_balance" {
  description = "Map of cash_balance values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.cash_balance }
}
output "customers_created" {
  description = "Map of created values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.created }
}
output "customers_currency" {
  description = "Map of currency values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.currency }
}
output "customers_customer_account" {
  description = "Map of customer_account values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.customer_account }
}
output "customers_default_source" {
  description = "Map of default_source values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.default_source }
}
output "customers_delinquent" {
  description = "Map of delinquent values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.delinquent }
}
output "customers_description" {
  description = "Map of description values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.description }
}
output "customers_discount" {
  description = "Map of discount values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.discount }
}
output "customers_email" {
  description = "Map of email values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.email }
}
output "customers_individual_name" {
  description = "Map of individual_name values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.individual_name }
}
output "customers_invoice_credit_balance" {
  description = "Map of invoice_credit_balance values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.invoice_credit_balance }
}
output "customers_invoice_prefix" {
  description = "Map of invoice_prefix values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.invoice_prefix }
}
output "customers_invoice_settings" {
  description = "Map of invoice_settings values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.invoice_settings }
}
output "customers_livemode" {
  description = "Map of livemode values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.livemode }
}
output "customers_metadata" {
  description = "Map of metadata values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.metadata }
}
output "customers_name" {
  description = "Map of name values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.name }
}
output "customers_next_invoice_sequence" {
  description = "Map of next_invoice_sequence values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.next_invoice_sequence }
}
output "customers_object" {
  description = "Map of object values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.object }
}
output "customers_payment_method" {
  description = "Map of payment_method values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.payment_method }
}
output "customers_phone" {
  description = "Map of phone values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.phone }
}
output "customers_preferred_locales" {
  description = "Map of preferred_locales values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.preferred_locales }
}
output "customers_shipping" {
  description = "Map of shipping values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.shipping }
}
output "customers_tax" {
  description = "Map of tax values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.tax }
}
output "customers_tax_exempt" {
  description = "Map of tax_exempt values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.tax_exempt }
}
output "customers_tax_id_data" {
  description = "Map of tax_id_data values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.tax_id_data }
}
output "customers_test_clock" {
  description = "Map of test_clock values across all customers, keyed the same as var.customers"
  value       = { for k, v in stripe_customer.customers : k => v.test_clock }
}

