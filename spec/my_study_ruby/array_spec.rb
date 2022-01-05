# frozen_string_literal: true

RSpec.describe Array do
  describe "base" do
    it "delete_if" do
      a = [:foo, "bar", 2, "bat"]

      result = a.delete_if { |element| element.to_s.start_with?("b") }

      expect(result).to eq([:foo, 2])
    end

    it "drop" do
      a = ["a", "b", "c", 3, 4, 5]

      result = a.drop(2)

      expect(result).to eq(["c", 3, 4, 5])
    end

    it "select" do
      a = [:foo, "bar", 2, :bam]

      result = a.select do |element|
        element.to_s.start_with?("b")
      end

      expect(result).to eq(["bar", :bam])
    end

    it "empty?" do
      a = []

      expect(a.empty?).to eq(true)
    end
  end

  describe "practice" do
    it "delete_if + empty?" do
      basket = %w[banana maça uva]

      new_basket = basket.delete_if { |element| element.to_s.include?("a") }

      expect(new_basket.empty?).to eq(true)
    end

    it "select + drop + empty?" do
      basket = %w[banana maça uva]

      new_basket = basket.select { |element| element.to_s.include?("uva") }

      expect(new_basket[0]).to eq("uva")

      final_basket = new_basket.drop(1)

      expect(final_basket.empty?).to eq(true)
    end
  end
end
