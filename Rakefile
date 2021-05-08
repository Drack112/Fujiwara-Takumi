task default: [:verify, :prettier]

task :verify do
  sh "sh scripts/verify.sh"
  puts "Verificação completa"
end

task :prettier do
  sh "sh scripts/prettier-ruby.sh"
  puts "Arquivos formatados"
end
