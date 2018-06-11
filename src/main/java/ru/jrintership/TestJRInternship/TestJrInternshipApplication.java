package ru.jrintership.TestJRInternship;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@SpringBootApplication
@EnableAspectJAutoProxy
public class TestJrInternshipApplication {

	public static void main(String[] args) {
		SpringApplication.run(TestJrInternshipApplication.class, args);
	}

	@Bean
	public ViewResolver getViewResolver(){
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/jsp/");
		resolver.setSuffix(".jsp");
		resolver.setViewClass(JstlView.class);
		return resolver;
	}
	@Bean
	public ResourceBundleMessageSource messageSource() {
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
		messageSource.setBasenames("messages/messages");
		messageSource.setUseCodeAsDefaultMessage(true);
//		messageSource.setDefaultEncoding(UTF8_ENCODING);
		messageSource.setFallbackToSystemLocale(false);
//		messageSource.setCacheSeconds((int)TimeUnit.HOURS.toSeconds(1));
		return messageSource;
	}
}
