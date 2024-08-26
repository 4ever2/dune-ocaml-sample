let valid_date d m =
  if m = "Jan" || m = "Mar" || m = "May" || m = "Jul"
     || m = "Aug" || m = "Oct" || m = "Dec"
  then 1 <= d && d <= 31
  else if m = "Apr" || m = "Jun" || m = "Sept" || m = "Nov"
  then 1 <= d && d <= 30
  else if m = "Feb"
  then 1 <= d && d <= 28
  else false
