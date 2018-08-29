# Se tienen dos arrays uno con el nombre de personas y otro con las edades,
# se pide generar un hash con el nombre y edad de cada persona (se asume que no
# existen dos personas con el mismo nombre)

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

# Se pide generar un hash con la información:
# personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41, "Valentín":19}
h = Hash[personas.zip(edades)]
# personas.zip(edades).to_h
puts h

# Crear un método que reciba el hash y devuelva el promedio de las edades del
# hash pasado como argumento.
personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41, "Valentín":19}
def average(hash)
  i = 0
  # hash.values.sum / hash.length
  hash.each { |x, y| i += y }
  i = i / hash.length
  puts i
end
average(personas_hash)
