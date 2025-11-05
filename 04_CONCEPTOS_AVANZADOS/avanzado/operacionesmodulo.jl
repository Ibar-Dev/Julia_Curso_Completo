# Operaciones de Módulo en Julia
# Funciones auxiliares para trabajar con operaciones modulares

# Este módulo incluye:
# - Exponenciación modular
# - MCD extendido
# - Inverso modular
# - Prueba de primalidad
# - Generación de primos
# - Factorización
# - Función φ de Euler
# - Resolución de congruencias lineales

# Ideal para ejercicios avanzados de álgebra, criptografía y teoría de números.

module OperacionesModulo

export potencia_modular, mcd_extendido, inverso_modular, es_primo_fermat, generar_primos, factorizar, euler_phi, congruencia_lineal

function potencia_modular(base::Integer, exponente::Integer, modulo::Integer)
	if modulo == 1
		return 0
	end
	resultado = 1
	base = base % modulo
	while exponente > 0
		if exponente % 2 == 1
			resultado = (resultado * base) % modulo
		end
		exponente = exponente ÷ 2
		base = (base * base) % modulo
	end
	return resultado
end

function mcd_extendido(a::Integer, b::Integer)
	if a == 0
		return (b, 0, 1)
	end
	mcd_val, x1, y1 = mcd_extendido(b % a, a)
	x = y1 - (b ÷ a) * x1
	y = x1
	return (mcd_val, x, y)
end

function inverso_modular(a::Integer, m::Integer)
	mcd_val, x, y = mcd_extendido(a, m)
	if mcd_val != 1
		return nothing
	end
	return (x % m + m) % m
end

function es_primo_fermat(n::Integer, k::Integer=5)
	if n <= 1
		return false
	end
	if n <= 3
		return true
	end
	if n % 2 == 0
		return false
	end
	for _ in 1:k
		a = rand(2:n-1)
		if potencia_modular(a, n-1, n) != 1
			return false
		end
	end
	return true
end

function generar_primos(limite::Integer)
	if limite < 2
		return Int[]
	end
	es_primo = fill(true, limite)
	es_primo[1] = false
	for i in 2:Int(√limite)
		if es_primo[i]
			for j in i*i:i:limite
				es_primo[j] = false
			end
		end
	end
	primos = Int[]
	for i in 2:limite
		if es_primo[i]
			push!(primos, i)
		end
	end
	return primos
end

function factorizar(n::Integer)
	if n <= 1
		return Dict{Int, Int}()
	end
	factores = Dict{Int, Int}()
	while n % 2 == 0
		factores[2] = get(factores, 2, 0) + 1
		n ÷= 2
	end
	i = 3
	while i * i <= n
		while n % i == 0
			factores[i] = get(factores, i, 0) + 1
			n ÷= i
		end
		i += 2
	end
	if n > 2
		factores[n] = get(factores, n, 0) + 1
	end
	return factores
end

function euler_phi(n::Integer)
	if n == 1
		return 1
	end
	factores = factorizar(n)
	resultado = n
	for primo in keys(factores)
		resultado = resultado * (primo - 1) ÷ primo
	end
	return resultado
end

function congruencia_lineal(a::Integer, b::Integer, m::Integer)
	mcd_val, x, y = mcd_extendido(a, m)
	if b % mcd_val != 0
		return Int[]
	end
	a_red = a ÷ mcd_val
	b_red = b ÷ mcd_val
	m_red = m ÷ mcd_val
	x_0 = (inverso_modular(a_red, m_red) * b_red) % m_red
	soluciones = Int[]
	for i in 0:mcd_val-1
		sol = (x_0 + i * m_red) % m
		push!(soluciones, sol)
	end
	return sort(soluciones)
end

end # module OperacionesModulo
# Operaciones de Módulo en Julia
# Funciones auxiliares para trabajar con operaciones modulares

# Este módulo incluye:
# - Exponenciación modular
# - MCD extendido
# - Inverso modular
# - Prueba de primalidad
# - Generación de primos
# - Factorización
# - Función φ de Euler
# - Resolución de congruencias lineales

# Ideal para ejercicios avanzados de álgebra, criptografía y teoría de números.

module OperacionesModulo

export potencia_modular, mcd_extendido, inverso_modular, es_primo_fermat, generar_primos, factorizar, euler_phi, congruencia_lineal

function potencia_modular(base::Integer, exponente::Integer, modulo::Integer)
	if modulo == 1
		return 0
	end
	resultado = 1
	base = base % modulo
	while exponente > 0
		if exponente % 2 == 1
			resultado = (resultado * base) % modulo
		end
		exponente = exponente ÷ 2
		base = (base * base) % modulo
	end
	return resultado
end

function mcd_extendido(a::Integer, b::Integer)
	if a == 0
		return (b, 0, 1)
	end
	mcd_val, x1, y1 = mcd_extendido(b % a, a)
	x = y1 - (b ÷ a) * x1
	y = x1
	return (mcd_val, x, y)
end

function inverso_modular(a::Integer, m::Integer)
	mcd_val, x, y = mcd_extendido(a, m)
	if mcd_val != 1
		return nothing
	end
	return (x % m + m) % m
end

function es_primo_fermat(n::Integer, k::Integer=5)
	if n <= 1
		return false
	end
	if n <= 3
		return true
	end
	if n % 2 == 0
		return false
	end
	for _ in 1:k
		a = rand(2:n-1)
		if potencia_modular(a, n-1, n) != 1
			return false
		end
	end
	return true
end

function generar_primos(limite::Integer)
	if limite < 2
		return Int[]
	end
	es_primo = fill(true, limite)
	es_primo[1] = false
	for i in 2:Int(√limite)
		if es_primo[i]
			for j in i*i:i:limite
				es_primo[j] = false
			end
		end
	end
	primos = Int[]
	for i in 2:limite
		if es_primo[i]
			push!(primos, i)
		end
	end
	return primos
end

function factorizar(n::Integer)
	if n <= 1
		return Dict{Int, Int}()
	end
	factores = Dict{Int, Int}()
	while n % 2 == 0
		factores[2] = get(factores, 2, 0) + 1
		n ÷= 2
	end
	i = 3
	while i * i <= n
		while n % i == 0
			factores[i] = get(factores, i, 0) + 1
			n ÷= i
		end
		i += 2
	end
	if n > 2
		factores[n] = get(factores, n, 0) + 1
	end
	return factores
end

function euler_phi(n::Integer)
	if n == 1
		return 1
	end
	factores = factorizar(n)
	resultado = n
	for primo in keys(factores)
		resultado = resultado * (primo - 1) ÷ primo
	end
	return resultado
end

function congruencia_lineal(a::Integer, b::Integer, m::Integer)
	mcd_val, x, y = mcd_extendido(a, m)
	if b % mcd_val != 0
		return Int[]
	end
	a_red = a ÷ mcd_val
	b_red = b ÷ mcd_val
	m_red = m ÷ mcd_val
	x_0 = (inverso_modular(a_red, m_red) * b_red) % m_red
	soluciones = Int[]
	for i in 0:mcd_val-1
		sol = (x_0 + i * m_red) % m
		push!(soluciones, sol)
	end
	return sort(soluciones)
end

end # module OperacionesModulo
