json.extract! @donative, :id,:user_id, :bump_id, :money, :comment
json.id @donative.id
json.user_id @donative.user_id
json.bump_id @donative.bump_id
json.money @donative.money
json.comment @donative.comment
json.user do
	json.email @donative.user.email
end
