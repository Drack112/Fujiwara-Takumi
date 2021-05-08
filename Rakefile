task default: [:verify, :node, :prettier]

task :verify do
  sh "sh scripts/verify.sh"
  puts "Verificação completa"
end

task :node do
  sh "yarn install"
  puts "Pacotes node baixados"
end

task :prettier do
  sh "sh scripts/prettier-ruby.sh"
  puts "Arquivos formatados"
end