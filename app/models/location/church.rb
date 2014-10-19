class Location::Church < Location
  def connections
    [:courtyard, :church_library]
  end

  def describe
    'Spider webs bar my way! It seems libraries aren\'t that popular nowadays'
  end
end
