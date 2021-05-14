class Planet
  def life?
    puts "Who knows?"
  end
end

pluto = Planet.new()
earth = Planet.new()
mars = Planet.new()

def earth.life?()
  puts "Positively!"
end

def pluto.life?()
  puts "Probably not."
end

pluto.life?()  #=> Probably not.
earth.life?()  #=> Positively!
mars.life?()   #=> Who knows?

# * 特異メソッドとは？ １つのインスタンス固有のメソッド。def オブジェクト名.メソッド名で定義する。
#   場面に応じてインスタンスメソッドを上書きすることができる。
