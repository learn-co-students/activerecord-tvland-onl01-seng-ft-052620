class CreateCharactersCatchphrase < ActiveRecord::Migration[5.1]
  def change
    add_columnlearn :characters, :catchphrase, :string
  end
end