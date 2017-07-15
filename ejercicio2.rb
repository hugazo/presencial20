
# Modulo solicitado por ejercicio
module Formula
  def perimetro(*args)
    return args[0] * 4 if args.size == 1
    return (args[0] * 2) + (args[1] * 2) if args.size == 2
    raise ArgumentError, 'More than 2 arguments passed'
  end

  def area(*args)
    return args[0] * args[0] if args.size == 1
    return args[0] * args[1] if args.size == 2
    raise ArgumentError, 'More than 2 arguments passsed'
  end
end

# No comment
class Rectangulo
  include Formula
  attr_reader :largo, :ancho
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    "Largo: #{@largo}, ancho #{@ancho}"
  end
end

# No Comment
class Cuadrado
  include Formula
  attr_reader :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
    "Lado: #{@lado} "
  end
end

cuadrado = Cuadrado.new(2)
puts cuadrado.perimetro(cuadrado.lado)
puts cuadrado.area(cuadrado.lado)
rectangulo = Rectangulo.new(2, 3)
puts rectangulo.perimetro(rectangulo.largo, rectangulo.ancho)
puts rectangulo.area(rectangulo.largo, rectangulo.ancho)
