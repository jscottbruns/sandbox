require_relative '../autocomplete'

describe ".autocomplete" do
  dictionary = [
    'abnormal',
    'arm-wrestling',
    'absolute',
    'airplane',
    'airport',
    'amazing',
    'Apple',
    'ball'
  ]

  it "should return the correct suggestions" do
    expect(autocomplete('a*5p*@2p', dictionary)).to eq ['Apple']
    expect(autocomplete('ai', dictionary)).to eq ['airplane','airport']
    expect(autocomplete('a', dictionary)).to eq ['abnormal','arm-wrestling','absolute','airplane','airport']
    expect(autocomplete('AM', dictionary)).to eq ['amazing']
    expect(autocomplete('Arm-w', dictionary)).to eq ['arm-wrestling']
  end
end