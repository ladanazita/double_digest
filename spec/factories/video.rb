require 'rails_helper'

FactoryGirl.define do

	factory :fully_functional_video, class: Video do
		url "https://www.youtube.com/embed/ZhfJX46P2Jk"
		trend_id 1
	end

	factory :no_url_video, class: Video do
		url ""
		trend_id 1
	end

	factory :no_trend_video, class: Video do
		url "https://www.youtube.com/embed/ZhfJX46P2Jk"
		trend_id ""
	end

	factory :invalid_url_video, class: Video do
		url "https://www.#.com"
		trend_id 1
	end

end