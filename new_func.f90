function g(x)
  implicit none
  real(8) g, x
  if (abs(x) < 1) then
    g = sqrt(1 - x**2)
  else
    g = sqrt(x**2 - 1)
  end if
end function g

function f(x)
  implicit none
  real(8) f, x
  f = (x-1)*x*(x+1)
end function f

program new_func
  implicit none
  real(8) x, f, g
  x = -1.5d0
  do while (x < 1.5d0)
    print *, x, f(x), g(x)
    x = x + 0.1d0
  end do
end program new_func

