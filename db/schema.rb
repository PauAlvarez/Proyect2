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

ActiveRecord::Schema.define(version: 20140628031605) do

  create_table "books", force: true do |t|
    t.string   "isbn"
    t.string   "claveinterna"
    t.string   "titulo"
    t.string   "autor"
    t.string   "editorial"
    t.integer  "stock"
    t.float    "precio"
    t.integer  "provider_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "books", ["category_id"], name: "index_books_on_category_id"
  add_index "books", ["provider_id"], name: "index_books_on_provider_id"

  create_table "categories", force: true do |t|
    t.string   "NombreCategoria"
    t.text     "descripcionCategoria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "nombreClient"
    t.string   "telefonoClient"
    t.string   "direccionClient"
    t.string   "emailClient"
    t.string   "rfcClient"
    t.string   "razonsocialClient"
    t.string   "facebookClient"
    t.string   "linkedinClient"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fees", force: true do |t|
    t.float    "cantidaddinero"
    t.date     "fechaestablecida"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fees", ["user_id"], name: "index_fees_on_user_id"

  create_table "order_details", force: true do |t|
    t.integer  "cantidadlibros"
    t.float    "descuento"
    t.float    "preciounitario"
    t.float    "cantidadtotal"
    t.float    "importe"
    t.integer  "order_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_details", ["book_id"], name: "index_order_details_on_book_id"
  add_index "order_details", ["order_id"], name: "index_order_details_on_order_id"

  create_table "orders", force: true do |t|
    t.date     "fechapedido"
    t.date     "fechaprogamada"
    t.date     "fechaentregada"
    t.integer  "estatus"
    t.integer  "user_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "promotions", force: true do |t|
    t.date     "fechapromo"
    t.string   "mediodecomunica"
    t.text     "descrippromo"
    t.text     "acuerdo"
    t.integer  "user_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "promotions", ["client_id"], name: "index_promotions_on_client_id"
  add_index "promotions", ["user_id"], name: "index_promotions_on_user_id"

  create_table "providers", force: true do |t|
    t.string   "NombreProvider"
    t.string   "direccionProvider"
    t.date     "fechadasoProvider"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.date     "fechaventa"
    t.float    "total"
    t.integer  "user_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["client_id"], name: "index_sales_on_client_id"
  add_index "sales", ["user_id"], name: "index_sales_on_user_id"

  create_table "users", force: true do |t|
    t.string   "nombreUser"
    t.string   "direccionUser"
    t.string   "telefonoUser"
    t.string   "emailUser"
    t.string   "contrasenaUser"
    t.boolean  "roluser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
