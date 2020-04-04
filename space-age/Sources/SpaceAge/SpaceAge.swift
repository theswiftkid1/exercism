//Solution goes in Sources

struct SpaceAge {
    private static let earthPeriodInSeconds = Double(31557600)

    static func computeAge(orbitalPeriod: Double, seconds: Double) -> Double {
        return seconds / (SpaceAge.earthPeriodInSeconds * orbitalPeriod)
    }

    let seconds: Double
    let onEarth: Double
    let onMercury: Double
    let onVenus: Double
    let onMars: Double
    let onJupiter: Double
    let onSaturn: Double
    let onUranus: Double
    let onNeptune: Double

    init(_ input: Double) {
        seconds = input
        onEarth = SpaceAge.computeAge(orbitalPeriod: 1, seconds: seconds)
        onMercury = SpaceAge.computeAge(orbitalPeriod: 0.2408467, seconds: seconds)
        onVenus = SpaceAge.computeAge(orbitalPeriod: 0.61519726, seconds: seconds)
        onMars = SpaceAge.computeAge(orbitalPeriod: 1.8808158, seconds: seconds)
        onJupiter = SpaceAge.computeAge(orbitalPeriod: 11.862615, seconds: seconds)
        onSaturn = SpaceAge.computeAge(orbitalPeriod: 29.447498, seconds: seconds)
        onUranus = SpaceAge.computeAge(orbitalPeriod: 84.016846, seconds: seconds)
        onNeptune = SpaceAge.computeAge(orbitalPeriod: 164.79132, seconds: seconds)
    }
}
