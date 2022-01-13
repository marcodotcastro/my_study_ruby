# frozen_string_literal: true

require "date"

RSpec.describe Date do
  describe "base" do
    it "strptime" do
      date = "03/02/2001"

      result = Date.strptime(date, "%d/%m/%Y")

      expect(result).to eq(Date.new(2001, 2, 3))
    end

    it "today" do
      result = Date.today

      expect(result).to eq(Date.new(2022, 1, 13))
    end

    it "friday?" do
      date = "14/01/2022"

      result = Date.strptime(date, "%d/%m/%Y").friday?

      expect(result).to be_truthy
    end

    it "next_day" do
      date = "28/02/2024"

      result = Date.strptime(date, "%d/%m/%Y").next_day

      expect(result).to eq(Date.new(2024, 2, 29))
    end

    it "sum" do
      date = "28/02/2024"

      result = Date.strptime(date, "%d/%m/%Y") + 1

      expect(result).to eq(Date.new(2024, 2, 29))
    end

    it "subtraction" do
      date = "01/03/2024"

      result = Date.strptime(date, "%d/%m/%Y") - 1

      expect(result).to eq(Date.new(2024, 2, 29))
    end
  end

  describe "practice" do
    it "today + sum + subtraction + friday?" do
      today = Date.today
      birthday = today + 31
      friday = birthday - 2

      result = friday.friday?

      expect(result).to be_truthy
    end
  end
end
