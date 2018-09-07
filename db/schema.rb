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

ActiveRecord::Schema.define(version: 2018_09_01_100227) do

  create_table "affectations", force: :cascade do |t|
    t.integer "cabinet_id"
    t.integer "creneau_id"
    t.integer "praticien_id"
    t.datetime "datedebut"
    t.datetime "datefin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cabinet_id"], name: "index_affectations_on_cabinet_id"
    t.index ["creneau_id"], name: "index_affectations_on_creneau_id"
    t.index ["praticien_id"], name: "index_affectations_on_praticien_id"
  end

  create_table "cabinets", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.boolean "archive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lieu_id"
    t.index ["lieu_id"], name: "index_cabinets_on_lieu_id"
  end

  create_table "creneaus", force: :cascade do |t|
    t.integer "numjour"
    t.string "txtjour"
    t.integer "heuredebut"
    t.integer "heurefin"
    t.boolean "archive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "tarif1", precision: 8, scale: 2
    t.decimal "tarif2", precision: 8, scale: 2
  end

  create_table "lieus", force: :cascade do |t|
    t.string "nom"
    t.string "adresse"
    t.string "codepostal"
    t.string "ville"
    t.boolean "archive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "praticiens", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "pratique"
    t.string "tel"
    t.datetime "datemaj"
    t.boolean "kids"
    t.boolean "maxsenss"
    t.boolean "archive"
  end

  create_table "services", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.decimal "tarifht"
    t.decimal "tva"
    t.integer "periodicitemois"
    t.string "condition1"
    t.string "condition2"
    t.boolean "archive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
