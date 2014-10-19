class Location::Bar < Location
  def connections
    [:courtyard]
  end

  def describe
    'Apart from the <strong>wine</strong> being seemingly infinite, this is a fairly ordinary <strong>bar</strong>.'
  end
end
