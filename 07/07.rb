# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
# Si el usuario ingresa 1, podrá **agregar** un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
# Ejemplo del input: "Pendrives, 100"
# Si el usuario ingresa 2, **podrá eliminar** un item.
# Si el usuario ingresa 3, puede **actualizar** la información almacenada (item y stock).
# Si el usuario ingresa 4, podrá ver el **stock total** (suma del stock de cada item) que hay en el negocio.
# Si el usuario ingresa 5, podrá ver el **ítem que tiene la mayor cantidad de stock**.
# Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item **existe en el inventario** o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
# El programa debe repertirse hasta que el usuario ingrese 7 (salir).
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
opcion = 0

txt_menu = <<BLA
  Selecciona una opción
  1. Agregar Item
  2. Eliminar Item
  3. Actualizar Item
  4. Ver Stock Total
  5. Ver Item con mayor Stock
  6. Consultar si existe un Item
  7. Salir
BLA

def opcion_1(inv)
  print "Agregar Item con Stock\n"
  print "* separa el nombre del stock mediante una coma (Producto, 20).\n"
  item = gets.chomp.split(',')
  inv[item.first.to_sym] = item.last.to_i
  print "\n\n"
  print inv
  print "\n\n"
end

def opcion_2(inv)
  print "Elimine Item con Stock\n"
  print "#{inv}\n\n"
  print "* el nombre del item debe existir en el Stock.\n"
  item = gets.chomp.to_sym
  print "Eliminando item: #{item}\n\n" if inv.include?(item)
  print "No existe el item: #{item}\n\n" unless inv.include?(item)
  inv.delete(item)
  print  "Listado actualizado #{inv}\n\n"
end

def opcion_3(inv)
  print "Actualizar Item con Stock\n"
  print "#{inv}\n\n"
  print "* separa el nombre del stock mediante una coma (Producto, 20).\n"
  item = gets.chomp.split(', ')
  actualizando = "Actualizando item: #{item.first}\n\n"
  no_existe = "No existe el item: #{item.first}\n\n"
  print inv.include?(item.first.to_sym) ? actualizando : no_existe
  inv[item.first.to_sym] = item.last.to_i if inv.include?(item.first.to_sym)
  print "\n\n"
  print  "Listado actualizado #{inv}\n\n"
end

def opcion_4(inv)
  print "Ver total de Stock\n"
  total_stock = inv.values.sum
  print "Tu Stock total es: #{total_stock}"
  print "\n\n"
  print inv
  print "\n\n"
end

def opcion_5(inv)
  print "Ver Item con mayor Stock\n"

  mayor_stock = inv.max_by { |_llave, valor| valor }
  print "Tu Item con mayor valor es: #{mayor_stock.first} y su valor es: #{mayor_stock.last}"
  print "\n\n"
  print inv
  print "\n\n"
end

def opcion_6(inv)
  print "Consulta por Item\n"
  print "* ingresa el nombre del item a consultar.\n"
  item = gets.chomp.to_sym
  print "Existe el item: #{item}\n\n" if inv.include?(item)
  print "No existe el item: #{item}\n\n" unless inv.include?(item)
  print "\n\n"
  print inv
  print "\n\n"
end

while opcion != 7
  print txt_menu
  opcion = gets.to_i
  case opcion
  when 1
    opcion_1 inventario
  when 2
    opcion_2 inventario
  when 3
    opcion_3 inventario
  when 4
    opcion_4 inventario
  when 5
    opcion_5 inventario
  when 6
    opcion_6 inventario
  when 7
    print "Elegiste salir\n\n"
  else
    print "Error de opción\n\n"
  end
end
