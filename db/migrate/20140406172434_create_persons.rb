class CreatePersons < ActiveRecord::Migration
  def change
    create_table :persons do |t|
    	t.string 	:first_name
    	t.string 	:last_name
    	t.date	 	:birth_date
    	t.integer	:drinks
    	t.string	:img_url
    	t.boolean	:license
    end
  end
end


