class Float
  def to_html_fraction
    fraction = case self.abs % 1.0
    when 0.5 then '&frac12;'  # One half
      
    when 0.25 then '&frac14;'  # One quarter
    when 0.75 then '&frac34;'  # Three quarters
    
    when 0.33...0.333333333333333333 then '&#x2153;'  # One third
    when 0.66...0.666666666666666666 then '&#x2154;'  # Two thirds
      
    when 0.2 then '&#x2155;'  # One fifth
    when 0.4 then '&#x2156;'  # Two fifths
    when 0.6 then '&#x2157;'  # Three fifths
    when 0.8 then '&#x2158;'  # Four fifths

    when 0.16...0.166666666666666666 then '&#x2159;'  # One sixth
    when 0.83...0.833333333333333333 then '&#x215A;'  # Five sixths

    when 0.125 then '&#x215B;'  # One eighth
    when 0.375 then '&#x215C;'  # Three eighths
    when 0.625 then '&#x215D;'  # Five eighths
    when 0.875 then '&#x215E;'  # Seven eighths
      
    when 0.18...0.1875 then ' 3/16'
    when 0.0 then ''
    end
    if fraction
      body = case self.floor
      when -1 then '-'
      when  0 then ''
      else self.to_i.to_s
      end
      body + fraction
    else
      self.to_s
    end
  end
end