require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

Expectations do

  expect true do
    validation = Validatable::ValidatesExclusionOf.new stub_everything, :name, :within => ["test"]
    validation.valid?(stub(:name => "testing"))
  end

  expect true do
    validation = Validatable::ValidatesExclusionOf.new stub_everything, :name, :allow_nil => true, :within => ["test"]
    validation.valid?(stub(:name => nil))
  end

  expect true do
    validation = Validatable::ValidatesExclusionOf.new stub_everything, :name, :allow_blank => true, :within => ["test"]
    validation.valid?(stub(:name => ''))
  end

end