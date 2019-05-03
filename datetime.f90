program datetime
  implicit none
  integer d(1:8)
  call date_and_time(values=d)
  print *, d
end program datetime

