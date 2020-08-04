class CreateStaticPages < ActiveRecord::Migration[5.2]
  def change
    create_table :static_pages do |t|
      t.text :about_us
      t.text :reviews
      t.text :faq
      t.text :testimonial

      t.timestamps
    end
  end
end
