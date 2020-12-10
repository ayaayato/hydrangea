require 'rails_helper'

describe Order do
  before do
    @order = FactoryBot.build(:order)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "全ての情報が正常の場合は新規登録することができる" do
        expect(@order).to be_valid
      end

    end
  end

end