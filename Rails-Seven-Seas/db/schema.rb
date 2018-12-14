ActiveRecord::Schema.define(version: 20170830202953) do

  create_table "seas", force: :cascade do |t|
    t.string "name"
    t.float "temperature"
    t.text "bio"
    t.string "image_url"
    t.string "mood"
    t.string "favorite_color"
    t.string "scariest_creature"
    t.boolean "has_mermaids", default: true
  end

end
