class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :silkroad_job_id
      t.string :title
      t.string :description
      t.integer :tracking_code
      t.string :apply_url
      t.string :required_skills
      t.string :required_experience
      t.date :posting_date
      t.string :job_location_country_code
      t.string :job_location_region
      t.string :job_location_municipality
      t.string :category
      t.string :business_unit
      t.string :position_type

      t.timestamps
    end
  end
end
