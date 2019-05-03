program array_test
  implicit none
  integer(2) a(0:9)
  print *,a
  a = (/1,2,3,4,5,6,7,8,32767,0/)
  print *,a
  a(4) = 14
  print *,a
  a(5:6) = (/15,16/)
  print *,a
  a(7:9) = a(7:9) + 1
  print *,a
  a = -a
  print *,a
  print *,mod(a,2)
  print *,a
  print *,mod(a,2)==0
  print *,merge('  Even ', '  Odd  ', mod(a,2)==0)
end program array_test

