module Utils
  def self.hex_to_rgba(input, alpha)
    a = ( input.match /#(..?)(..?)(..?)/ )[1..3]
    a.map!{ |x| x + x } if input.size == 4
    "rgba(#{a[0].hex},#{a[1].hex},#{a[2].hex}, #{alpha})"
  end
end