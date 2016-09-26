module MembersHelper
  def get_role(role)
    get_roles[role]
  end


  def get_roles
    roles = [  'Pendente',
               'Normal',
               'Admin'
              ]
  end

  def get_roles_options
    array = []
    i=0
    get_roles.each do |role|
      array.push([role,i])
      i+=1
    end
    array
  end

  def min_admin_role
    2
  end

  def role_pending
    0
  end


end
