# 4. Stwórz funkcję, która oblicza długość przeciwprostokątnej w trójkącie prostokątnym.

hypotenuse = function(a, b) {
    return (sqrt((a^2) + (b^2)))
}

print(hypotenuse(4, 3))

# 5. Stwórz funkcję będącą najprostszą wersją kalkulatora 
# (dodawanie, odejmowanie, mnożenie albo dzielenie dwóch liczb).

calculator = function(a, b, operation) {
    if (operation == "+") {
        return (a+b)
    } else if (operation == "-") {
        return (a-b)
    } else if (operation == "*") {
        return (a*b) 
    } else if (operation == "/") {
        return (a/b)
    } else if (operation == "^") {
        return (a^b)
    } else if (operation == "%%") {
        return (a%%b)
    } else {
        return (0)
    }
}

print(calculator(1, 2, "+"))
print(calculator(1, 2, "-"))
print(calculator(1, 2, "*"))
print(calculator(1, 2, "/"))
print(calculator(1, 2, "^"))
print(calculator(1, 2, "%%"))