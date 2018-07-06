# frozen_string_literal: true

class Roman
  def convert(int)
    array_of_digits = int.to_s.split('').reverse.each_with_index.map { |number, index| number.to_i * (10 ** index) }.reverse
    array_of_digits.map do |unit|
      numeral_for_int(unit)
    end.join
  end

  private

  NUMERAL_VALUES = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }.freeze

  NUMBERS_LARGE_TO_SMALL = NUMERAL_VALUES.keys.sort.reverse.freeze

  def numeral_for_int(unit)
    return if unit.zero?
    highest_match_index = NUMBERS_LARGE_TO_SMALL.find_index { |key| key <= unit }
    highest_match = NUMBERS_LARGE_TO_SMALL[highest_match_index]
    next_highest_match = NUMBERS_LARGE_TO_SMALL[highest_match_index - 1]
    matches_below_next_highest_match = NUMERAL_VALUES.keys.select { |key| key < next_highest_match }

    return NUMERAL_VALUES[highest_match] if unit == highest_match
    matches_below_next_highest_match.reverse.take(2).reverse_each do |match|
      if unit == next_highest_match - match
        return NUMERAL_VALUES[match] + NUMERAL_VALUES[next_highest_match]
      end
    end
    NUMERAL_VALUES[highest_match] + convert(unit - highest_match)
  end
end
