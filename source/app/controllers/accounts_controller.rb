class AccountsController < ApplicationController

	def echo
		# is everything ok ?
		print Account.count
		render text: "Echoing #{ params[:what] || 'void.'}\n"
	end

  def index
    render text: "Stored Accounts: #{Account.count}"
  end

  def create
    logger.info "sent: #{params}"
    acc = Account.create! key: params[:account][:key], description: params[:account][:description]
    render json: {msg: "Account '#{acc.key}' was created."}
  end
end
