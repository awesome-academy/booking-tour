module Admin
  class HotelsController < AdminBaseController
    before_action :hotel_params, only: %i(create)

    def index
      @hotels = Hotel.select_hotel.page(params[:page]).per Settings.paginate_perpage
    end

    def new
      @hotel = Hotel.new
    end

    def create
      @hotel = Hotel.create hotel_params
      if @hotel.save
        flash[:success] = t "admin.hotels.create.create_hotel"
        redirect_to admin_hotels_path
      else
        render :new
      end
    end

    private
    def hotel_params
      params.require(:hotel).permit Hotel::HOTEL_PARAMS
    end

    def count_number index, page
      per_page = Settings.paginate_perpage
      count = (page-1)*per_page + index
    end
    helper_method :count_number
  end
end
