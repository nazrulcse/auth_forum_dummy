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

ActiveRecord::Schema.define(version: 20151020140005) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "auth_forum_abouts", force: :cascade do |t|
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "auth_forum_admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",   null: false
    t.string   "encrypted_password",     limit: 255, default: "",   null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.boolean  "forem_admin",                        default: true
  end

  add_index "auth_forum_admin_users", ["email"], name: "index_auth_forum_admin_users_on_email", unique: true, using: :btree
  add_index "auth_forum_admin_users", ["reset_password_token"], name: "index_auth_forum_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "auth_forum_carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "auth_forum_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "auth_forum_contacts", force: :cascade do |t|
    t.string   "full_name",  limit: 255
    t.string   "email",      limit: 255
    t.string   "subject",    limit: 255
    t.text     "message",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "auth_forum_events", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.integer  "product_id",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "auth_forum_line_items", force: :cascade do |t|
    t.integer  "cart_id",    limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "quantity",   limit: 4, default: 1
    t.integer  "order_id",   limit: 4
  end

  create_table "auth_forum_orders", force: :cascade do |t|
    t.string   "card_holder_name", limit: 255
    t.string   "email",            limit: 255
    t.boolean  "is_guest",                     default: false
    t.integer  "user_id",          limit: 4
    t.integer  "card_number",      limit: 4
    t.string   "first_name",       limit: 255
    t.string   "last_name",        limit: 255
    t.string   "s_address",        limit: 255
    t.string   "s_country",        limit: 255
    t.string   "s_city",           limit: 255
    t.string   "s_state",          limit: 255
    t.integer  "s_zip",            limit: 4
    t.string   "b_name",           limit: 255
    t.string   "b_address",        limit: 255
    t.string   "b_country",        limit: 255
    t.string   "b_state",          limit: 255
    t.string   "b_city",           limit: 255
    t.integer  "b_zip",            limit: 4
    t.integer  "status_id",        limit: 4
    t.boolean  "same_address",                 default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "auth_forum_posts", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "author",      limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "user_id",     limit: 4
    t.boolean  "is_approved",               default: false
  end

  create_table "auth_forum_products", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.decimal  "price",                     precision: 10
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "image",       limit: 255
    t.integer  "category_id", limit: 4
  end

  create_table "forem_categories", force: :cascade do |t|
    t.string   "name",       limit: 255,             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",       limit: 255
    t.integer  "position",   limit: 4,   default: 0
  end

  add_index "forem_categories", ["slug"], name: "index_forem_categories_on_slug", unique: true, using: :btree

  create_table "forem_forums", force: :cascade do |t|
    t.string  "name",        limit: 255
    t.text    "description", limit: 65535
    t.integer "category_id", limit: 4
    t.integer "views_count", limit: 4,     default: 0
    t.string  "slug",        limit: 255
    t.integer "position",    limit: 4,     default: 0
  end

  add_index "forem_forums", ["slug"], name: "index_forem_forums_on_slug", unique: true, using: :btree

  create_table "forem_groups", force: :cascade do |t|
    t.string "name", limit: 255
  end

  add_index "forem_groups", ["name"], name: "index_forem_groups_on_name", using: :btree

  create_table "forem_memberships", force: :cascade do |t|
    t.integer "group_id",  limit: 4
    t.integer "member_id", limit: 4
  end

  add_index "forem_memberships", ["group_id"], name: "index_forem_memberships_on_group_id", using: :btree

  create_table "forem_moderator_groups", force: :cascade do |t|
    t.integer "forum_id", limit: 4
    t.integer "group_id", limit: 4
  end

  add_index "forem_moderator_groups", ["forum_id"], name: "index_forem_moderator_groups_on_forum_id", using: :btree

  create_table "forem_posts", force: :cascade do |t|
    t.integer  "topic_id",    limit: 4
    t.text     "text",        limit: 65535
    t.integer  "user_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reply_to_id", limit: 4
    t.string   "state",       limit: 255,   default: "pending_review"
    t.boolean  "notified",                  default: false
  end

  add_index "forem_posts", ["reply_to_id"], name: "index_forem_posts_on_reply_to_id", using: :btree
  add_index "forem_posts", ["state"], name: "index_forem_posts_on_state", using: :btree
  add_index "forem_posts", ["topic_id"], name: "index_forem_posts_on_topic_id", using: :btree
  add_index "forem_posts", ["user_id"], name: "index_forem_posts_on_user_id", using: :btree

  create_table "forem_subscriptions", force: :cascade do |t|
    t.integer "subscriber_id", limit: 4
    t.integer "topic_id",      limit: 4
  end

  create_table "forem_topics", force: :cascade do |t|
    t.integer  "forum_id",     limit: 4
    t.integer  "user_id",      limit: 4
    t.string   "subject",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "locked",                   default: false,            null: false
    t.boolean  "pinned",                   default: false
    t.boolean  "hidden",                   default: false
    t.datetime "last_post_at"
    t.string   "state",        limit: 255, default: "pending_review"
    t.integer  "views_count",  limit: 4,   default: 0
    t.string   "slug",         limit: 255
  end

  add_index "forem_topics", ["forum_id"], name: "index_forem_topics_on_forum_id", using: :btree
  add_index "forem_topics", ["slug"], name: "index_forem_topics_on_slug", unique: true, using: :btree
  add_index "forem_topics", ["state"], name: "index_forem_topics_on_state", using: :btree
  add_index "forem_topics", ["user_id"], name: "index_forem_topics_on_user_id", using: :btree

  create_table "forem_views", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "count",             limit: 4,   default: 0
    t.integer  "viewable_id",       limit: 4
    t.string   "viewable_type",     limit: 255
    t.datetime "current_viewed_at"
    t.datetime "past_viewed_at"
  end

  add_index "forem_views", ["updated_at"], name: "index_forem_views_on_updated_at", using: :btree
  add_index "forem_views", ["user_id"], name: "index_forem_views_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",               null: false
    t.string   "encrypted_password",     limit: 255, default: "",               null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,                null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.boolean  "forem_admin",                        default: false
    t.string   "forem_state",            limit: 255, default: "pending_review"
    t.boolean  "forem_auto_subscribe",               default: false
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
