# frozen_string_literal: true

RSpec.describe String do
  describe "base" do
    let(:string) { "hello" }

    it "start_with?" do
      result = string.start_with?("he")

      expect(result).to eq(true)
    end

    it "include?" do
      result = string.include?("ll")

      expect(result).to eq(true)
    end

    it "delete" do
      result = string.delete("l")

      expect(result).to eq("heo")
    end

    it "ljust" do
      result = string.ljust(10, "o")

      expect(result).to eq("helloooooo")
    end
  end

  describe "practice" do
    it "start_with? + ljust + delete" do
      string = "hello"

      result = string.start_with?("he")
      expect(result).to eq(true)

      result = string.ljust(8, "o")
      expect(result).to eq("helloooo")

      result = string.delete("o")
      expect(result).to eq("hell")
    end

    it "delete + start_with?" do
      string = "Marco Castro"

      result = string.delete("ao")
      expect(result).to eq("Mrc Cstr")

      result = string.start_with?("Ma")
      expect(result).to eq(true)
    end
  end
end
