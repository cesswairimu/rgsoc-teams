FactoryGirl.define do
  factory :attendance do
	  team
	  conference

    trait :student_attendance do
      after(:create) do |attendance|
        attendance.team.roles.create name: "student", user: create(:user)
        attendance.save!
        attendance
      end
    end
  end
end
