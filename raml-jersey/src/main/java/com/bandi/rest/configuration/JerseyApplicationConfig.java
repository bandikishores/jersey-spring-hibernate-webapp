package com.bandi.rest.configuration;

import javax.inject.Inject;

import org.glassfish.hk2.api.ServiceLocator;
import org.glassfish.jersey.server.ResourceConfig;
import org.jvnet.hk2.guice.bridge.api.GuiceBridge;
import org.jvnet.hk2.guice.bridge.api.GuiceIntoHK2Bridge;

import com.bandi.rest.guice.GuiceModule;
import com.google.inject.Guice;
import com.google.inject.Injector;

public class JerseyApplicationConfig extends ResourceConfig {

	@Inject
	public JerseyApplicationConfig(ServiceLocator serviceLocator) {
        // Instantiate Guice Bridge
        GuiceBridge.getGuiceBridge().initializeGuiceBridge(serviceLocator);

        GuiceIntoHK2Bridge guiceBridge = serviceLocator.getService(GuiceIntoHK2Bridge.class);
        Injector injector = Guice.createInjector(new GuiceModule());
        guiceBridge.bridgeGuiceInjector(injector);
    }
}
