include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :sport do
    name 'Hockey'
    description <<-eos
      Lorizzle ipsizzle dolizzle things amizzle, the bizzle black elit. 
      Tellivizzle sapizzle velit, volutpat, suscipizzle that's the shizzle, 
      away vel, shiznit. Pellentesque eget tortor. Its fo rizzle erizzle. 
      Fusce izzle dolizzle dapibus phat tellivizzle dizzle. Maurizzle 
      pellentesque nibh rizzle turpizzle. Dang crunk tortor. Its fo rizzle 
      eleifend rhoncizzle nisi. In crazy fo shizzle platea dictumst. Donec 
      dapibizzle. Curabitizzle tellizzle bizzle, pretizzle boom shackalack, 
      mattizzle you son of a bizzle, eleifend fo shizzle, nunc. Fo shizzle 
      my nizzle suscipizzle. Stuff fo shizzle my nizzle fo shizzle mah nizzle 
      fo rizzle, mah home g-dizzle check it out fizzle.
    eos
    icon { fixture_file_upload( Rails.root.join('spec', 'images', 'test.png'), 'image/png' ) }
  end
end
