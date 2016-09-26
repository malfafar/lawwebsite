module SocialBodiesHelper
  def get_position(position)
    get_positions[position]
  end


  def get_positions
    positions = [  'Assembleia Geral',
               'Conselho Directivo',
               'Conselho Fiscal'
              ]
  end

  def get_positions_options
    array = []
    i=0
    get_positions.each do |position|
      array.push([position,i])
      i+=1
    end
    array
  end

  def general_assembly
    0
  end

  def governing_board
    1
  end

  def audit_committee
    2
  end

end
