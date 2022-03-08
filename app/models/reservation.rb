class Reservation < ApplicationRecord
	validates :code, uniqueness: { case_sensitive: false }, presence: true
	validates :guest_email, uniqueness: { case_sensitive: true }, presence: true
end
