FactoryBot.define do
  factory :user do |f|
    f.name {FFaker::Name.name}
    f.encrypted_password {FFaker::InternetSE.password}
    f.role {Settings.role_default}
    f.phone_number {FFaker::PhoneNumber.phone_number}
    f.created_at {Time.zone.now}
    f.updated_at {Time.zone.now}
  end
end
