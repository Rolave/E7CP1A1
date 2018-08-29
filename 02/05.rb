# Eliminar el producto 'galletas' del hash.

productos = {
  galletas: 750,
  chocolate: 500,
  chicle: 300
}
productos.delete(:galletas)
print productos
