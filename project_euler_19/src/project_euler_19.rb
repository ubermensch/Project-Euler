class ProjectEuler19
  class << self
    def solve
      ## Pseudocode:
      #
      # year = 1901, month = 1, day = 1
      # targets = 0
      # for currYear between 1901 and 2000:
      #   for currMonth between 1 and 12:
      #     for currDay between 1 and days_in_month(currMonth, currYear):
      #       if is_sunday?(currDay, currMonth, currYear) && currDay == 1
      #         targets++

    end

    def is_sunday?(day, month, year)
      # 0 == Monday, 6 == Sunday
      (day_offset(day, month, year) - 1) % 7 == 6
    end

    def days_in_year(year)
      (1..12).reduce(0) { |sum, month| sum + days_in_month(month, year) }
    end

    def days_in_month(month, year)
      return 30 if [4, 6, 9, 11].include?(month)
      return 29 if month == 2 && is_leap_year?(year)
      return 28 if month == 2

      31
    end

    def is_leap_year?(year)
      if year % 100 == 0
        return year % 400 == 0
      end
      year % 4 == 0
    end

    def day_offset(day, month, year)
      offset = base_offset
      curr_year = year
      curr_month = month

      while curr_year > 1901
        offset += days_in_year(curr_year)
        curr_year -= 1
      end

      while curr_month > 1
        offset += days_in_month(curr_month, year)
        curr_month -= 1
      end

      offset += day

      offset
    end

    # base_offset = number of days between 1 Jan 1900 and 1 Jan 1901
    def base_offset
      days_in_year(1900)
    end
  end
end
