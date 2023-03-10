@model SGU_2003_debt_premium begin
	d[0] = (1 + r[-1]) * d[-1] - y[0] + c[0] + i[0] + ϕ / 2 * (k[0] - k[-1]) ^ 2

	y[0] = exp(a[0]) * k[-1] ^ α * h[0] ^ (1 - α)

	k[0] = i[0] + k[-1] * (1 - δ)

	λ[0] = β * (1 + r[0]) * λ[1]

	(c[0] - h[0] ^ ω / ω) ^ (-γ) = λ[0]

	(c[0] - h[0] ^ ω / ω) ^ (-γ) * h[0] ^ (ω - 1) = y[0] * (1 - α) * λ[0] / h[0]

	λ[0] * (1 + ϕ * (k[0] - k[-1])) = β * λ[1] * (1 + α * y[1] / k[0] - δ + ϕ * (k[1] - k[0]))

	a[0] = ρ * a[-1] + σ_tfp * e[x]

	r[0] = r̄ + riskpremium[0]

	riskpremium[0] = ψ² * (exp(d[0] - d̄) - 1)

	tbʸ[0] = 1 - (ϕ / 2 * (k[0] - k[-1]) ^ 2 + c[0] + i[0]) / y[0]

	caʸ[0] = 1 / y[0] * (d[-1] - d[0])

	util[0] = ((c[0] - h[0] ^ ω * ω ^ (-1)) ^ (1 - γ) - 1) / (1 - γ)

end


@parameters SGU_2003_debt_premium begin
    β  = 1 / (1 + r̄)

	γ = 2

	ω = 1.455

	α = 0.32

	ϕ = 0.028

	r̄ = 0.04

	δ = 0.1

	ρ = 0.42

	σ_tfp = 0.0129

	ψ² = 0.000742

	d̄ = 0.7442

end
