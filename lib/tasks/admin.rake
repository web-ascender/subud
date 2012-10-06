require 'csv'

namespace :admin do 
  #rake admin:model_csv_import[actual.csv]
  task :model_csv_import, [:filename] => :environment do |t, args|
   
    puts File.exists?(args.filename)  
    i = 0
    CSV.foreach(args.filename) do |row|
      if i != 0 #&& i < 4
        c = Contact.new
        c.first_name = row[0]
        c.last_name = row[1]
        c.address = row[2]
        c.city = row[3]
        c.state = row[4]
        c.zip = row[5]
        c.home_phone = row[6]
        c.fax_number = row[7]
        c.email = row[8]
        c.birth_date = row[9]

        help_status = HelpStatus.find_by_name(row[10])
        
        if !help_status.nil?
          c.help_status= help_status
        elsif row[10] != nil and row[10] != ''
          HelpStatus.create(:name => row[10])
        end

        help_statustype = HelpStatustype.find_by_name(row[11])
        
        if !help_statustype.nil?
          c.help_statustype = help_statustype
        elsif row[11] != nil and row[11] != ''
          HelpStatustype.create(:name => row[11])
        end

        martial_status = MartialStatus.find_by_name(row[12])
        
        if !martial_status.nil?
          c.martial_status= martial_status
        elsif row[12] != nil and row[12] != ''
          MartialStatus.create(:name => row[12])
        end

        sex = Sex.find_by_name(row[14])
        
        if !sex.nil?
          c.sex= sex
        elsif row[14] != nil and row[14] != ''
          Sex.create(:name => row[14])
        end

        member_status = MemberStatus.find_by_name(row[15])
        
        if !member_status.nil?
          c.member_status= member_status
        elsif row[15] != nil and row[15] != ''
          MemberStatus.create(:name => row[15])
        end
                      
        c.opening_date = row[13]
        c.date_of_info = row[16]

        c.save
      end
      i=i+1
    end


  end
end

#  id                :integer          not null, primary key
#  first_name        :string(255)
#  last_name         :string(255)
#  address           :string(255)
#  suite             :string(255)
#  city              :string(255)
#  state             :string(255)
#  zip               :string(255)
#  home_phone        :string(255)
#  work_phone        :string(255)
#  fax_number        :string(255)
#  email             :string(255)
#  birth_date        :string(255)
#  help_status_id    :integer
#  martial_status_id :integer
#  opening_date      :string(255)
#  sex_id            :integer
#  member_status_id  :integer
#  date_of_info      :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
