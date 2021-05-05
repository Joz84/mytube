class VisioService
    def initialize
        @api_key = ENV['DAILY_CO_API_KEY']
        @host_url = 'https://api.daily.co/v1/'
    end


    def create_room
        room_str = RestClient::Request.execute(
            method: :post, 
            url: "#{@host_url}rooms",
            headers: {
                content_type: :json,
                accept: :json,
                Authorization: @api_key
              })
        JSON.parse(room_str)
    end
end