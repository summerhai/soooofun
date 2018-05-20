package com.soooofun;

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.pipeline.ConsolePipeline;
import us.codecraft.webmagic.pipeline.FilePipeline;
import us.codecraft.webmagic.processor.PageProcessor;

import java.util.List;

public class OschinaBlogPageProcesser implements PageProcessor {

    private Site site = Site.me().setDomain("zhihu.com");

    @Override
    public void process(Page page) {
        List<String> links = page.getHtml().links().regex("https://www\\.zhihu\\.com/question/60343827/answer/179853029/\\d+").all();
        page.addTargetRequests(links);
        page.putField("title", page.getHtml().xpath("//div[@class='BlogEntity']/div[@class='BlogTitle']/h1").toString());
        page.putField("content", page.getHtml().$("div.RichContent-inner").toString());
        page.putField("tags",page.getHtml().xpath("//div[@class='BlogTags']/a/text()").all());
    }

    @Override
    public Site getSite() {
        return site;

    }

    public static void main(String[] args) {
        Spider.create(new OschinaBlogPageProcesser()).addUrl("https://www.zhihu.com/question/60343827/answer/179853029")
                .addPipeline(new FilePipeline()).run();
    }
}
