package com.niit.HPwebflow.Config;


import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@ComponentScan(basePackages="com.niit")
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	DataSource dataSource;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception
	{
		http.authorizeRequests()
		.antMatchers("/").permitAll()
		.antMatchers("/admin***").access("hasRole('ROLE_ADMIN')")
		.antMatchers("/user***").access("hasRole('ROLE_USER')")
		.antMatchers("/cart***").access("hasAnyRole(ROLE_ADMIN, ROLE_USER)")
		.and()
		.formLogin().loginPage("/login").and().csrf().disable()
		.formLogin().failureUrl("/home");
	}
	
	
	@Autowired
	protected void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception
	{
		auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery("select email, password, enable from users where email=?")
		.authoritiesByUsernameQuery("select email,role from users where email=?");
	}
	
	
}
