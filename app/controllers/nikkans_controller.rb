class NikkansController < ApplicationController
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

url2 = "https://number.bunshun.jp/"

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

url4 = "https://sportsbull.jp/"

charset4 = nil
html4 = open(url4) do |f|
  charset4 = f.charset 
  f.read 
end


doc4 = Nokogiri::HTML.parse(html4, nil, charset4)


doc.xpath('/html/body/div[1]/div[3]/div/div[1]/div[2]/ul/li[1]').each do |node|
  @text = node.css('h3').text
  @time = node.css("time").text
end

doc.xpath('/html/body/div[1]/div[3]/div/div[1]/div[2]/ul/li[2]').each do |node|
  @text1 = node.css('h3').text
  @time1 = node.css("time").text
end

doc.xpath('/html/body/div[1]/div[3]/div/div[1]/div[2]/ul/li[3]').each do |node|
  @text2 = node.css('h3').text
  @time2 = node.css("time").text
end

doc.xpath('/html/body/div[1]/div[3]/div/div[1]/div[2]/ul/li[4]').each do |node|
  @text3 = node.css('h3').text
  @time3 = node.css("time").text
end

doc.xpath('/html/body/div[1]/div[3]/div/div[1]/div[2]/ul/li[5]').each do |node|
  @text4 = node.css('h3').text
  @time4 = node.css("time").text
end




doc1.xpath('//*[@id="pkart"]/section/div/ul/li[1]').each do |node|
  @textsp = node.css('p').text
  @imagesp = node.css("a").attribute('href').value
end


doc1.xpath('//*[@id="pkart"]/section/div/ul/li[2]').each do |node|
  @textsp1 = node.css('p').text
  @imagesp1 = node.css("p").attribute('style').value
end

doc1.xpath('//*[@id="pkart"]/section/div/ul/li[3]').each do |node|
  @textsp2 = node.css('p').text
  @imagesp2 = node.css("a").attribute('href').value
end

doc1.xpath('//*[@id="pkart"]/section/div/ul/li[4]').each do |node|
  @textsp3 = node.css('p').text
  @imagesp3 = node.css("a").attribute('href').value
end

doc1.xpath('//*[@id="pkart"]/section/div/ul/li[5]').each do |node|
  @textsp4 = node.css('p').text
  @imagesp4 = node.css("a").attribute('href').value
end


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

doc3.xpath('//*[@id="content"]/div[4]/div/div[2]/div[1]/span[3]/div/div/div[1]').each do |node|
  @textro1 = node.css('p').text
  @imagey1 = node.css("img").attribute('src').value
end

doc3.xpath('//*[@id="content"]/div[4]/div/div[2]/div[1]/span[3]/div/div/div[2]').each do |node|
  @textro2 = node.css('p').text
  @imagey2 = node.css("img").attribute('src').value
end

doc3.xpath('//*[@id="content"]/div[4]/div/div[2]/div[1]/span[3]/div/div/div[3]').each do |node|
  @textro3 = node.css('p').text
  @imagey3 = node.css("img").attribute('src')
end

doc3.xpath('//*[@id="content"]/div[4]/div/div[2]/div[1]/span[3]/div/div/div[4]').each do |node|
  @textro4 = node.css('p').text
end

doc3.xpath('//*[@id="content"]/div[4]/div/div[2]/div[1]/span[2]/div[1]/div/div/div[1]').each do |node|
  @textro5 = node.css('p').text
  @imagey5 = node.css("img").attribute('src')
end

doc4.xpath('//*[@id="whole"]/div[4]/div/section[1]/div[3]/div[2]/div/div[1]').each do |node|
  @textsb1 = node.css('h4').text
  @timeb1 = node.css("span").text
  @imageb1 = node.css("img").attribute('src').value
end

doc4.xpath('//*[@id="whole"]/div[4]/div/section[1]/div[3]/div[2]/div/div[2]').each do |node|
  @textsb2 = node.css('h4').text
  @timeb2 = node.css("span").text
  @imageb2 = node.css("img").attribute('src').value
end

doc4.xpath('//*[@id="whole"]/div[4]/div/section[1]/div[3]/div[2]/div/div[3]').each do |node|
  @textsb3 = node.css('h4').text
  @timeb3 = node.css("span").text
  @imageb3 = node.css("img").attribute('src').value
end

doc4.xpath('//*[@id="whole"]/div[4]/div/section[1]/div[3]/div[3]/div/div[1]').each do |node|
  @textsb4 = node.css('h4').text
  @timeb4 = node.css("span").text
  @imageb4 = node.css("img").attribute('src').value
end

doc4.xpath('//*[@id="whole"]/div[4]/div/section[1]/div[3]/div[3]/div/div[2]').each do |node|
  @textsb5 = node.css('h4').text
  @timeb5 = node.css("span").text
  @imageb5 = node.css("img").attribute('src').value
end

doc4.xpath('//*[@id="whole"]/div[4]/div/section[1]/div[3]/div[3]/div/div[3]').each do |node|
  @textsb6 = node.css('h4').text
  @timeb6 = node.css("span").text
  @imageb6 = node.css("img").attribute('src').value
end

doc4.xpath('//*[@id="whole"]/div[4]/div/section[1]/div[3]/div[3]/div/div[4]').each do |node|
  @textsb7 = node.css('h4').text
  @timeb7 = node.css("span").text
  @imageb7 = node.css("img").attribute('src').value
end

end



end
