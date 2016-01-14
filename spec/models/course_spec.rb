require 'rails_helper'

RSpec.describe Course, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

require 'rails_helper'

RSpec.describe Course, :type => :model do
	let(:course_instance) { Course.create(dept: "Math", num: "3A", desc: "Calculus") }
	describe "public instance methods" do
	    context "responds to its methods" do
	    	it { expect(course_instance).to respond_to(:course_num) }
	    end
	end
end

RSpec.describe Course, :type => :model do
    let(:course_instance) { Course.create(dept: "Swordfighting", num: "77", desc: "swordfighting for noobs") }
    describe "public instance methods" do
       context "result equals expected" do
            it { expect(course_instance.course_num).to  equals("swordfighting 77 swordfighting for noobs") }  
       end
    end
    
end