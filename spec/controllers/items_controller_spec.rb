require "rails_helper"

  RSpec.describe ItemsController, type: :controller do
    
    before do
      @user = FactoryBot.create(:user )
      @item = FactoryBot.create(:item)
      @image = FactoryBot.create(:image)
     
    end
    
        describe "DELETE #destroy " do
          it "アイテムを削除出来るか" do      
            sign_in @user
            expect{
            delete :destroy,params:{ id: @item.id }
          }.to change(@user.items, :count).by(-1)
        end
      end
  end

  
#   it""


#   describe "GET #show "do #HTTPメソッド名 #アクション名
#   context"as an authorized user" do #権限があるユーザー
#    before do
#      @user = FactoryBot.create(:user)
#      @item = @user.articles.create(
#      title: "加藤潤一"
#      text: "高津戸真"
#      )
#       end
#       #正常なレスポンスか？
#   it "responds successfully" do
#     sign_in @user
#     get :show,params:{ id:  @item.id}
#     expect(response).to be_success
#     end
#   end

#   context"as a guest user" do #権限がないユーザー
#     before do
#       @user = FactoryBot.create(:user)
#       @item = @user.articles.create(
#       title: "加藤潤一"
#       text: "高津戸真"
#       )
#        end
#    it "responds successfully" do
#      sign_in @user
#      get :show,params:{ id:  @item.id}
#      expect(response).to_not be_success #正常にレスポンスが返ってきてないことができれば成功
#      end
#    end

# end
