module Validatable
  class ValidatesInclusionOf < Validatable::ValidationBase
    required_option :within

    def valid?(instance)
      value = instance.send(attribute)
      return true if allow_nil && value.nil?
      return true if allow_blank && value.blank?
      within.include?(value)
    end

    def message(instance)
      super || "is not included"
    end
  end
end
