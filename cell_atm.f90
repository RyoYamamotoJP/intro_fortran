program cell_atm
  implicit none
  integer, parameter :: rule = 90
  real(8), parameter :: density = 0.04
  integer, parameter :: W = 78, H = 20
  integer(1) a(1:W), s(1:W)
  integer i
  call random_array(a, W, density)
  print *, merge('X', ' ', a/=0)
  do i = 1, H
    s(1) = a(W)*4 + a(1)*2 + a(2)
    s(W) = a(W-1)*4 + a(W)*2 + a(1)
    s(2:W-1) = a(1:W-2)*4 + a(2:W-1)*2 + a(3:W)
    a = merge(1, 0, btest(rule, s))
    print *, merge('X', ' ', a/=0)
  end do
end program cell_atm

subroutine random_array(a, n, density)
  integer n
  integer(1) a(1:n)
  real(8) density
  integer ck, sz, i
  real(8) rnd(1:n)
  call system_clock(ck)
  call random_seed(size=sz)
  call random_seed(put=(/(ck+i, i=1, sz)/))
  call random_number(rnd)
  a = merge(1, 0, rnd < density)
end subroutine random_array

