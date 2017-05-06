#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
float testtt() {
  double a = 1.0 / 81;
  float b = 0;
  for (int i = 0; i < 729; ++i)
    b = b + a;
  return b;
}