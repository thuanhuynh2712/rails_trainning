class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.integer :status
      t.string :title
      t.string :published_date
      t.string :share_link
      t.integer :salary_from
      t.integer :salary_to
      t.references :created_by, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
