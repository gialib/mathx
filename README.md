# Mathx

The Mathx module adds many useful functions that extend Elixir's standard library.

- General Functions
  - `a <~> b` Comparison of floats, to check if they are _nearly_ equal.
  - `Mathx.pow(x, n)` Arithmetic exponentiation. Works both with integer powers and floats.
  - `Mathx.sqrt(x)` The square root of *x*.
  - `Mathx.nth_root(x, n)` The n-th root of *x*.
  - `Mathx.isqrt(x)`  The integer square root of *x*.
  - `Mathx.gcd(a, b)` The greatest common divisor of *a* and *b*.
  - `Mathx.lcm(a, b)` The least common multiple of *a* and *b*.
  - `Mathx.factorial(n)` The *n*-th factorial number.
  - `Mathx.k_permutations(n, k)` The number of distinct ways to create groups of size *k* from *n* distinct elements.
  - `Mathx.k_combinations(n, k)` The number of distinct ways to create groups of size *k* from *n* distinct elements where order does not matter.


- Logarithms
  - `Mathx.exp(x)` Calculates ℯ to the xth power.
  - `Mathx.log(x)` Calculates the natural logarithm (base `ℯ`) of *x*.
  - `Mathx.log(x, b)` Calculates the base-*b* logarithm of *x*
  - `Mathx.log2(x)` Calculates the binary logarithm (base `2`) of *x*.
  - `Mathx.log10(x)` Calculates the common logarithm (base `10`) of *x*.
  - `Mathx.e` Returns a floating-point approximation of the number ℯ.

- Trigonometry
  - `Mathx.pi` Returns a floating-point approximation of the number *π*.
  - `Mathx.deg2rad(x)` converts from degrees to radians.
  - `Mathx.rad2deg(x)` converts from radians to degrees.
  - `Mathx.sin(x)` The sine of *x*.
  - `Mathx.cos(x)` The cosine of *x*.
  - `Mathx.tan(x)` The tangent of *x*.
  - `Mathx.asin(x)` The inverse sine of *x*.
  - `Mathx.acos(x)` The inverse cosine of *x*.
  - `Mathx.atan(x)` The inverse tangent of *x*.
  - `Mathx.atan2(x, y)` The inverse tangent of *x* and *y*. This variant returns the inverse tangent in the correct quadrant, as the signs of both *x* and *y* are known.
  - `Mathx.sinh(x)` The hyperbolic sine of *x*.
  - `Mathx.cosh(x)` The hyperbolic cosine of *x*.
  - `Mathx.tanh(x)` The hyperbolic tangent of *x*.
  - `Mathx.asinh(x)` The inverse hyperbolic sine of *x*.
  - `Mathx.acosh(x)` The inverse hyperbolic cosine of *x*.
  - `Mathx.atanh(x)` The inverse hyperbolic tangent of *x*.

- Working with Collections
  - `Mathx.Enum.product(collection)` The result of multiplying all elements in the passed collection.
  - `Mathx.Enum.mean(collection)` the mean of the numbers in the collection.
  - `Mathx.Enum.median(collection)` the median of the numbers in the collection.

## Installation

Mathx is [available in Hex](https://hex.pm/packages/math). The package can be installed by:

  1. Add math to your list of dependencies in `mix.exs`:

        def deps do
          [
            {:math, "~> 0.3.0"}
          ]
        end

  2. Require or import the Mathx library anywhere in your code you'd like:

        require Mathx

  or

        import Mathx

  (Importing allows usage of the `<~>` operator)

## Changelog
- 0.3.0 Fixed incorrect median for lists with even number of items. Updated tests.
- 0.2.0 Added `factorial/1`, `nth_sqrt/2`, `k_permutations/2`, `k_combinations/2`, `gcd/2`, `lcm/2` and `Mathx.Enum` functions. Improved documentation.
- 0.1.0 Added integer variant of `pow/1`, `isqrt/2`, `deg2rad/1`, `rad2deg/1`. Improved documentation.
- 0.0.1 First implementation, mostly a wrapper around Erlang's `:math` library.
