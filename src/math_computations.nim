import nimpy, math

func add(x, y: int): int {.exportpy.} =
  return x + y

iterator fib(target: int): int {.exportpy.} =
  if target < 3: yield 1
  var (x, y) = (1, 1)
  for i in 3..target:
    (x, y) = (x + y, x)
    yield x

func fibF(target: int): int {.exportpy.} =
  if target < 3: return 1
  var (x, y) = (1, 1)
  for i in 3..target:
    (x, y) = (x + y, x)
  return x

proc is_prime(n: int): bool {.exportpy.} =
  if n <= 1: return false
  for i in 2..int(round(sqrt(float32(n)))):
    if n mod i == 0: return false
  return true
