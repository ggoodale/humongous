module Validatable
  class ValidatesUniquenessOf < Validatable::ValidationBase
    option :scope

    def valid?(instance)
      conditions = { self.attribute => instance.send(attribute) }
      if scope
        conditions.merge!(scope => instance.send(scope))
      end
      doc = instance.class.first(:conditions => conditions)
      doc.nil? || instance.id == doc.id
    end

    def message(instance)
      super || "must be unique"
    end
  end
end