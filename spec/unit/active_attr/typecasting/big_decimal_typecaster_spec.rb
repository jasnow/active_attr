require "spec_helper"
require "active_attr/typecasting/big_decimal_typecaster"

module ActiveAttr
  module Typecasting
    describe BigDecimalTypecaster do
      subject(:typecaster) { described_class.new }

      describe "#call" do
        it "returns the original BigDecimal for a BigDecimal" do
          value = Kernel.BigDecimal("2.0")
          typecaster.call(value).should equal value
        end

        it "casts nil to a zero BigDecimal" do
          typecaster.call(nil).should eql Kernel.BigDecimal("0.0")
        end

        it "casts a numeric String to a BigDecimal" do
          typecaster.call("2").should eql Kernel.BigDecimal("2.0")
        end

        it "casts a alpha String to a zero BigDecimal" do
          typecaster.call("bob").should eql Kernel.BigDecimal("0.0")
        end

        it "casts a Rational to a BigDecimal" do
          typecaster.call(Rational(1, 2)).should eql Kernel.BigDecimal("0.5")
        end

        it "casts a Float to a BigDecimal" do
          typecaster.call(1.2).should eql Kernel.BigDecimal("1.2")
        end

        it "cases an Integer to a BigDecimal" do
          typecaster.call(2).should eql Kernel.BigDecimal("2.0")
        end
      end
    end
  end
end
