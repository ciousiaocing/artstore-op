Pay2go.setup do |pay2go|
  if Rails.env.development?
    pay2go.merchant_id = "12198269"

    pay2go.hash_key    = "vyhqJC01Fxy8NGhJ99mayMJc7HWtg44L"
    pay2go.hash_iv     = "CmcmZcnEJWNwC4fM"
    pay2go.service_url = "https://capi.pay2go.com/MPG/mpg_gateway"
  else
    pay2go.merchant_id = ""

    pay2go.hash_key    = ""
    pay2go.hash_iv     = ""
    pay2go.service_url = "https://api.pay2go.com/MPG/mpg_gateway"
  end
end
