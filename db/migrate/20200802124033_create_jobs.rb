class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :email
      t.string :job_title
      t.string :location
      t.string :job_region
      t.string :job_type
      t.string :job_description
      t.string :company_name
      t.string :tagline
      t.string :company_description
      t.string :website
      t.string :facebook_username
      t.string :twitter_username
      t.string :linkedin_username
    end
  end
end
