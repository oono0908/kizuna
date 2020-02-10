class MessagesController < ApplicationController

  before_action :set_group

  def index
    @message = Message.new
    @messages = @group.messages.includes(:user)
    url2 = "https://number.bunshun.jp/"

    charset2 = nil
    html2 = open(url2) do |f|
      charset2 = f.charset 
      f.read 
    end


    doc2 = Nokogiri::HTML.parse(html2, nil, charset2)

    doc2.xpath('/html/body/div[3]/div/article/section[2]/section[1]/a').each do |node|
      @texty1 = node.css('h2').text
      @imagen1 = node.css("img").attribute('src').value
      @timen1 = node.css("span").text
    end
    
    doc2.xpath('/html/body/div[3]/div/article/section[2]/section[2]/a').each do |node|
      @texty2 = node.css('h2').text
      @timen2 = node.css("span").text
      @imagen2 = node.css("img").attribute('src').value
    end
    
    doc2.xpath('/html/body/div[3]/div/article/section[2]/section[3]/a').each do |node|
      @texty3 = node.css('h2').text
      @timen2 = node.css("span").text
      @imagen3 = node.css("img").attribute('src').value
    end
    
    doc2.xpath('/html/body/div[3]/div/article/section[2]/section[4]/a').each do |node|
      @texty4 = node.css('h2').text
      @timen4 = node.css("span").text
      @imagen4 = node.css("img").attribute('src').value
    end
    
    doc2.xpath('/html/body/div[3]/div/article/section[2]/section[7]/a').each do |node|
      @texty5 = node.css('h2').text
      @timen5 = node.css("span").text
      @imagen5 = node.css("img").attribute('src').value
    end

    

  end

  def create
    @message = @group.messages.new(message_params)
    if @message.save
      respond_to do |format|
        format.html {redirect_to group_messages_path(@group), notice: "質問が送信されました"}
        format.json 
      end
    else
      @messages = @group.messages.includes(:user)
      flash.now[:alert] = "質問を入力してください。"
      render :index
    end
  end

  def show
    @comment = Comment.new
    @message = Message.find(params[:id])
    @comments = @message.comments.includes(:user)
    @like = Like.new
    @like = Like.find_by(comment_id: params[:comment_id], user_id: current_user.id)
  end

  def destroy
    message = Message.find(params[:id])
    if message.destroy
      redirect_to group_messages_path(@group)
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :video).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
  
end
