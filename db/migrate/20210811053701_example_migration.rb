class ExampleMigration < ActiveRecord::Migration[6.1]
  def change
    create_table :distributors do |t|
      t.string :zipcode
      t.string :abc

      # reversible do |dir|
    #   dir.up do
    #     # add a CHECK constraint
    #           CHECK(length(zipcode) == 5);
    #   end
    #   dir.down do
    #     execute <<-SQL
    #       ALTER TABLE distributors
    #         DROP CONSTRAINT zipchk
    #     SQL
    #   end
    # end


  #   reversible do |dir|
  #     dir.up do
  #       # add a CHECK constraint
  #       execute("ALTER TABLE distributors ADD CONSTRAINT zipchk CHECK (char_length(zipcode) = 5) NO INHERIT;")
  #     end
  #     dir.down do
  #       execute("ALTER TABLE distributors DROP CONSTRAINT zipchk")
  #     end
  #   end


    end
  end
end