class User < ApplicationRecord
  def is_coman?
    !is_brand?
  end
end
