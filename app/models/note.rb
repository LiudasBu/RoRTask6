class Note < ApplicationRecord

    validates :name, :content, presence: true

    def self.search(search)
        if search
            searchnote = Note.find_by(name: search)
            if searchnote
                self.where(name: search)
            else
                Note.all
            end
        else
            Note.all
        end
    end
end
