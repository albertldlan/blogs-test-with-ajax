module ApplicationHelper

	def nl2br(s)
  	s.gsub(/\n/, '<br>')
	end

	def br2nl(s)
		s.gsub('<br>', /\n/)
	end
	
end
