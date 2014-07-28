class User < ActiveRecord::Base
  has_many :offers
  has_many :demands
  accepts_nested_attributes_for :offers
  accepts_nested_attributes_for :demands
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
