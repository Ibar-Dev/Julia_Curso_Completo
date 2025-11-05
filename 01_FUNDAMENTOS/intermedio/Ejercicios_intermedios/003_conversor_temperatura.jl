# Conversor de temperatura

function celsius_a_fahrenheit(c)
    return c * 9 / 5 + 32
end

function fahrenheit_a_celsius(f)
    return (f - 32) * 5 / 9
end

println("25°C a Fahrenheit: $(celsius_a_fahrenheit(25))")
println("77°F a Celsius: $(fahrenheit_a_celsius(77))")
