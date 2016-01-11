class AddVoteCountToCat < ActiveRecord::Migration
  def change
    add_column :cats, :vote_count, :integer, :null => false, :default => 0
  end
end
