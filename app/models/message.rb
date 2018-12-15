class Message < ApplicationRecord
  def destroy_after_visit
    if self.destruction == true && self.visited == true
      self.destroy
    end
  end
end
