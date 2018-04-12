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

ActiveRecord::Schema.define(version: 20180228030252) do

  create_table "alumnos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "numeroMatricula"
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "edad"
    t.integer  "colegio_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["colegio_id"], name: "index_alumnos_on_colegio_id", using: :btree
  end

  create_table "asistencia", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "materia_id"
    t.integer  "alumno_id"
    t.string   "resultadoAsistencia"
    t.date     "fechaHora"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["alumno_id"], name: "index_asistencia_on_alumno_id", using: :btree
    t.index ["materia_id"], name: "index_asistencia_on_materia_id", using: :btree
  end

  create_table "autorizacions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "codigo"
    t.integer  "alumno_id"
    t.integer  "colegio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alumno_id"], name: "index_autorizacions_on_alumno_id", using: :btree
    t.index ["colegio_id"], name: "index_autorizacions_on_colegio_id", using: :btree
  end

  create_table "colegios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.text     "direccion",  limit: 65535
    t.string   "pais"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "denuncia", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "asunto"
    t.text     "texto",      limit: 65535
    t.string   "imagen"
    t.string   "archivo"
    t.integer  "padre_id"
    t.integer  "alumno_id"
    t.string   "gravedad"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["alumno_id"], name: "index_denuncia_on_alumno_id", using: :btree
    t.index ["padre_id"], name: "index_denuncia_on_padre_id", using: :btree
  end

  create_table "eventos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "imagen"
    t.string   "titulo"
    t.text     "detalle",     limit: 65535
    t.string   "pais"
    t.date     "fechaEvento"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "materia", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.integer  "colegio_id"
    t.string   "horario"
    t.integer  "profesor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["colegio_id"], name: "index_materia_on_colegio_id", using: :btree
    t.index ["profesor_id"], name: "index_materia_on_profesor_id", using: :btree
  end

  create_table "observacions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "asunto"
    t.text     "mensajes",    limit: 65535
    t.integer  "profesor_id"
    t.integer  "padre_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["padre_id"], name: "index_observacions_on_padre_id", using: :btree
    t.index ["profesor_id"], name: "index_observacions_on_profesor_id", using: :btree
  end

  create_table "padres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "pais"
    t.string   "correo"
    t.string   "clave"
    t.string   "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "telefono"
    t.string   "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "alumnos", "colegios"
  add_foreign_key "asistencia", "alumnos"
  add_foreign_key "asistencia", "materia", column: "materia_id"
  add_foreign_key "autorizacions", "alumnos"
  add_foreign_key "autorizacions", "colegios"
  add_foreign_key "denuncia", "alumnos"
  add_foreign_key "denuncia", "padres"
  add_foreign_key "materia", "colegios"
  add_foreign_key "materia", "profesors"
  add_foreign_key "observacions", "padres"
  add_foreign_key "observacions", "profesors"
end
