module Theblog
  class AccountsRole < ActiveRecord::Base
    belongs_to :account, class_name: Incarnator.account_model
    belongs_to :role

    validates_presence_of :account, :role
  end
end
