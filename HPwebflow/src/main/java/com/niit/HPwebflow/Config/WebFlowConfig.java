package com.niit.HPwebflow.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.webflow.config.AbstractFlowConfiguration;
import org.springframework.webflow.definition.registry.FlowDefinitionRegistry;
import org.springframework.webflow.executor.FlowExecutor;
import org.springframework.webflow.mvc.servlet.FlowHandlerAdapter;
import org.springframework.webflow.mvc.servlet.FlowHandlerMapping;

@Configuration
public class WebFlowConfig extends AbstractFlowConfiguration{

	@Bean
	public FlowHandlerMapping getFlowHandlerMapping()
	{
		FlowHandlerMapping flowHandlerMapping = new FlowHandlerMapping();
		flowHandlerMapping.setOrder(0);
		flowHandlerMapping.setFlowRegistry(flowRegistry());
		return flowHandlerMapping;
	}
	
	@Bean
	public FlowHandlerAdapter getFlowHanlderAdapter()
	{
		FlowHandlerAdapter flowHandlerAdapter = new FlowHandlerAdapter();
		flowHandlerAdapter.setFlowExecutor(flowExecutor());
		return flowHandlerAdapter;
	}
	
	@Bean
	public FlowDefinitionRegistry flowRegistry()
	{
		return getFlowDefinitionRegistryBuilder()
				.addFlowLocation("/WEB-INF/views/flow/demo-flow.xml","demoFlow").build();
	}
	
	@Bean
	public FlowExecutor flowExecutor()
	{
		return getFlowExecutorBuilder(flowRegistry()).build();
	}
	
}
