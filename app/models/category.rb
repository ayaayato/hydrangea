class Category < ActiveHash::Base
  include ActiveHash::Associations
  has_many :flowers
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '景色' },
    { id: 3, name: 'グルメ' },
    { id: 4, name: '健康' },
    { id: 5, name: 'スポーツ' },
    { id: 6, name: '動物' },
    { id: 7, name: 'エンタメ' },
    { id: 8, name: 'ファッション' },
    { id: 9, name: 'ビューティー' },
    { id: 10, name: 'アニメ' },
    { id: 11, name: 'ゲーム' },
    { id: 12, name: '本' },
    { id: 13, name: 'ガジェット' },
    { id: 14, name: '乗り物' },
    { id: 15, name: '工作' },
    { id: 16, name: '音楽' },
    { id: 17, name: '嗜好品' },
    { id: 18, name: '筋肉' },
    { id: 19, name: '例のアレ' },
    { id: 20, name: 'その他' }
  ]
end
