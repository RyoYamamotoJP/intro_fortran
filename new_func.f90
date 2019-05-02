function f(x)
  implicit none
  real(8) f, x
  f = (x-1)*x*(x+1)
end function f

program new_func
  implicit none
  real(8) x, y, f
  x = -1.5
  do while (x < 1.5)
    y = f(x)
    print *, x, y
    x = x + 0.1d0
  end do
end program new_func

