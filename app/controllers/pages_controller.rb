class PagesController < ApplicationController
  def home
    @signed_in  = []
    @signed_out = []

    for i in 1..12 do
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
