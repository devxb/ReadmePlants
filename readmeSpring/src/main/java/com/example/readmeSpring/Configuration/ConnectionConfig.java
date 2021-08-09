package com.example.readmeSpring.Configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ServletWebServerFactory;
import org.apache.catalina.connector.Connector;
import org.apache.tomcat.util.descriptor.web.SecurityCollection;
import org.apache.tomcat.util.descriptor.web.SecurityConstraint;
import org.apache.catalina.Context;

@Configuration
public class ConnectionConfig {
    
    @Bean
    public ServletWebServerFactory servletContainer(){
        
        TomcatServletWebServerFactory tomcat = new TomcatServletWebServerFactory(){
            
            @Override
            protected void postProcessContext(Context context){
                SecurityConstraint securityConstraint = new SecurityConstraint();
                SecurityCollection collection = new SecurityCollection();
                securityConstraint.setUserConstraint("CONFIDENTIAL");
                collection.addPattern("/secure/web");
                securityConstraint.addCollection(collection);
                context.addConstraint(securityConstraint);
            }
        };
        
        tomcat.addAdditionalTomcatConnectors(createSslConnector());
        return tomcat;
    }
    
    private Connector createSslConnector(){
        Connector connector = new Connector("org.apache.coyote.http11.Http11NioProtocol");
        connector.setScheme("http");
        connector.setSecure(false);
        connector.setPort(80);
        connector.setRedirectPort(443);
        return connector;
    }
    
}