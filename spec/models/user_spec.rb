require 'rails_helper'

describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "全ての情報が正常の場合は新規登録することができる" do
        expect(@user).to be_valid
      end

    end
  end

end

#RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
#end
