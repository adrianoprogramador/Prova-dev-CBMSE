class Pessoa < ApplicationRecord
  has_many :contato_pessoas

  accepts_nested_attributes_for :contato_pessoas, reject_if: :all_blank, allow_destroy: true
end
