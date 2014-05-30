# InvoiceNumber

[![Build Status](https://api.travis-ci.org/aklaiber/invoice_number.svg)][travis]
[![Gem Version](http://img.shields.io/gem/v/invoice_number.svg)][gem]
[![Code Climate](https://codeclimate.com/github/aklaiber/invoice_number.png)][codeclimate]
[![Dependencies Status](http://img.shields.io/gemnasium/aklaiber/invoice_number.svg)][gemnasium]

[travis]: https://travis-ci.org/aklaiber/invoice_number
[gem]: https://rubygems.org/gems/invoice_number
[codeclimate]: https://codeclimate.com/github/aklaiber/invoice_number
[gemnasium]: https://gemnasium.com/aklaiber/invoice_number

A small and easy invoice number generator

## Installation

Add this line to your application's Gemfile:

    gem 'invoice_number'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install invoice_number

## Usage

``` ruby
  InvoiceNumber::Builder.new.create # => INVOICE-0000001
  InvoiceNumber::Builder.new.create('INVOICE-0000001') # => INVOICE-0000001
```

Change prefix:

``` ruby
  InvoiceNumber::Builder.new(prefix: 'INVOICE_NUMBER').create # => INVOICE_NUMBER-0000001 
  InvoiceNumber::Builder.new(prefix: 'INVOICE_NUMBER').create('INVOICE_NUMBER-0000001') # => INVOICE_NUMBER-0000002 
```

## Contributing

1. Fork it ( http://github.com/aklaiber/invoice_number/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
