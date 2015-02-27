module ApplicationHelper

  def standard_date(date)
    date.strftime("%Y-%B-%d") if date
  end
  
end
