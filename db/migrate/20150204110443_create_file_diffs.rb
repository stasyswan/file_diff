class CreateFileDiffs < ActiveRecord::Migration
  def change
    create_table :file_diffs do |t|

      t.timestamps
    end
  end
end
