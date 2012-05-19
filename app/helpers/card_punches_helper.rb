module CardPunchesHelper
  LeapYearMonthDays=[31,29,31,30,31,30,31,31,30,31,30,31]
  CommonYearMonthDays=[31,28,31,30,31,30,31,31,30,31,30,31]
  def month_days(date)
    y = date.year
    m = date.month
    if ((y % 4 == 0) && (y % 100 != 0)) || (y % 400 == 0)
      LeapYearMonthDays[m-1]
    else
      CommonYearMonthDays[m-1]
    end
  end
end
