class User < ApplicationRecord
  enum status: [ :inactive, :active, :archived ]
end
