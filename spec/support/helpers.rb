module Helpers
  def now
    Time.zone.now
  end

  def database_adapter
    REPORTS_KIT_DATABASE_ADAPTER
  end

  def format_criteria_time(time)
    time.strftime('%b %-d, %Y')
  end

  def format_day_offset(day_offset)
    ReportsKit::Reports::Data::Utils.format_display_time((now - day_offset.days))
  end

  def format_week_offset(week_offset)
    ReportsKit::Reports::Data::Utils.format_display_time((now - week_offset.weeks).beginning_of_week(ReportsKit.configuration.first_day_of_week))
  end
end
