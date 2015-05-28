class AddTokenKeyToVoter < ActiveRecord::Migration
  def change
    add_column :voters, :token_key_string, :string
  end
end
