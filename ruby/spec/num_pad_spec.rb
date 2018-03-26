require_relative '../num_pad'

describe NumPad do
  subject { Object.new.extend(NumPad) }

  describe ".presses" do
    it "should work for simple words" do
      expect(subject.presses('LOL')).to eq 9
    end

    # it "should work for phrases with spaces" do
    #   expect(described_class.presses('HOW R U')).to eq 13
    # end
  end

end