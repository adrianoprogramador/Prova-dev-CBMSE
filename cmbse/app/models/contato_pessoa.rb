class ContatoPessoa < ApplicationRecord
  belongs_to :pessoa
  belongs_to :tipo_contato
end
