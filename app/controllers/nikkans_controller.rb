class NikkansController < ApplicationController
require 'nokogiri'
require 'open-uri'
def index

url = "https://hochi.news/"

charset = nil
html = open(url) do |f|
  charset = f.charset 
  f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

url1 = "https://sports.yahoo.co.jp/"

charset1 = nil
html1 = open(url1) do |f|
  charset = f.charset 
  f.read 
end


doc1 = Nokogiri::HTML.parse(html1, nil, charset1)

url2 = "https://4years.asahi.com/"

charset2 = nil
html2 = open(url2) do |f|
  charset2 = f.charset 
  f.read 
end


doc2 = Nokogiri::HTML.parse(html2, nil, charset2)

url3 = "https://jp.reuters.com/news/sports"

charset3 = nil
html3 = open(url3) do |f|
  charset3 = f.charset 
  f.read 
end


doc3 = Nokogiri::HTML.parse(html3, nil, charset3)

url4 = "https://spyder7.com/category/sport/foreign/latest/"

charset4 = nil
html4 = open(url4) do |f|
  charset4 = f.charset 
  f.read 
end


doc4 = Nokogiri::HTML.parse(html4, nil, charset4)


doc.xpath('/html/body/div[1]/div[3]/div/div[1]/div[2]/ul/li[1]').each do |node|
  # @link = node.css('img').attribute('src').value
  @text = node.css('h3').text
  @time = node.css("time").text
end

doc.xpath('/html/body/div[1]/div[3]/div/div[1]/div[2]/ul/li[2]').each do |node|
  # @link1 = node.css('img').attribute('src').value
  @text1 = node.css('h3').text
  @time1 = node.css("time").text
end

doc.xpath('/html/body/div[1]/div[3]/div/div[1]/div[2]/ul/li[3]').each do |node|
  # @link2 = node.css('img').attribute('src').value
  @text2 = node.css('h3').text
  @time2 = node.css("time").text
end

doc.xpath('/html/body/div[1]/div[3]/div/div[1]/div[2]/ul/li[4]').each do |node|
  # @link3 = node.css('img').attribute('src').value
  @text3 = node.css('h3').text
  @time3 = node.css("time").text
end

doc.xpath('/html/body/div[1]/div[3]/div/div[1]/div[2]/ul/li[5]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @text4 = node.css('h3').text
  @time4 = node.css("time").text
end




doc1.xpath('//*[@id="pkart"]/section/div/ul/li[1]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textsp = node.css('p').text
  # @timesp = node.css("time").text
  @imagesp = node.css("a").attribute('href').value
end


doc1.xpath('//*[@id="pkart"]/section/div/ul/li[2]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textsp1 = node.css('p').text
  # @timesp = node.css("time").text
  @imagesp1 = node.css("a").attribute('href').value
end

doc1.xpath('//*[@id="pkart"]/section/div/ul/li[3]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textsp2 = node.css('p').text
  # @timesp = node.css("time").text
  @imagesp2 = node.css("a").attribute('href').value
end

doc1.xpath('//*[@id="pkart"]/section/div/ul/li[4]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textsp3 = node.css('p').text
  # @timesp = node.css("time").text
  @imagesp3 = node.css("a").attribute('href').value
end

doc1.xpath('//*[@id="pkart"]/section/div/ul/li[5]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textsp4 = node.css('p').text
  # @timesp = node.css("time").text
  @imagesp4 = node.css("a").attribute('href').value
end


doc2.xpath('/html/body/div[1]/div[3]/div[2]/div[4]/ul/li[1]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @texty1 = node.css('p').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src').value
end

doc2.xpath('/html/body/div[1]/div[3]/div[2]/div[4]/ul/li[2]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @texty2 = node.css('p').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src').value
end

doc2.xpath('/html/body/div[1]/div[3]/div[2]/div[4]/ul/li[3]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @texty3 = node.css('p').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src').value
end

doc2.xpath('/html/body/div[1]/div[3]/div[2]/div[4]/ul/li[4]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @texty4 = node.css('p').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src').value
end

doc2.xpath('/html/body/div[1]/div[3]/div[2]/div[4]/ul/li[5]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @texty5 = node.css('p').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src').value
end

doc3.xpath('//*[@id="content"]/div[4]/div/div[2]/div[1]/span[3]/div/div/div[1]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textro1 = node.css('p').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src')
end

doc3.xpath('//*[@id="content"]/div[4]/div/div[2]/div[1]/span[3]/div/div/div[2]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textro2 = node.css('p').text
  # @timey1 = node.css("time").text
  # @imagey2 = node.css("img").attribute('src')
end

doc3.xpath('//*[@id="content"]/div[4]/div/div[2]/div[1]/span[3]/div/div/div[3]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textro3 = node.css('p').text
  # @timey1 = node.css("time").text
  # @imagey3 = node.css("img").attribute('src')
end

doc3.xpath('//*[@id="content"]/div[4]/div/div[2]/div[1]/span[3]/div/div/div[4]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textro4 = node.css('p').text
  # @timey1 = node.css("time").text
  # @imagey4 = node.css("img").attribute('src')
end

doc3.xpath('//*[@id="content"]/div[4]/div/div[2]/div[1]/span[2]/div[1]/div/div/div[1]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textro5 = node.css('p').text
  # @timey1 = node.css("time").text
  @imagey5 = node.css("img").attribute('src')
end

doc4.xpath('/html/body/div[1]/main/div[2]/div/section[8]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textse1 = node.css('h2').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src').value
end

doc4.xpath('/html/body/div[1]/main/div[2]/div/section[9]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textse2 = node.css('h2').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src').value
end

doc4.xpath('/html/body/div[1]/main/div[2]/div/section[10]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textse3 = node.css('h2').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src').value
end

doc4.xpath('/html/body/div[1]/main/div[2]/div/section[11]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textse4 = node.css('h2').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src').value
end

doc4.xpath('/html/body/div[1]/main/div[2]/div/section[12]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textse5 = node.css('h2').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src').value
end

doc4.xpath('/html/body/div[1]/main/div[2]/div/section[13]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textse6 = node.css('h2').text
  # @timey1 = node.css("time").text
  # @imagey1 = node.css("img").attribute('src').value
end

doc4.xpath('/html/body/div[1]/main/div[2]/div/section[14]').each do |node|
  # @link4 = node.css('img').attribute('src').value
  @textse7 = node.css('h2').text
  # @timey1 = node.css("time").text
  @imagese = node.css("img").attribute('src')
end

end



end
