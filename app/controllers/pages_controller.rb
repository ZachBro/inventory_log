class PagesController < ApplicationController
  def home
    @signed_in  = []
    @signed_out = []
    @count = AssetCount.first.count

    for i in 1..(@count.to_i) do
     next unless Inventory.find_by(number: i)
     inventory = Inventory.where(number: i).last
     if inventory.employee_in
       @signed_in.push(i)
     else
       @signed_out.push(i)
     end
   end
  end
end
