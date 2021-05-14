module Mail
  def send
    puts "#{@date = Time.now}: Sending a #{self.class} to #{self.recipient}."
  end

  def write(text)
    @text = text
  end

  def to_s
    "#{self.class} of #{@date}:\n\nDear #{@recipient},\n\n#{@text}\n\nSincerely,\n#{@sender}"
  end
end

class Postcard
  include Mail
  attr_reader :sender, :recipient, :text, :date

  def initialize(sender, recipient)
    @sender, @recipient = sender, recipient
  end
end

card = Postcard.new("Me", "Friend")
card.write("Did you forget my birthsday?")
card.send
puts "-" * 60
sleep(2)
puts card

# * moduleとは？ 任意の場所に挿入できるメソッドリストみたいなもの
# * moduleをClassに混ぜ合わせることをMixInという
# * include Module名 でClassに混ぜられる。
# * Module内のメソッドはインスタンスメソッドとして使える。（オブジェクト.メソッド名 で使える）
# * sleepとは？ sleep(n)でn秒数間処理をまつ
# * 「"#{@date = Time.now}:~"」のように、#{}内で、変数で値を取得することができる。
# * \nとは？ 改行記号
