# CURRENT FILE :: lib/generators/due_credit/templates/migration.rb
class CreateDueCreditTables < ActiveRecord::Migration
  def self.up
    create_table :campaigns do |t|
      t.string :name
      t.integer :threshold, :default => 0
      t.string :endpoint
      t.timestamps
    end

    create_table :referrers do |t|
      t.string :token
      t.string :model
      t.integer :model_id
      t.references :campaign
      t.timestamps
    end

    create_table :referrals do |t|
      t.references :referrer
      t.timestamps
    end

    add_index :campaigns, :name
    add_index :referrers, :token
    add_index :referrals, :referrer_id
  end

  def self.down

    remove_index :campaigns, :name
    remove_index :referrers, :token
    remove_index :referrals, :referrer_id

    drop_table :campaigns
    drop_table :referrers
    drop_table :referrals

  end
end