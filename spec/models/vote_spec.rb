require 'spec_helper'

describe Vote do

  it { should belong_to :link }
  it { should belong_to :user }



end
