class ApplicationController < ActionController::Base
    before_action :authorized
    wrap_parameters format:[]
    

    def encode_token(payload)
        # don't forget to hide your secret in an environment variable
        JWT.encode(payload, 'my_s3cr3t')
    end

    def auth_header
        # { 'Authorization': 'Bearer <token>' }
        request.headers['Authorization']
    end
    
    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            # headers: { 'Authorization': 'Bearer <token>' }
            begin
            JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
            # JWT.decode => [{ "beef"=>"steak" }, { "alg"=>"HS256" }]
            rescue JWT::DecodeError
            nil
            end
        end
    end

    def current_user
        if decoded_token
          # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
          # or nil if we can't decode the token
          buyer_id = decoded_token[0]['buyer_id']
          @buyer = Buyer.find_by(id: buyer_id)
        end
    end

    def seller_now
        if decoded_token
          # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
          # or nil if we can't decode the token
          seller_id = decoded_token[0]['seller_id']
          @seller = Seller.find_by(id: seller_id)
        end
    end
    
    def logged_in?
        !!current_user
    end

    def vendor?
        !!seller_now
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end

    def seller_auth
        render json: { message: 'Not a Vendor' }, status: :unauthorized unless vendor?
    end

    # def authorized
    #     return render json: { errors: ["Not a Buyer"] }, status: :unauthorized unless session.include? :buyer_id
    # end

    # def seller_auth
    #     return render json: { errors: ["Not a Seller"] }, status: :unauthorized unless session.include? :seller_id
    # end
end
