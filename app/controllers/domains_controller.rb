class DomainsController < ApplicationController
  def index
    @domains = Domain.all
  end
  def get
  url = 'https://www.expireddomains.net/backorder-expired-domains/'

    def save(url,cate)
      agent = Mechanize.new
      com_page  = agent.get(url)
      #テーブルそのまんま
      @table = com_page.at('table.base1')
      # link=com_page.links
      # p link
      i = 0
      @table.search('tr').each do |item|
       name = item.at('a').text
       pr = item.search('td.field_pr a span').text
       bl = item.at('td.field_bl a/@title').to_s
       dp = item.search('td.field_domainpop a').text
       aby = item.search('td.field_abirth a').text
       smilerweb = item.search('td.field_similarweb').text   
       dmoz = item.search('td.field_dmoz').text    
       c = item.search('td.field_statuscom a/@title').text
       n = item.search('td.field_statusnet a/@title').text
       o = item.search('td.field_statusorg a/@title').text
       d = item.search('td.field_statusde a/@title').text
       dropped = item.search('td.field_enddate').text
  
       if i == 0 then
         i = i + 1
         next
       else
         i = i +1
         @domains = Domain.new(name:name,pr:pr,bl:bl,dp:dp,aby:aby,
                              smilerweb:smilerweb,dmoz:dmoz,c:c,n:n,o:o,d:d,dropped:dropped,cate:cate)
         @domains.save
       end
      end
    end  
  
  
  save(url,"com")
  
        
  end


end
