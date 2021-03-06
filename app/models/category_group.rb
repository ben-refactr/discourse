class CategoryGroup < ActiveRecord::Base
  belongs_to :category
  belongs_to :group

  def self.permission_types
    @permission_types ||= Enum.new(:full, :create_post, :readonly)
  end

end

# == Schema Information
#
# Table name: category_groups
#
#  id              :integer          not null, primary key
#  category_id     :integer          not null
#  group_id        :integer          not null
#  created_at      :datetime
#  updated_at      :datetime
#  permission_type :integer          default(1)
#
