class Tool
  def use
    puts "Picks up #{@color} #{self.class.to_s}"
  end

  def initialize(color)
    @color = color
  end
end

class Hammer < Tool
  def use
    super
    puts "Bam bam bam"
  end
end

Hammer.new("red").use

# * サブクラス(class Hammer < Tool)は、メインクラス(class Tool)のメソッドと同じ名前のメソッドに「super」を書くことで、
#   メインクラスのメソッドを継承できる。
