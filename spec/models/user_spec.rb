require 'spec_helper'

describe User do
  it { should have_many :links }
  it { should have_many :votes }
end
