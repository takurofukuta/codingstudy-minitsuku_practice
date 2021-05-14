def buy_tickets(*args)
  n = args.length
  if n <= 3
    args.each do |arg|
      puts "Buying a ticket for #{arg}"
    end
  else
    # args.map.with_index(1) do |arg, i|
    #   msg += i != n ? "#{arg}, " : "#{arg}."
    # end
    puts "Buying a ticket for #{args.join(", ")}."
  end
end

buy_tickets("Sam", "Dave", "David")
buy_tickets("John", "Paul", "Ringo", "George")
