# Escribir un hash con el menu de un restaurant,
# la llave es el nombre del plato y el valor es el precio de este.
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# Obtener el plato mas caro.
i = 0
restaurant_menu.each do |_x ,y|
  i = y if i < y
end
puts i
puts restaurant_menu.values.max
puts restaurant_menu.max_by {|key, _value| key}
# Obtener el plato mas barato.
puts restaurant_menu.values.min
puts restaurant_menu.min_by {|key, _value| key}
# Sacar el promedio del valor de los platos.
puts restaurant_menu.values.sum / restaurant_menu.length
# Crear un arreglo con solo los nombres de los platos.
plates = restaurant_menu.keys
print plates
# Crear un arreglo con solo los valores de los platos.
plates_price = restaurant_menu.values
print plates_price
# Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
restaurant_menu.each { |x ,y| restaurant_menu[x] = y * 1.19 }
puts restaurant_menu
# Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
restaurant_menu.each { |x ,y| restaurant_menu[x] = y * 1.19 }
puts restaurant_menu

restaurant_menu.each { |x ,y| restaurant_menu[x] = y * 0.8 if x.index(" ") }
puts restaurant_menu
