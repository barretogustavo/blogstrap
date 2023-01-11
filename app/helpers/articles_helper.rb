module ArticlesHelper
  def date_formatter(datetime)
    datetime.strftime('%B %e, %Y')
  end
end
