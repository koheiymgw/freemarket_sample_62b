require 'rails_helper'

describe ItemsController do
  describe "DELETE #destroy " #HTTPメソッド名 #アクション名
  it "delete item" do
    delete :destroy,params:{ id: 1 }
    expect(response).to render_template :list_items
  end

end
