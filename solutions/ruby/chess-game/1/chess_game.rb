module Chess
  # TODO: define the 'RANKS' constant
  RANKS = 1..8
  # TODO: define the 'FILES' constant
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    (RANKS).include?(rank) && (FILES).include?(file)
  end

  def self.nickname(first_name, last_name)
    (first_name[0, 2] + last_name[-2, 2]).upcase
  end

  def self.move_message(first_name, last_name, square)
  if valid_square?(square[1].to_i, square[0])
    "#{nickname(first_name, last_name)} moved to #{square}"
  else
    "#{nickname(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
  end
end
end
