resource "stripe_customer" "customers" {
  for_each = var.customers

  balance               = each.value.balance
  business_name         = each.value.business_name
  default_source        = each.value.default_source
  description           = each.value.description
  email                 = each.value.email
  individual_name       = each.value.individual_name
  invoice_prefix        = each.value.invoice_prefix
  metadata              = each.value.metadata
  name                  = each.value.name
  next_invoice_sequence = each.value.next_invoice_sequence
  payment_method        = each.value.payment_method
  phone                 = each.value.phone
  preferred_locales     = each.value.preferred_locales
  source                = each.value.source
  tax_exempt            = each.value.tax_exempt
  test_clock            = each.value.test_clock
  validate              = each.value.validate

  dynamic "address" {
    for_each = each.value.address != null ? each.value.address : []
    content {
      city        = address.value.city
      country     = address.value.country
      line1       = address.value.line1
      line2       = address.value.line2
      postal_code = address.value.postal_code
      state       = address.value.state
    }
  }

  dynamic "cash_balance" {
    for_each = each.value.cash_balance != null ? each.value.cash_balance : []
    content {
      dynamic "settings" {
        for_each = cash_balance.value.settings != null ? cash_balance.value.settings : []
        content {
          reconciliation_mode = settings.value.reconciliation_mode
        }
      }
    }
  }

  dynamic "invoice_settings" {
    for_each = each.value.invoice_settings != null ? each.value.invoice_settings : []
    content {
      custom_fields          = invoice_settings.value.custom_fields
      default_payment_method = invoice_settings.value.default_payment_method
      footer                 = invoice_settings.value.footer
      dynamic "rendering_options" {
        for_each = invoice_settings.value.rendering_options != null ? invoice_settings.value.rendering_options : []
        content {
          amount_tax_display = rendering_options.value.amount_tax_display
          template           = rendering_options.value.template
        }
      }
    }
  }

  dynamic "shipping" {
    for_each = each.value.shipping != null ? each.value.shipping : []
    content {
      dynamic "address" {
        for_each = shipping.value.address != null ? shipping.value.address : []
        content {
          city        = address.value.city
          country     = address.value.country
          line1       = address.value.line1
          line2       = address.value.line2
          postal_code = address.value.postal_code
          state       = address.value.state
        }
      }
      name  = shipping.value.name
      phone = shipping.value.phone
    }
  }

  dynamic "tax" {
    for_each = each.value.tax != null ? each.value.tax : []
    content {
      ip_address = tax.value.ip_address
      dynamic "location" {
        for_each = tax.value.location != null ? tax.value.location : []
        content {
        }
      }
      validate_location = tax.value.validate_location
    }
  }

  dynamic "tax_id_data" {
    for_each = each.value.tax_id_data != null ? each.value.tax_id_data : []
    content {
      type  = tax_id_data.value.type
      value = tax_id_data.value.value
    }
  }
}

