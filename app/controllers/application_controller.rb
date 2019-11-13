class ApplicationController < ActionController::Base
  def filter_by_dates
    start_day = params[:start_day] || "2019/10/1"
    end_day   = params[:end_day]   || "2020/10/1"

    {
      start_day: Date.parse(start_day),
      end_day:   Date.parse(end_day)
    }
  end
end
