run: build
	./agents/agents -f car_io/captures

build: deps
	cd agents && mix escript.build && cd .. && touch build

deps: 
	cd agents && mix deps.get && cd .. && touch deps

clean:
	rm -rf agents/_build agents/deps build deps
