class Float
  def to_html_fraction
    body = case self.floor
      when -1 then '-'
      when  0 then ''
      else self.to_i.to_s
    end
    
    fraction = case ((self.abs % 1.0) * 16).round.to_f / 16 #round to 1/16th precision. 
      when 0.0625 then ' 1/16'
      when 0.125  then '&#x215B;'  # One eighth
      when 0.1875 then ' 3/16'
      when 0.25   then '&frac14;'  # One quarter
      when 0.3125 then ' 5/16'
      when 0.375  then '&#x215C;'  # Three eighths
      when 0.4375 then ' 7/16'
      when 0.5    then '&frac12;'  # One half
      when 0.5625 then ' 9/16'
      when 0.625  then '&#x215D;'  # Five eighths
      when 0.6875 then ' 11/16'
      when 0.75   then '&frac34;'  # Three quarters
      when 0.8125 then ' 13/16'
      when 0.875  then '&#x215E;'  # Seven eighths
      when 0.9375 then ' 15/16'
      else ''
    end
    
    body + fraction
  end
end