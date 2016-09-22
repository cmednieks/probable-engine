FactoryGirl.define do
  factory :incurred_incidental do
    association :rental, factory: :mock_rental
    association :incidental_type
    adjustment_amount 1

    after(:build) do |incidental|
      incidental.notes = FactoryGirl.build_list(:note, 1)
    end
  end

  factory :invalid_incidental, parent: :incurred_incidental do
    adjustment_amount nil
  end
end
