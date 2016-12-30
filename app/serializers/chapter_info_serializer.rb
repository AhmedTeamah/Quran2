# == Schema Information
#
# Table name: chapter_infos
#
#  id                  :integer          not null, primary key
#  chapter_id          :integer
#  text                :text
#  source              :string
#  short_text          :text
#  language_id         :integer
#  resource_content_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ChapterInfoSerializer < ActiveModel::Serializer
  attributes :id, :text, :source, :short_text
  has_one :chapter
  has_one :language
  has_one :resource_content
end
