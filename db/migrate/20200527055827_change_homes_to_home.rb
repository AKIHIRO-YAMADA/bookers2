class ChangeHomesToHome < ActiveRecord::Migration[5.2]
  def change
     rename_table :homes, :home
  end
end
