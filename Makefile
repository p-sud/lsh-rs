

bench:
	@cd lsh-rs/bench && cargo +nightly bench

test: clean-lsh-db
	@cd lsh-rs && cargo test --lib

python-lib:
	@cd lsh-py && cargo +nightly build --release && cd .. && cp target/release/liblshpy.so lshpy.so

doc:
	@cd lsh-rs && cargo doc --no-deps --open --lib

clean-lsh-db:
	-@cd lsh-rs && rm **.db3