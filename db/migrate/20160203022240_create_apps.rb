class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.text :time
      t.text :ip
      t.text :founder_name
      t.text :founder_email
      t.text :founder_phone
      t.text :num_founders
      t.text :full_time
      t.text :hours
      t.text :team_descrip
      t.text :linkedin
      t.text :uni_connection
      t.text :other_connection
      t.text :academ_dept
      t.text :other_academ_dept
      t.text :company_name
      t.text :company_url
      t.text :company_descrip
      t.text :company_history
      t.text :company_progress
      t.text :company_market
      t.text :company_monetization
      t.text :company_funding
      t.text :company_targets
      t.text :company_competitors
      t.text :company_ext_fund
      t.text :how_hear
      t.text :anything_else
      t.timestamps
    end
  end
end
