class AddTableReferenceToSlot < ActiveRecord::Migration
  def change
    add_reference :slots, :timetables, index:true
  end
end
