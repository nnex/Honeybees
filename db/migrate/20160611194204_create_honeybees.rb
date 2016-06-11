class CreateHoneybees < ActiveRecord::Migration
  def change
    create_table(:honeybees) do |t|
    	t.string	:name
    	t.float		:age
    	t.boolean	:furry

      t.timestamps null: false
    end
  end
end
