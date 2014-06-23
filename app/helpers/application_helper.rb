module ApplicationHelper
  def set_title(title)
    if (title)
      "#{title} | Oncampus"
    else
      "Oncampus"
    end
  end

  def class_schedule(start_date, end_date)
    "This class runs from #{start_date.strftime('%Y/%m/%d')} to #{end_date.strftime('%Y/%m/%d')}."
  end
end
