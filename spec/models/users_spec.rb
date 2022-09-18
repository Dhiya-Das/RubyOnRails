require 'rails_helper'

RSpec.describe Users, type: :model do
  context 'Verify the firstname' do
      it 'ensures first name is mandatory' do
          user = User.new(first_name: 'Dhiya').save
          expect(user).to eq(false)
      end
      it 'ensures Last name is mandatory' do
          user = User.new(last_name: 'Das').save
          expect(user).to eq(false)
      end
      it 'ensures email is mandatory' do
          user = User.new(email: 'dhiyakk55@gmail.com').save
          expect(user).to eq(false)
      end
      
  end
end
