# Generador de números primos hasta un límite

function primos_hasta(n)
    primos = Int[]
    for i in 2:n
        es_primo = true
        for j in 2:floor(Int, sqrt(i))
            if i % j == 0
                es_primo = false
                break
            end
        end
        if es_primo
            push!(primos, i)
        end
    end
    return primos
end

println("Primos hasta 30: $(primos_hasta(30))")
# Generador de números primos hasta un límite

function primos_hasta(n)
    primos = Int[]
    for i in 2:n
        es_primo = true
        for j in 2:floor(Int, sqrt(i))
            if i % j == 0
                es_primo = false
                break
            end
        end
        if es_primo
            push!(primos, i)
        end
    end
    return primos
end

println("Primos hasta 30: $(primos_hasta(30))")
