# This program solves quadratic equation of the form 𝑎𝑥􀬶 + 𝑏𝑥 + 𝑐 = 0
# a, b, c parameters may be setted using input or command line arguments
# In the script, implement several functions that decompose the problem of solving a square equations.
# Parameters must be passed to these functions. Also write UnitTests for these functions.

# functions to be created
# - main()
# - validate_param(int) - checks that a number is entered and integer, repeats the input 3 times if not a number use exception)
# - discriminant(a, b, c)
# - roots(d, a, b, c)
# - solv_square(a, b, c) -> roots
# - square_print(a, b, c, roots) – displays the result

import math # Library to use sqrt function

# int, float or complex in python are a classes
# int numbers are limited only by accessible memory
# float numbers have limited accuracy (8 bytes)

def validate_param():
    attepmts = 3
    while attepmts > 0:
        try:
            print(f'You have {attepmts} attepmts to enter 3 integer parameters values a,b,c')
            a = int(input("Input integer parameter a: "))
            b = int(input("Input integer parameter b: "))
            c = int(input("Input integer parameter c: "))
        except ValueError:
            print("Value is not integer!")
            attepmts -= 1
            continue
        else:
            return a, b, c


def discriminant(a, b, c):
    return b ** 2 - 4 * a * c

def roots(d, a, b, c):
    if a == 0 and b == 0 and c == 0:
        print("Еhe equation has an infinite number of values x")
        return (None, None)
    else:
        if a == 0 and b == 0:
            print("Equation does not have real roots")
            return (None, None)
        else:
            if a == 0 and c == 0:
                x1 = 0
                print("x = %.2f" % x1)
                return (round(x1, 2), None)
            else:
                if a == 0 and b != 0:
                    x1 = -c / b
                    print("x = %.2f" % x1)
                    return (round(x1, 2), None)
                else:
                    if b == 0:
                        x1 = math.sqrt(d) / (2 * a)
                        print("x = %.2f" % x1)
                        return (round(x1, 2), None)
                    else:
                        if d >= 0:
                            x1 = (-b + math.sqrt(d)) / (2 * a)
                            x2 = (-b - math.sqrt(d)) / (2 * a)
                            print("x1 = %.2f \nx2 = %.2f" % (x1, x2))
                            return (round(x1, 2), round(x2, 2))
                        else:
                            print("Equation does not have real roots")
                            return (None, None)


def solv_square(a, b, c) -> roots:
    d = discriminant(a, b, c)
#    print("Discriminant =", d)
    return roots(d, a, b, c)


def square_print(a, b, c, roots):
    x1, x2 = roots
    print(f"Equation: {a}x^2 + {b}x + {c} = 0")
    print(f"Square equation roots: {x1} and {x2}")


def main():
    print("Please enter values for equation:")
    valid_params = validate_param()
    a = valid_params[0]
    b = valid_params[1]
    c = valid_params[2]
    square_print(a, b, c, roots(discriminant(a, b, c), a, b, c))

if __name__ == "__main__":
    main()
