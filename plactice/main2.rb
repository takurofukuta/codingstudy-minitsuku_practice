def clever_print(*args)
  converted = []
  args.each do |arg|
    arg = arg.to_a if arg.class == Hash
    converted << arg
  end
  puts converted.join(" ")
end

clever_print(["Ruby"], "the", ["Programming", "Language"])

clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })

# * 「*args」のように、引数の前に*をつけると、引数を配列に出来る。
# * to_a：ハッシュなどを配列に変換する。
# * join:配列の要素が配列だった場合は、平坦化される
