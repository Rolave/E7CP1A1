# Dados los siguientes array:

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

# Generar un hash que contenga los meses como llave y las ventas como valor:
# h = {'Enero': 2000, 'Febrero': 3000 ... }
h = meses.zip(ventas).to_h
puts h

# En base al hash generado:
# Invertir las llaves y los valores del hash.
h_inv = {}
h.each { |key, val| h_inv[val] = key }
puts h_inv
h_inv = h.invert

# Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
i = 0
h_inv.each { |x, y| i = x if i < x }
puts i
h_inv[h_inv.keys.max]