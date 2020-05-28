class List < ApplicationRecord
  belongs_to :board
  has_many :tasks

  def self.find_lists(board)
    List.find_by_sql(
    "SELECT * FROM lists AS l
    WHERE l.board_id = #{board}"
    )
  end
end
