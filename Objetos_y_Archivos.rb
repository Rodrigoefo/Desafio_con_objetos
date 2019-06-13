class Product
  attr_accessor :name, :xs, :size

    def initialize(name, *size)
      @name=name
      @size=size.map!{|x| x.to_f}
    end

    def average

        promedio=@size.inject(0){|suma, valor| (suma+valor)}/@size.size

    end

    def self.xs (archivo)
      separado=[]
      data=File.open(archivo, "r").readlines

      data.each do |ele|
        ls=ele.split(",")
        ls.pop
        separado << ls
      end
      
        file=File.open('nuevo_catalogo.txt','w')
        separado.each {|product| file.puts "#{product.join(",")}"}
        file.close

    end

  end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.size.times do |i|
puts "El promedio de precios del producto #{products_list[i].name} es de #{products_list[i].average}"
end

Product.xs(File.open('catalogo.txt', 'r'))
