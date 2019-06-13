class Anything
  attr_reader :foo, :bar, :a #esto CREAR el mètodo a (def a)
  def foo
    @a = 5
  end
  def bar
    @a+= 1
  end
end
any = Anything.new
any.foo
any.bar
any.a
