class Api::V1::ReservationsController < ApplicationController

	def booking_payload
		reservation = Reservation.new
		if params["reservation"]["code"].present?
			res_data = params["reservation"]
			reservation.code               = res_data["code"]
			reservation.start_date         = res_data["start_date"]
			reservation.end_date           = res_data["end_date"]
			reservation.nights             = res_data["nights"]
			reservation.guests             = res_data["number_of_guests"]
			reservation.adults             = res_data["guest_details"]["number_of_adults"]
			reservation.childrens          = res_data["guest_details"]["number_of_children"]
			reservation.infants            = res_data["guest_details"]["number_of_infants"]
			reservation.status             = res_data["status_type"] == "accepted" ? true : false
			reservation.guest_first_name   = res_data["guest_first_name"]
			reservation.guest_last_name    = res_data["guest_last_name"]
			reservation.guest_phone_number = res_data["guest_phone_numbers"].first
			reservation.guest_email        = res_data["guest_email"]
			reservation.currency           = res_data["host_currency"]
			reservation.payout_price       = res_data["expected_payout_amount"]
			reservation.security_price     = res_data["listing_security_price_accurate"]
			reservation.total_price        = res_data["total_paid_amount_accurate"]
		end
		if params["reservation_code"].present?
			reservation.code               = params["reservation_code"]
			reservation.start_date         = params["start_date"]
			reservation.end_date           = params["end_date"]
			reservation.nights             = params["nights"]
			reservation.guests             = params["guests"]
			reservation.adults             = params["adults"]
			reservation.childrens          = params["children"]
			reservation.infants            = params["infants"]
			reservation.status             = params["status"] == "accepted" ? true : false
			reservation.guest_first_name   = params["guest"]["first_name"]
			reservation.guest_last_name    = params["guest"]["last_name"]
			reservation.guest_phone_number = params["guest"]["phone"]
			reservation.guest_email        = params["guest"]["email"]
			reservation.currency           = params["currency"]
			reservation.payout_price       = params["payout_price"]
			reservation.security_price     = params["security_price"]
			reservation.total_price        = params["total_price"]
		end
		if reservation.save
			render json: reservation, status: 200
    else
      render json: {error: "Reservation Failed"}
		end
	end

end
