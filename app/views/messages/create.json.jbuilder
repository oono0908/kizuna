json.user_name @message.user.name
json.created_at @message.created_at.strftime("%Y年%m月%d日 %H時%M分")
json.content @message.content
json.video @message.video_url
json.group_id @group.id
json.message_id @message.id