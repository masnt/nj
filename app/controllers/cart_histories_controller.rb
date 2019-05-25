class CartHistoriesController < ApplicationController


  	def pay_choise
  	@cart_history = CartHistory.new
  	end

 	 def new
  	@cart_history = CartHistory.new
 	 end


 	 def create
  	@cart_history = CartHistory.new(cart_history_params)
    @cart_history.save
 	 end




	  def index  #購入履歴一覧

	  	#@user = User.find(params[:id]) #current_user
	  	#@cart_history = current_user.cart_histories #ユーザに紐ずいているcart_histories 全てを持ってくる
	  end


	  def comfirm_new  #購入確認ページ
	  	#@cart_history = User.find(params[:id]) #current_user
	  end


	  def complete_new  #購入完了ページ
	  end

	  def destroy
	  end


	  def update
	  end


	  def show           #管理者:admin  受注詳細
	  	#@cart_history = current_user.cart_histories
	  	#お支払い方法とひもづける
	  	#お届け先情報とひもづける


	  end


	  def index_order    #管理者:admin  受注一覧
        #@cart_history = CartHistory.all
	  end


	  def user_history   #管理者:admin   ※フレームワーク無し
	  end


    private

    def cart_history_params
    params.require(:cart_history).permit(:family_name_history, :first_name_history, :family_name_kana_history,
    					:first_name_kana_history, :postal_code_history, :ship_address_history, :howtopay_history,

    					:amount_history,:other_name, :other_name_kana, :other_address, :other_phone_number, :ship_status, :shipping_type)

   end


end
