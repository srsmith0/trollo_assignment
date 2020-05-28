class Task < ApplicationRecord
  belongs_to :list

  def self.find_tasks(list)
    Task.find_by_sql("
    SELECT * FROM tasks AS t
    WHERE t.list_id = #{list};")
  end

end
