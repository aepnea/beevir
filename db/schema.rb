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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140414035708) do

  create_table "clientes", force: true do |t|
    t.string   "razon_social"
    t.string   "nombre"
    t.string   "rut"
    t.string   "direccion"
    t.string   "email"
    t.string   "telefono"
    t.string   "nombre_contacto"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comunidades", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "ciudad"
    t.integer  "region_id"
    t.integer  "tipo_unidad_id"
    t.integer  "user_id"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comunidades_users", force: true do |t|
    t.integer  "comunidad_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "espacios_comunes", force: true do |t|
    t.string   "espacio_comun"
    t.text     "descripcion"
    t.text     "reglamento"
    t.decimal  "precio",        precision: 10, scale: 0
    t.binary   "foto"
    t.integer  "comunidad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regiones", force: true do |t|
    t.string   "nombre"
    t.string   "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "sectores", force: true do |t|
    t.string   "nombre"
    t.integer  "comunidad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_unidades", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidades", force: true do |t|
    t.integer  "numero"
    t.integer  "mt2"
    t.boolean  "busy"
    t.integer  "sector_id"
    t.integer  "comunidad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "cliente_id"
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.string   "rut"
    t.string   "fono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "users_unidades", force: true do |t|
    t.integer  "user_id"
    t.integer  "unidad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
