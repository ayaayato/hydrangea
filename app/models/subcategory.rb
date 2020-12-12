class Subcategory < ActiveHash::Base
  include ActiveHash::Associations
  has_many :flowers
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '写真' },
    { id: 3, name: 'イラスト' },
    { id: 4, name: 'SS' },
    { id: 5, name: '日常' },
    { id: 6, name: '秘蔵' },
    { id: 7, name: '逸品' },
    { id: 8, name: '筋肉' },
    { id: 9, name: '例のアレ' },
    { id: 10, name: 'その他' }
  ]
end
