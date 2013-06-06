module Datastore
  class PairRequest < Datastore::Base

    def get_user_pair_requests(id)
      user_pair_requests = []

      @records.each do |id, pair_request|
        user_pair_requests << pair_request if pair_request.user_id == id
      end

      user_pair_requests
    end
  end
end
