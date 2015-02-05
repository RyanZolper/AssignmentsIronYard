class InvoiceItem

  attr_accessor :product_name, :sale_price, :quantity, :tax_percentage


  def sp(pretax)
    @sale_price = pretax.to_i
  end

  def qn(quant)
    @quantity = quant.to_i
  end

  def tp(tpct)
    @tax_percentage = tpct.to_f / 100
  end

  def totalprice
    totalpretax = @sale_price * @quantity
    total = totalpretax * (1 + @tax_percentage)
    total.round(2)
  end

end
