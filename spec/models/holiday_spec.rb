# require 'rails_helper'

describe Holiday do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:photo) }
  it { is_expected.to validate_presence_of(:bible_quote) }
  it { is_expected.to validate_presence_of(:bible_src) }
  it { is_expected.to validate_presence_of(:plot) }
  it { is_expected.to validate_presence_of(:customs) }
end
