require 'spec_helper'

describe InvoiceNumber::Builder  do

  let(:builder) { InvoiceNumber::Builder.new }

  it 'gets invoice number' do
    expect(builder.create).to eql('INVOICE-0000001')
  end

  context 'with last number' do
    it 'gets invoice number' do
      expect(builder.create('INVOICE-0000001')).to eql('INVOICE-0000002')
    end
  end

end