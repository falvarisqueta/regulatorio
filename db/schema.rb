# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_29_160321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cros", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "especialidads", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "estudios", force: :cascade do |t|
    t.string "nombre"
    t.integer "estado"
    t.integer "especialidad_id"
    t.date "fecha_ppi"
    t.date "fecha_aprobacion_ppi"
    t.date "fecha_envio_sponsor"
    t.date "fecha_envio_ccis"
    t.date "fecha_aprobacion_ccis"
    t.date "fecha_envio_anmat"
    t.date "fecha_aprobacion_anmat"
    t.text "comentario"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "laboratorio_id"
    t.string "codigo"
    t.integer "commitment"
    t.integer "area_id"
    t.integer "cro_id"
    t.integer "contrato"
    t.date "fecha_envio_ccis_centro"
    t.date "fecha_aprobacion_ccis_centro"
    t.date "fecha_envio_anmat_centro"
    t.date "fecha_aprobacion_anmat_centro"
    t.integer "investigador_id"
    t.json "archivos"
  end

  create_table "investigadors", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "laboratorios", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
