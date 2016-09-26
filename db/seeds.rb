Member.create!(name: "Admin", email: "admin@example.com",
  password: "12345678", password_confirmation: "12345678",
  naturality: "Portuguesa", birthday: Date.today, residence: "Rua Alfredo Martins",
  office: "Coimbra", office_address: "Rua em Coimbra", office_zipcode: "1234-444", office_phone: "912233456", practice_level: "Subdirector",
  location_class: "Boa", personal_class: "Gerente", role: 2, pending: false, confirmed_at: Time.now)



Member.create!(name: "Member", email: "member@example.com",
  password: "12345678", password_confirmation: "12345678",
  naturality: "Portuguesa", birthday: Date.today, residence: "Rua Alfredo Martins",
  office: "Coimbra", office_address: "Rua em Coimbra", office_zipcode: "1234-444", office_phone: "912233456", practice_level: "Subdirector",
  location_class: "Boa", personal_class: "Gerente", role: 1, confirmed_at: Time.now)



Member.create!(name: "P Member", email: "pendingmember@example.com",
  password: "12345678", password_confirmation: "12345678",
  naturality: "Portuguesa", birthday: Date.today, residence: "Rua Alfredo Martins",
  office: "Coimbra", office_address: "Rua em Coimbra", office_zipcode: "1234-444", office_phone: "912233456", practice_level: "Subdirector",
  location_class: "Boa", personal_class: "Gerente", role: 0, confirmed_at: Time.now)


About.create(message: "Mensagem da ASCR",

objectives: "Compete à ASCR, em conformidade com o artigo 2º dos Estatutos, a «defesa dos direitos e interesses dos seus associados». Defender os direitos e interesses dos Conservadores dos Registos significa lutar pela dignidade das suas funções, o que passa tanto pela defesa dos seus interesses profissionais como pela defesa do sistema registral em si mesmo. Neste sentido, são objectivos da ASCR, entre outros:

- Estimular a união da classe e incentivar a sua participação activa;
- Demandar a criação de condições de trabalho e incrementar programas de formação;
- Manter bom relacionamento com a tutela na prossecução de objectivos comuns e invocar as reivindicações de índole sindical que se mostrem justificadas;
- Apresentar os Conservadores como um grupo profissional cooperante, movido por valores éticos de serviço público, e participar na definição das melhores políticas para a actividade registral.

A ASCR enfrenta, ainda, novos desafios, tais como, contribuir para a consolidação do sistema registral nacional, europeu e internacional, dando a conhecer à sociedade e aos agentes económicos as virtudes da instituição, pela sua relação qualidade/preço, quer na identificação das pessoas singulares e colectivas quer na titulação da propriedade.

")

Fee.create(name: "Conservador de 1ª" , value: 17.50)
Fee.create(name: "Conservador de 2ª", value: 15.00)
Fee.create(name: "Conservador de 3ª e Adjuntos", value: 12.50)
