program sine_func
  implicit none
  real(8) x, y
  x = 0
  do while (x < 2*3.14)
    y = sin(x)
    print *, x, y
    x = x + 0.1
  end do
end program sine_func

