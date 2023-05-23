package com.tibame.timetotravel.webConfig;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/admin").setViewName("forward:/html/admin.html");
        registry.addViewController("/admin_ann").setViewName("forward:/html/admin_ann.html");
        registry.addViewController("/admin_ann_publish").setViewName("forward:/html/admin_ann_publish.html");
        registry.addViewController("/admin_ann_detail").setViewName("forward:/html/admin_ann_detail.html");
        registry.addViewController("/admin_ann_edit").setViewName("forward:/html/admin_ann_edit.html");
        registry.addViewController("/admin_message_publish").setViewName("forward:/html/admin_message_publish.html");
        registry.addViewController("/admin_message_detail").setViewName("forward:/html/admin_message_detail.html");
        registry.addViewController("/admin_message_recv").setViewName("forward:/html/admin_message_recv.html");
        registry.addViewController("/admin_user_manager").setViewName("forward:/html/admin_user_manager.html");
        registry.addViewController("/admin_comp_manager").setViewName("forward:/html/admin_comp_manager.html");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/html/**")
                .addResourceLocations("classpath:/static/html/");
    }
}