variable "customers" {
  description = <<EOT
Map of customers, attributes below
Optional:
    - balance
    - business_name
    - default_source
    - description
    - email
    - individual_name
    - invoice_prefix
    - metadata
    - name
    - next_invoice_sequence
    - payment_method
    - phone
    - preferred_locales
    - source
    - tax_exempt
    - test_clock
    - validate
    - address (block):
        - city (optional)
        - country (optional)
        - line1 (optional)
        - line2 (optional)
        - postal_code (optional)
        - state (optional)
    - cash_balance (block):
        - settings (optional, block):
            - reconciliation_mode (optional)
    - invoice_settings (block):
        - custom_fields (optional, block):
            - name (required)
            - value (required)
        - default_payment_method (optional)
        - footer (optional)
        - rendering_options (optional, block):
            - amount_tax_display (optional)
            - template (optional)
    - shipping (block):
        - address (optional, block):
            - city (optional)
            - country (optional)
            - line1 (optional)
            - line2 (optional)
            - postal_code (optional)
            - state (optional)
        - name (required)
        - phone (optional)
    - tax (block):
        - ip_address (optional)
        - location (optional, block):
        - validate_location (optional)
    - tax_id_data (block):
        - type (required)
        - value (required)
EOT

  type = map(object({
    balance               = optional(number)
    business_name         = optional(string)
    default_source        = optional(string)
    description           = optional(string)
    email                 = optional(string)
    individual_name       = optional(string)
    invoice_prefix        = optional(string)
    metadata              = optional(map(string))
    name                  = optional(string)
    next_invoice_sequence = optional(number)
    payment_method        = optional(string)
    phone                 = optional(string)
    preferred_locales     = optional(list(string))
    source                = optional(string)
    tax_exempt            = optional(string)
    test_clock            = optional(string)
    validate              = optional(bool)
    address = optional(list(object({
      city        = optional(string)
      country     = optional(string)
      line1       = optional(string)
      line2       = optional(string)
      postal_code = optional(string)
      state       = optional(string)
    })))
    cash_balance = optional(list(object({
      settings = optional(list(object({
        reconciliation_mode = optional(string)
      })))
    })))
    invoice_settings = optional(list(object({
      custom_fields = optional(list(object({
        name  = string
        value = string
      })))
      default_payment_method = optional(string)
      footer                 = optional(string)
      rendering_options = optional(list(object({
        amount_tax_display = optional(string)
        template           = optional(string)
      })))
    })))
    shipping = optional(list(object({
      address = optional(list(object({
        city        = optional(string)
        country     = optional(string)
        line1       = optional(string)
        line2       = optional(string)
        postal_code = optional(string)
        state       = optional(string)
      })))
      name  = string
      phone = optional(string)
    })))
    tax = optional(list(object({
      ip_address = optional(string)
      location = optional(list(object({
      })))
      validate_location = optional(string)
    })))
    tax_id_data = optional(list(object({
      type  = string
      value = string
    })))
  }))
}

