namespace :spree do
  namespace :extensions do
    namespace :theme_default_hamlized do
      desc "Copies public assets of the Theme Default Hamlized to the instance public/ directory."
      task :update => :environment do
        is_svn_git_or_dir = proc {|path| path =~ /\.svn/ || path =~ /\.git/ || File.directory?(path)}
        Dir[ThemeDefaultHamlizedExtension.root + "/public/**/*"].reject(&is_svn_git_or_dir).each do |file|
          path = file.sub(ThemeDefaultHamlizedExtension.root, '')
          directory = File.dirname(path)
          puts "Copying #{path}..."
          mkdir_p RAILS_ROOT + directory
          cp file, RAILS_ROOT + path
        end
      end  
    end
  end
end