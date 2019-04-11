class Hotel < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validate :picture_size
  scope :select_hotel, -> {select :id, :name, :address, :phone}
  mount_uploader :picture, PictureUploader
  HOTEL_PARAMS = %i(name address phone description picture).freeze

  private
  def picture_size
    return unless picture.size > Settings.paginate_perpage.megabytes
    errors.add :picture, I18n.t("models.hotel.max_size")
  end
end
