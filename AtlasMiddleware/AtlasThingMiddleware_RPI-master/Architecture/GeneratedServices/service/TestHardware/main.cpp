
#include <cstdarg>
#include <iostream>
#include <csignal>
#include <cppmicroservices/BundleActivator.h>
extern "C" {
#include <wiringPi.h>
}

#include <service/Service.cpp>

namespace us = cppmicroservices;

// the service will always be named `Service<ServiceName>'
class ServiceTestHardware : public Service
{
	// define static storage since the return value must return a `void*'
	// type+name gathered from the DDL `<OutputType>' and `<OutputName>'
	// FIXME: not thread-safe in its current form
	
	int reportedValue = {};
	

	// use a `va_list' to get known parameters dynamically
	// the end result should allow Evaluate to be used as `auto Evaluate(...)'
	void* Evaluate(va_list args) override
	{
		// each input is gathered from the DDL `<InputType>'
		
		auto minute = va_arg(args, int);
		
		auto second = va_arg(args,  int);
		
		va_end(args);

		// codegen will be more advanced/fine-grained, eventually
		// for now, the whole function body is specified in the DDL `<Source>'
		
		wiringPiSetupGpio();
		
		pinMode(17, OUTPUT);
		
		digitalWrite(17, HIGH);
		
		delay(1000);
		
		wiringPiSetupGpio();
		
		pinMode(17, OUTPUT);
		
		digitalWrite(17, LOW);
		
		wiringPiSetupGpio();
		
		pinMode(17, OUTPUT);
		
		digitalWrite(17, HIGH);
		
		delay(1000);
		
		digitalWrite(17, LOW);
		
		wiringPiSetupGpio();
		
		pinMode(17, INPUT);
		
		reportedValue =  digitalRead(17);
		
		wiringPiSetupGpio();
		
		pinMode(12, INPUT);
		
		reportedValue =  analogRead(12);
		
		wiringPiSetupGpio();
		
		pinMode(12, INPUT);
		
		analogWrite(12, 10);
		
		
		// cast the static storage to a generic return type
		
		return (void*)&reportedValue;
		
	}

	// confirm parameter/result types match before calling
	bool Validate(const std::vector<type>& as, type r) override
	{
		// check the parameter count is the same
		if (as.size() != 2)
			return false;
		// check the return type
		if (r != typeid(int))
			return false;

		// check each argument type
		
		if (as[0] != typeid(int))
			return false;
		
		if (as[1] != typeid( int))
			return false;
		

		return true;
	}
};

// instantiate and register the service
class ServiceActivator : public us::BundleActivator
{
	void Start(us::BundleContext ctx)
	{
		auto service = std::make_shared<ServiceTestHardware>();
		ctx.RegisterService<Service>(service);
	}

	void Stop(us::BundleContext) {}
};

CPPMICROSERVICES_EXPORT_BUNDLE_ACTIVATOR(ServiceActivator);


