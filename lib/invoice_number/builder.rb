module InvoiceNumber
  class Builder

    attr_accessor :prefix, :placeholder

    def initialize(options = {})
      @prefix = options[:prefix] || 'INVOICE'
      @placeholder = options[:placeholder] || '0000000'
    end

    def create(last_number = nil)
      if last_number.present?
        new_number = inc_invoice_number(last_number)
        if new_number.present?
          return "#{prefix}-#{placeholder[(new_number.to_s.size)..(placeholder.size)]}#{new_number}"
        end
      else
        return "#{prefix}-0000001"
      end
    end

    private

    def inc_invoice_number(last_number)
      last_number.split(/#{prefix}-/).at(1).to_i + 1
    end

  end
end