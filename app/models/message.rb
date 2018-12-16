class Message < ApplicationRecord
  require 'encrypted_coder'
  serialize :body, EncryptedCoder.new

  def destroy_after_visit
    if self.destruction == true && self.visited == true
      self.destroy
    end
  end
end
