module Hsv
	class << self
		def to_rgb(h, s, v)
		  h_i = (h*6).to_i
		  f = h*6 - h_i
		  p = v * (1 - s)
		  q = v * (1 - f*s)
		  t = v * (1 - (1 - f) * s)
		  r, g, b = v, t, p if h_i==0
		  r, g, b = q, v, p if h_i==1
		  r, g, b = p, v, t if h_i==2
		  r, g, b = p, q, v if h_i==3
		  r, g, b = t, p, v if h_i==4
		  r, g, b = v, p, q if h_i==5
		[(r * 256).to_i, (g * 256).to_i, (b * 256).to_i]
		end

	end

end
