module TropicalGeometry

struct Tropical{R} where {R<:Real}
    x::R
end # module

Base.:+(x::Tropical, y::Tropical) = Tropical(max(x.x, y.x))
Base.:*(x::Tropical, y::Tropical) = Tropical(+(x.x, y.x))
#TODO min plus
end
