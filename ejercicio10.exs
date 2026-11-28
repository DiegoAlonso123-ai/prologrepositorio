defmodule Calc do
  @doc "Derivada numérica (diferencia central) de f, con paso h."
  def derivada(f, h \\ 1.0e-6), do: fn x -> (f.(x + h) - f.(x - h)) / (2 * h) end

  @doc "Integral numérica (punto medio) de f, con n rectángulos: devuelve fn a, b -> ... end."
  def integral(f, n \\ 10_000) do
    fn a, b ->
      dx = (b - a) / n
      Enum.reduce(0..(n - 1), 0.0, fn i, acc -> acc + f.(a + (i + 0.5) * dx) end) * dx
    end
  end
end