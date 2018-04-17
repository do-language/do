
module do.five.functions;

unsigned(bits) fact (unsigned(unsigned bits) x)
{
  unsigned(bits) s = 1;
  unsigned(bits) n = 2;
  do {
    unless (n < x)
      return s;
    s = s * n;
    n = n + 1;
  }
}
