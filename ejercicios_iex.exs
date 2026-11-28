pi = :math.pi()
e = :math.exp(1)
ln = &:math.log/1
c = :math.cos(1.0)

# --- Polinomios ---
Tabla.run(fn x -> 3*x*x + 2*x - 1 end, 1, 8.0, 0, 2, 10.0)                                   # 1
Tabla.run(fn x -> x*x*x - 4*x end, 2, 8.0, 0, 2, -4.0)                                        # 2
Tabla.run(fn x -> 2*x*x*x*x - x*x + 5 end, 1, 6.0, -1, 1, 152/15)                             # 3
Tabla.run(fn x -> (x - 1)*(x + 2) end, 3, 7.0, 1, 3, 26/3)                                    # 4
Tabla.run(fn x -> :math.pow(x, 5) - 3*:math.pow(x, 3) + x end, 1, -3.0, 0, 1, -1/12)          # 5
Tabla.run(fn x -> :math.pow(2*x + 1, 3) end, 0, 6.0, 0, 1, 10.0)                              # 6
Tabla.run(fn x -> 4 - x*x end, -1, 2.0, -2, 2, 32/3)                                          # 7
Tabla.run(fn x -> :math.pow(x, 6) end, 0.5, 0.1875, 0, 1, 1/7)                                # 8
# --- Trigonométricas ---
Tabla.run(&:math.cos/1, pi/6, -0.5, 0, pi/2, 1.0)                                             # 9
Tabla.run(fn x -> :math.sin(2*x) end, pi/8, :math.sqrt(2), 0, pi/2, 1.0)                      # 10
Tabla.run(&:math.tan/1, pi/4, 2.0, 0, pi/4, ln.(2)/2)                                         # 11
Tabla.run(fn x -> :math.pow(:math.sin(x), 2) end, pi/4, 1.0, 0, pi, pi/2)                     # 12
Tabla.run(fn x -> x*:math.cos(x) end, 0, 1.0, 0, pi/2, pi/2 - 1)                              # 13
Tabla.run(fn x -> :math.pow(:math.cos(x), 3) end, pi/3, -3*:math.sqrt(3)/8, 0, pi/2, 2/3)     # 14
Tabla.run(fn x -> 3*:math.sin(x) + 4*:math.cos(x) end, 0, 3.0, 0, pi, 6.0)                    # 15
Tabla.run(fn x -> :math.sin(x*x) end, 1, 2*c, 0, 1, 0.3102683017233811)                       # 16
Tabla.run(fn x -> 1/:math.pow(:math.cos(x), 2) end, pi/4, 4.0, 0, pi/4, 1.0)                  # 17
# --- Exponenciales y logaritmos ---
Tabla.run(fn x -> :math.exp(2*x) end, 0, 2.0, 0, 1, (e*e - 1)/2)                              # 18
Tabla.run(fn x -> :math.exp(-x) end, 1, -1/e, 0, 2, 1 - :math.exp(-2))                        # 19
Tabla.run(fn x -> x*:math.exp(x) end, 0, 1.0, 0, 1, 1.0)                                      # 20
Tabla.run(fn x -> :math.pow(2, x) end, 1, 2*ln.(2), 0, 3, 7/ln.(2))                           # 21
Tabla.run(fn x -> ln.(2*x) end, 1, 1.0, 1, 2, 3*ln.(2) - 1)                                   # 22
Tabla.run(fn x -> x*ln.(x) end, e, 2.0, 1, e, (e*e + 1)/4)                                    # 23
Tabla.run(fn x -> ln.(1 + x) end, 0, 1.0, 0, 1, 2*ln.(2) - 1)                                 # 24
Tabla.run(&:math.log10/1, 10, 1/(10*ln.(10)), 1, 10, 10 - 9/ln.(10))                          # 25
Tabla.run(fn x -> :math.exp(-x*x) end, 1, -2/e, 0, 1, :math.sqrt(pi)/2*:math.erf(1.0))        # 26
Tabla.run(fn x -> (:math.exp(x) + :math.exp(-x))/2 end, 1, :math.sinh(1.0), 0, 1, :math.sinh(1.0)) # 27
Tabla.run(fn x -> :math.exp(x)*:math.sin(x) end, 0, 1.0, 0, pi, (:math.exp(pi) + 1)/2)        # 28
# --- Racionales y raíces ---
Tabla.run(fn x -> 1/x end, 2, -0.25, 1, e, 1.0)                                               # 29
Tabla.run(fn x -> 1/(1 + x*x) end, 1, -0.5, 0, 1, pi/4)                                       # 30
Tabla.run(&:math.sqrt/1, 4, 0.25, 0, 4, 16/3)                                                 # 31
Tabla.run(fn x -> x/(x*x + 1) end, 0, 1.0, 0, 1, ln.(2)/2)                                    # 32
Tabla.run(fn x -> 1/(x*x) end, 1, -2.0, 1, 2, 0.5)                                            # 33
Tabla.run(fn x -> :math.pow(x, 1/3) end, 8, 1/12, 0, 8, 12.0)                                 # 34
Tabla.run(fn x -> :math.sqrt(1 - x*x) end, 0.6, -0.75, -1, 1, pi/2)                           # 35
Tabla.run(fn x -> (x + 1)/(x - 3) end, 0, -4/9, 0, 2, 2 - 4*ln.(3))                           # 36
Tabla.run(fn x -> 1/:math.sqrt(1 - x*x) end, 0.5, 4/(3*:math.sqrt(3)), 0, 1, pi/2)            # 37
# --- Productos y compuestas ---
Tabla.run(fn x -> x*x*:math.sin(x) end, pi, -pi*pi, 0, pi, pi*pi - 4)                         # 38
Tabla.run(fn x -> x*x*:math.exp(-x) end, 1, 1/e, 0, 2, 2 - 10*:math.exp(-2))                  # 39
Tabla.run(fn x -> ln.(x*x + 4) end, 2, 0.5, 0, 2, 6*ln.(2) - 4 + pi)                          # 40
Tabla.run(fn x -> :math.sin(x)/x end, pi/2, -4/(pi*pi), 0, pi, 1.8519370519824662)            # 41
Tabla.run(fn x -> :math.sqrt(x*x + 1) end, 1, 1/:math.sqrt(2), 0, 1, (:math.sqrt(2) + ln.(1 + :math.sqrt(2)))/2) # 42
Tabla.run(&:math.atan/1, 1, 0.5, 0, 1, pi/4 - ln.(2)/2)                                       # 43
Tabla.run(fn x -> :math.exp(-x)*:math.cos(x) end, 0, -1.0, 0, pi, (1 + :math.exp(-pi))/2)     # 44
# --- Aplicaciones ---
Tabla.run(fn x -> :math.exp(-x*x/2)/:math.sqrt(2*pi) end, -1, :math.exp(-0.5)/:math.sqrt(2*pi), 0, 2, 0.5*:math.erf(:math.sqrt(2))) # 45
Tabla.run(fn t -> 0.5*:math.exp(-0.5*t) end, 0, -0.25, 0, 2, 1 - 1/e)                         # 46
Tabla.run(fn t -> 9.8*t + 2 end, 1, 9.8, 0, 3, 50.1)                                          # 47
Tabla.run(fn t -> 20 + 70*:math.exp(-0.1*t) end, 5, -7*:math.exp(-0.5), 0, 10, 900 - 700/e)   # 48
Tabla.run(fn t -> 1000/(1 + 9*:math.exp(-0.5*t)) end, 4*ln.(3), 125.0, 0, 10, 2000*ln.((:math.exp(5) + 9)/10)) # 49
Tabla.run(fn t -> 170*:math.sin(120*pi*t) end, 0, 20400*pi, 0, 1/120, 17/(6*pi))              # 50