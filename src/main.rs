const VERSION: &str = env!("CARGO_PKG_VERSION");

fn main() {
    println!("tmplrust - {}", VERSION);
    println!("{}", tmplrust::add(1, 2));
}
