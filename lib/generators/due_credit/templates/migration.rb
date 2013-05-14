# CURRENT FILE :: lib/generators/due_credit/templates/migration.rb
class CreateDueCreditTables < ActiveRecord::Migration
  def self.up
    create_table :campaigns do |t|
      t.string :name
      t.integer :threshold
      t.string :endpoint
      t.timestamps
    end

    create_table :referrers do |t|
      t.string :token
      t.string :model
      t.integer :model_id
      t.references :campaigns
      t.timestamps
    end

    create_table :referrals do |t|
      t.references :referrers
      t.timestamps
    end

    add_index :campaigns, :name
    add_index :referrers, :token
    add_index :referrals, :referrers_id
  end

  def self.down
    drop_table :campaigns
    drop_table :referrers
    drop_table :referrals

    remove_index :campaigns, :name
    remove_index :referrers, :token
    remove_index :referrals, :referrers_id
  end
end