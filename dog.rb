class Dog
attr_reader :nombre

def initialize (hash={})
  @nombre=hash[:nombre]
  @raza=hash[:raza]
  @color=hash[:color]
end

  def ladrar
    puts "#{@nombre} està ladrandro"
  end

end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
dog1=Dog.new(propiedades)
dog1.ladrar
