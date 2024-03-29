# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20170620051658) do

  create_table "escolhas", :force => true do |t|
    t.text     "texto"
    t.integer  "voto"
    t.integer  "questao_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "escolhas", ["questao_id"], :name => "index_escolhas_on_questao_id"

  create_table "questaos", :force => true do |t|
    t.string   "texto"
    t.date     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "resposta", :force => true do |t|
    t.string   "texto"
    t.integer  "questao_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "resposta", ["questao_id"], :name => "index_resposta_on_questao_id"

end
