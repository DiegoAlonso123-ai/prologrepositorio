defmodule Tabla do
  @doc "Imprime tabla de h y de n, y elige el h (menor error) y el n (primero con error < 1e-9)."
  def run(f, x0, exacta_d, a, b, exacta_i) do
    IO.puts("\n=== a) Derivada en x0 = #{x0}  (exacta = #{exacta_d}) ===")
    filas_h =
      for k <- 1..10 do
        h = :math.pow(10, -k)
        v = Calc.derivada(f, h).(x0)
        e = abs(v - exacta_d)
        IO.puts("h = 1.0e-#{k}   resultado = #{v}   error = #{e}")
        {h, v, e}
      end

    {h, _, eh} = Enum.min_by(filas_h, fn {_, _, e} -> e end)
    IO.puts("--> h elegido = #{h}  (error #{eh})")

    IO.puts("\n=== b) Integral en [#{a}, #{b}]  (exacta = #{exacta_i}) ===")
    filas_n =
      for n <- [1, 10, 100, 1000, 10_000, 100_000, 1_000_000] do
        v = Calc.integral(f, n).(a, b)
        e = abs(v - exacta_i)
        IO.puts("n = #{n}   resultado = #{v}   error = #{e}")
        {n, v, e}
      end

    n_elegido =
      case Enum.find(filas_n, fn {_, _, e} -> e < 1.0e-9 end) do
        {n, _, e} ->
          IO.puts("--> n elegido = #{n}  (error #{e})")
          n
        nil ->
          IO.puts("--> NINGÚN n baja de 1e-9 (explica por qué)")
          1_000_000
      end

    IO.puts("\n=== Salida con lo elegido ===")
    IO.inspect(Calc.derivada(f, h).(x0), label: "f'(x0) con h")
    IO.inspect(Calc.integral(f, n_elegido).(a, b), label: "integral con n")
    :ok
  end
end