# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_17_020218) do

  create_table "contato_pessoas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "contato"
    t.bigint "pessoa_id"
    t.bigint "tipo_contato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pessoa_id"], name: "index_contato_pessoas_on_pessoa_id"
    t.index ["tipo_contato_id"], name: "index_contato_pessoas_on_tipo_contato_id"
  end

  create_table "pessoas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome", default: "", null: false
    t.string "sobrenome", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_contatos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contato_pessoas", "pessoas"
  add_foreign_key "contato_pessoas", "tipo_contatos"
end
