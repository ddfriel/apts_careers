class Job < ActiveRecord::Base
  attr_accessible :apply_url, :business_unit, :category, :description, :job_location_country_code, :job_location_municipality, :job_location_region, :position_type, :posting_date, :required_experience, :required_skills, :silkroad_job_id, :title, :tracking_code
end
