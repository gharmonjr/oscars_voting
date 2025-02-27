# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_02_27_004202) do
  create_table "actor_categories", force: :cascade do |t|
    t.integer "actor_id", null: false
    t.integer "category_id", null: false
    t.integer "year", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id", "category_id"], name: "udx_actor_category", unique: true
    t.index ["actor_id"], name: "index_actor_categories_on_actor_id"
    t.index ["category_id"], name: "index_actor_categories_on_category_id"
  end

  create_table "actor_category_users", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "actor_category_id", null: false
    t.boolean "vote", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_category_id"], name: "index_actor_category_users_on_actor_category_id"
    t.index ["user_id", "actor_category_id"], name: "index_actor_category_users_on_user_id_and_actor_category_id", unique: true
    t.index ["user_id"], name: "index_actor_category_users_on_user_id"
  end

  create_table "actors", force: :cascade do |t|
    t.string "name", null: false
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_actors_on_name", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
  end

  create_table "movie_categories", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "category_id", null: false
    t.integer "year", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_movie_categories_on_category_id"
    t.index ["movie_id", "category_id"], name: "udx_movie_category", unique: true
    t.index ["movie_id"], name: "index_movie_categories_on_movie_id"
  end

  create_table "movie_category_users", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "movie_category_id", null: false
    t.boolean "vote", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_category_id"], name: "index_movie_category_users_on_movie_category_id"
    t.index ["user_id", "movie_category_id"], name: "index_movie_category_users_on_user_id_and_movie_category_id", unique: true
    t.index ["user_id"], name: "index_movie_category_users_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.integer "release_year"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title", "release_year"], name: "idx_unique_movie_year", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "actor_categories", "actors"
  add_foreign_key "actor_categories", "categories"
  add_foreign_key "actor_category_users", "actor_categories"
  add_foreign_key "actor_category_users", "users"
  add_foreign_key "movie_categories", "categories"
  add_foreign_key "movie_categories", "movies"
  add_foreign_key "movie_category_users", "movie_categories"
  add_foreign_key "movie_category_users", "users"
end
