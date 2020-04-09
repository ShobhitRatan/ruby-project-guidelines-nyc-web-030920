class RemoveWebsiteFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :website, :string
  end
end
