module Monk
  def find_it(obj, method)
    klass = obj.kind_of?(Class) ? obj : obj.class

    (klass.superclass && find_it(klass.superclass, method)) ||
      (klass.instance_methods.include?(method) && klass)
  end
end

