require "adif"

RSpec.describe ADIF::Log do
  let :log do
    IO.read(File.join((File.dirname(__FILE__)), "support/test.adi"))
  end

  describe ".parse" do
    subject { ADIF::Log.parse(log) }

    it "creates Record objects" do
      expect(subject.records.last).to be_kind_of(ADIF::Record)
    end

    it "pareses all records" do
      expect(subject.records.size).to eq(7)
    end

    it "parses record values" do
      expect(subject.records.first.operator).to eq("KF0PMS")
      expect(subject.records.first.call).to eq("VA2PM")
    end

    it "removes duplicates" do
      expect(subject.uniq_records.size).to eq(4)
    end

    it "exports ADIF" do
      expected = IO.read(File.join((File.dirname(__FILE__)), "support/uniq.adi").chomp)
      expect(subject.to_uniq_adif.sub(/^.*\n/, "")).to eq(expected.sub(/^.*\n/, ""))
    end
  end
end
