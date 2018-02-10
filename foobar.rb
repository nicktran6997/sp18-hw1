class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
  	a.map! do |i|
    i = i.to_i
    i = i+2
  	end
  	a.reject! {|x| x % 2 != 0 || x >=10}
  	a=a.uniq
	while a.inject(0,:+) > 10
	 a.delete(a.max)
	end
  	a.inject(0,:+)
  end
end
