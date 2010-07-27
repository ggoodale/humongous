require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

Expectations do

  expect false do
    validation = Validatable::ValidatesInclusionOf.new stub_everything, :name, :within => ["test"]
    validation.valid?(stub_everything)
  end

  expect true do
    validation = Validatable::ValidatesInclusionOf.new stub_everything, :name, :within => ["test"]
    validation.valid?(stub(:name => "test"))
  end

  expect true do
    validation = Validatable::ValidatesInclusionOf.new stub_everything, :name, :allow_nil => true, :within => ["test"]
    validation.valid?(stub(:name => nil))
  end

  expect true do
    validation = Validatable::ValidatesInclusionOf.new stub_everything, :name, :allow_blank => true, :within => ["test"]
    validation.valid?(stub(:name => ''))
  end

end