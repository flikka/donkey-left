run: build
	./agents/agents -f car_io/captures

build: deps
	cd agents && mix escript.build

deps: 
	cd agents && mix deps.get

clean:
	rm -rf agents/_build agents/deps 
