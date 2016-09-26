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

ActiveRecord::Schema.define(version: 20160506083743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.text     "objectives",    default: "", null: false
    t.text     "statutes",      default: "", null: false
    t.text     "social_bodies", default: "", null: false
    t.text     "message",       default: "", null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "benefits", force: :cascade do |t|
    t.string   "title",       default: "", null: false
    t.text     "description", default: "", null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "category_id"
  end

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       default: "", null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "chapters", force: :cascade do |t|
    t.text     "title"
    t.integer  "number"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fees", force: :cascade do |t|
    t.decimal  "value",      precision: 8, scale: 2
    t.string   "name"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name",                  default: "", null: false
    t.text     "description",           default: "", null: false
    t.string   "author",                default: "", null: false
    t.integer  "category"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "laws", force: :cascade do |t|
    t.text     "url"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "name",                   default: "",   null: false
    t.integer  "membership_number"
    t.string   "naturality",             default: "",   null: false
    t.date     "birthday"
    t.text     "residence",              default: "",   null: false
    t.string   "zip_code",               default: "",   null: false
    t.string   "phone",                  default: "",   null: false
    t.string   "office",                 default: "",   null: false
    t.string   "office_address",         default: "",   null: false
    t.string   "office_zipcode",         default: "",   null: false
    t.boolean  "attached_registry",      default: true
    t.string   "office_phone",           default: "",   null: false
    t.string   "office_fax",             default: "",   null: false
    t.string   "location_class",         default: "",   null: false
    t.date     "career_start_date"
    t.string   "personal_class",         default: "",   null: false
    t.date     "class_promotion_date"
    t.string   "practice_level",         default: "",   null: false
    t.date     "level_start_date"
    t.boolean  "pending",                default: true, null: false
    t.integer  "role",                   default: 0,    null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "office_email"
  end

  add_index "members", ["confirmation_token"], name: "index_members_on_confirmation_token", unique: true, using: :btree
  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree

  create_table "partners", force: :cascade do |t|
    t.string   "name",               default: "", null: false
    t.text     "description",        default: "", null: false
    t.string   "url",                default: "", null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",                 default: "", null: false
    t.text     "description"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "private_informations", force: :cascade do |t|
    t.text     "text"
    t.text     "title"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "protocols", force: :cascade do |t|
    t.string   "name",        default: "", null: false
    t.text     "description", default: "", null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "benefit_id"
  end

  create_table "slides", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "social_bodies", force: :cascade do |t|
    t.string   "name"
    t.integer  "role"
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
