
module do.strings;

include {
  do.five.fv;
  do.vectors;
}

class string;

type string(symbol encoding, unsigned size) {
  -> vector(encoding, size, 0);
  -> string;
}

type string(unsigned size) -> string(CHAR_ENCODING, size);

unsigned length (string(unsigned size) str) {
  unsigned pos = 0;
  do {
    unless (pos < size :^ str[pos] != 0)
      return pos;
    pos++;
  }
}

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
