module ApplicationHelper
  def time_of_day
    case Time.now.hour
    when 0..5, 22..24 then "night"
    when 5..11        then "morning"
    when 11..16       then "day"
    when 16..22       then "evening"
    else
      "day"
    end
  end

  def time_of_day_random
    %w(morning day night evening).sample
  end

end
