class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome, null: false, default: ""
      t.string :sobrenome, null: false, default: ""

      t.timestamps
    end
  end
end
