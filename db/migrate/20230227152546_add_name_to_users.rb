class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    has_many :offers, dependent: :destroy
  end
end
