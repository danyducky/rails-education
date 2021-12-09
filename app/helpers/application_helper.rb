module ApplicationHelper
  def to_readable_date(date)
    date.localtime.strftime('%Y.%m.%d %I:%M:%S')
  end
end
