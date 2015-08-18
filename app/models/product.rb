class Product < ActiveRecord::Base


  def to_param
    "#{id}-#{title.dasherize}"
  end

end
