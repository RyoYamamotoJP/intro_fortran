program repeating
  implicit none
  real(8) x
  integer count
  x = 1
  print *, 0, x
  count = 1
  do while (count <= 3)
    x = x/2 + 1/x
    print *, count, x
    count = count + 1
  end do
end program repeating

