require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

Expectations do

  expect false do
    doc = stub(:id => 1)
    instance = stub(:class => stub(:first => doc), :id => 2, :name => "test")
    validation = Validatable::ValidatesUniquenessOf.new stub_everything, :name
    validation.valid?(instance)
  end

  expect true do
    instance = stub(:class => stub(:first => nil), :id => 2, :name => "test")
    validation = Validatable::ValidatesUniquenessOf.new stub_everything, :name
    validation.valid?(instance)
  end

end