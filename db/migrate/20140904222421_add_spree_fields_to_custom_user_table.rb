class AddSpreeFieldsToCustomUserTable < ActiveRecord::Migration
  def up
    add_column "cms_users", :spree_api_key, :string, :limit => 48
    add_column "cms_users", :ship_address_id, :integer
    add_column "cms_users", :bill_address_id, :integer
  end
end
