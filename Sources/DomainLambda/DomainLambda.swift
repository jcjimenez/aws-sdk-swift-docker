@main
public struct DomainLambda {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(DomainLambda().text)
    }
}
