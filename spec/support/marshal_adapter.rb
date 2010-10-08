shared_examples_for "a marshaled adapter" do
  it_should_behave_like 'an adapter'

  Types.each do |type, (key, key2)|
    it "writes Object values to keys that are #{type}s like a Hash" do
      adapter[key] = {:foo => :bar}
      adapter[key].should == {:foo => :bar}
    end
  end
end