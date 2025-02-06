puts "[DEBUG] date_math.rb plugin is loading..."

module Jekyll
  module DateMath
    require 'date'

    def age_between(start_date, end_date)
      puts "[DEBUG] age_between called with: #{start_date} -> #{end_date}"
      

      start_date = Date.parse(start_date)
      end_date = Date.parse(end_date)

      total_months = (end_date.year - start_date.year) * 12 + (end_date.month - start_date.month)
      years = total_months / 12
      months = total_months % 12

      year_str = years > 0 ? "#{years} year#{'s' if years > 1}" : ""
      month_str = months > 0 ? "#{months} month#{'s' if months > 1}" : ""

      [year_str, month_str].reject(&:empty?).join(" and ")
    end
  end
end

Liquid::Template.register_filter(Jekyll::DateMath)
