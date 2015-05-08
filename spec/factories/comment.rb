FactoryGirl.define do

	factory :comment_with_body_text, class: Comment do
		body "Test with Body Text"
	end
	factory :comment_no_body_text, class: Comment do
		body ""
	end

end