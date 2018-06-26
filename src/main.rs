extern crate rdkafka;
extern crate rdkafka_sys;
use rdkafka::util::get_rdkafka_version;

fn main() {
    
    let (version_n, version_s) = get_rdkafka_version();
    println!("rd_kafka_version: 0x{:08x}, {}", version_n, version_s);
}
