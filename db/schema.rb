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

ActiveRecord::Schema.define(version: 2018_11_26_113712) do

  create_table "afavorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "asound_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alikes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "asound_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "asounds", force: :cascade do |t|
    t.string "a_sound"
    t.text "a_body"
    t.string "a_bpm"
    t.string "a_key"
    t.string "a_part"
    t.integer "a_likes_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "audio_files", force: :cascade do |t|
    t.string "gname"
    t.string "gfile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bfavorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "bsound_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blikes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "bsound_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bsounds", force: :cascade do |t|
    t.string "b_sound"
    t.text "b_body"
    t.string "b_bpm"
    t.string "b_key"
    t.string "b_part"
    t.integer "b_likes_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gsound_id"
    t.integer "bsound_id"
    t.integer "psound_id"
    t.integer "asound_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gsounds", force: :cascade do |t|
    t.string "g_sound"
    t.text "g_body"
    t.string "g_bpm"
    t.string "g_key"
    t.string "g_part"
    t.integer "g_likes_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "inquiries", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "bsound_id"
    t.integer "psound_id"
    t.integer "asound_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gsound_id"
  end

  create_table "pfavorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "psound_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plikes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "psound_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "psounds", force: :cascade do |t|
    t.string "p_sound"
    t.text "p_body"
    t.string "p_bpm"
    t.string "p_key"
    t.string "p_part"
    t.integer "p_likes_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "following_id"
    t.integer "follower_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_name"
    t.string "user_image_id"
    t.text "profile"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
