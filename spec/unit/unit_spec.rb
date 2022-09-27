require 'rails_helper'

RSpec.describe CurrentMember, type: :model do
  subject do
    described_class.new(memberID: 1, name: "John Doe", email: "johndoe@email.com", isAdmin: false, isAlumni: false)
  end

  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a memberID' do
    subject.memberID = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a email' do
    subject.email = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without being either an admin or not an admin' do
    subject.isAdmin = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without being either an alumni or not an alumni' do
    subject.isAlumni = nil
    expect(subject).not_to be_valid
  end
end

