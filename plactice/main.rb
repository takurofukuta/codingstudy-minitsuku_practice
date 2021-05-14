#模範解答

class Library
  def initialize
    @books = []
  end

  def <<(book)
    @books << book
    p @books
  end

  def to_s
    # puts "Library contents:"
    @books.join("\n")
  end
end

class Book
  attr_accessor :author, :title, :library

  def initialize(args)
    @author = args[:author]
    @title = args[:title]
    args[:library] << self
  end

  def to_s
    "Title: " + @title + ", Author: " + @author
  end
end

my_library = Library.new
Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)
Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)
# puts my_library

# * putsやprintなどは、レシーバーをto_sメソッドで自動的に変換してから出力する。
#   そのため、クラスの中でto_sメソッドを自分で定義すると、本来のto_sメソッドが上書きされ、自動的に使われる
# * 「<<メソッド」は「pushメソッド」のこと。
# * joinメソッドは配列を結合して一つの文字列にする。join(引数)で、引数を区切り文字にすることができる
# * クラス内では「self」はインスタンス変数を表す
