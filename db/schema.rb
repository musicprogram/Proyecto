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

ActiveRecord::Schema.define(version: 20140920002038) do

  create_table "activities", force: true do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type"
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type"
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "manager"
    t.string   "status"
    t.integer  "terms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", force: true do |t|
    t.string   "nombre_completo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "empleados_tareas", id: false, force: true do |t|
    t.integer "empleado_id", null: false
    t.integer "tarea_id",    null: false
  end

  create_table "invoices", force: true do |t|
    t.datetime "date"
    t.string   "company"
    t.decimal  "tax"
    t.string   "salesperson"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "proyects", force: true do |t|
    t.string   "nombre"
    t.date     "fecha_entrega"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tareas", force: true do |t|
    t.string   "nombre"
    t.decimal  "prioridad"
    t.integer  "proyect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tareas", ["proyect_id"], name: "index_tareas_on_proyect_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
