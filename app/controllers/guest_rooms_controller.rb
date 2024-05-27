class GuestRoomsController < ApplicationController
  def create
    guest = Guest.find(params[:id])
    room = Room.find(params[:room_id])
    GuestRoom.create(guest:, room:)
    redirect_to "/guests/#{guest.id}"
  end
end
