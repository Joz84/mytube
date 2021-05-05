class Visio < ApplicationRecord
  belongs_to :user

  before_create :add_api_token

  def add_api_token
    visio_service = VisioService.new
    room = visio_service.create_room
    self.api_token = room['name']
  end
end
