class Ship < ApplicationRecord
	enum status: { arrived: 'arrived', queue: 'queue', processing: 'processing', processed: 'processed'}
end
