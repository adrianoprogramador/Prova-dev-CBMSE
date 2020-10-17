class CreateContatoPessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :contato_pessoas do |t|
      t.string :contato
      t.references :pessoa, foreign_key: true
      t.references :tipo_contato, foreign_key: true

      t.timestamps
    end
  end
end
