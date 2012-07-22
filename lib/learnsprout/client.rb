module LearnSprout
  class Client
    include LearnSprout::Connection

    def initialize(api_key)
      @api_key = api_key
    end

    def org(org_id)
      org = get("org/#{org_id}?apikey=#{@api_key}")
      org["client"] = self
      Org.new(org)
    end

    def orgs
      orgs = get("org?apikey=#{@api_key}")
      instances_from_orgs(orgs)
    end

    def school(org_id, school_id)
      school = get("org/#{org_id}/school/#{school_id}?apikey=#{@api_key}")
      school["org_id"] = org_id
      school["client"] = self
      School.new(school)
    end

    def schools(org_id)
      schools = get("org/#{org_id}/school?apikey=#{@api_key}")
      instances_from_schools(org_id, schools)
    end

    def student(org_id, student_id)
      student = get("org/#{org_id}/student/#{student_id}?apikey=#{@api_key}")
      student["org_id"] = org_id
      student["client"] = self
      Student.new(student)
    end

    def students(org_id, options = {})
      school_id = options[:school_id]
      if (school_id)
        students = get("org/#{org_id}/school/#{school_id}/student?apikey=#{@api_key}")
      else
        students = get("org/#{org_id}/student?apikey=#{@api_key}")
      end
      instances_from_students(org_id, students)
    end

    def section(org_id, section_id)
      url = "org/#{org_id}/section/#{section_id}?apikey=#{@api_key}"
      section = get(url)
      section["org_id"] = org_id
      section["client"] = self
      Section.new(section)
    end

    def sections(org_id, options = {})
      school_id = options[:school_id]
      if (school_id)
        url = "org/#{org_id}/school/#{school_id}/section?apikey=#{@api_key}"
      else
        url = "org/#{org_id}/section?apikey=#{@api_key}"
      end
      sections = get(url)
      instances_from_sections(org_id, sections)
    end

    def teacher(org_id, teacher_id)
      url = "org/#{org_id}/teacher/#{teacher_id}?apikey=#{@api_key}"
      teacher = get(url)
      teacher["org_id"] = org_id
      teacher["client"] = self
      Teacher.new(teacher)
    end

    def teachers(org_id, options = {})
      school_id = options[:school_id]
      if (school_id)
        url = "org/#{org_id}/school/#{school_id}/teacher?apikey=#{@api_key}"
      else
        url = "org/#{org_id}/teacher?apikey=#{@api_key}"
      end
      teachers = get(url)
      instances_from_teachers(org_id, teachers)
    end

    def term(org_id, term_id)
      url = "org/#{org_id}/term/#{term_id}?apikey=#{@api_key}"
      term = get(url)
      term["org_id"] = org_id
      term["client"] = self
      Term.new(term)
    end

    def terms(org_id, options = {})
      school_id = options[:school_id]
      if (school_id)
        url = "org/#{org_id}/school/#{school_id}/term?apikey=#{@api_key}"
      else
        url = "org/#{org_id}/term?apikey=#{@api_key}"
      end
      terms = get(url)
      instances_from_terms(org_id, terms)
    end

    def current_term(org_id, school_id)
      url = "org/#{org_id}/school/#{school_id}/term/current?apikey=#{@api_key}"
      term = get(url)
      term["org_id"] = org_id
      term["client"] = self
      Term.new(term)
    end

    def course(org_id, course_id)
      url = "org/#{org_id}/course/#{course_id}?apikey=#{@api_key}"
      course = get(url)
      course["org_id"] = org_id
      course["client"] = self
      Course.new(course)
    end

    def courses(org_id, options = {})
      school_id = options[:school_id]
      if (school_id)
        url = "org/#{org_id}/school/#{school_id}/course?apikey=#{@api_key}"
      else
        url = "org/#{org_id}/course?apikey=#{@api_key}"
      end
      courses = get(url)
      instances_from_courses(org_id, courses)
    end

    private
      def instances_from_orgs(orgs)
        org_instances = []
        orgs.each do |org|
          org["client"] = self
          org_instances << Org.new(org)
        end
        return org_instances
      end

      def instances_from_schools(org_id, schools)
        school_instances = []
        #TODO Next
        schools["data"].each do |school|
          school["client"] = self
          school["org_id"] = org_id
          school_instances << School.new(school)
        end
        return school_instances
      end

      def instances_from_students(org_id, students)
        student_instances = []
        #TODO Next
        students["data"].each do |student|
          student["client"] = self
          student["org_id"] = org_id
          student_instances << Student.new(student)
        end
        return student_instances
      end

      def instances_from_sections(org_id, sections)
        section_instances = []
        #TODO Next
        sections["data"].each do |section|
          section["client"] = self
          section["org_id"] = org_id
          section_instances << Section.new(section)
        end
        return section_instances
      end

      def instances_from_teachers(org_id, teachers)
        teacher_instances = []
        #TODO Next
        teachers["data"].each do |teacher|
          teacher["client"] = self
          teacher["org_id"] = org_id
          teacher_instances << Teacher.new(teacher)
        end
        return teacher_instances
      end

      def instances_from_terms(org_id, terms)
        term_instances = []
        #TODO Next
        terms["data"].each do |term|
          term["client"] = self
          term["org_id"] = org_id
          term_instances << Term.new(term)
        end
        return term_instances
      end

      def instances_from_courses(org_id, courses)
        course_instances = []
        #TODO Next
        courses["data"].each do |course|
          course["client"] = self
          course["org_id"] = org_id
          course_instances << Course.new(course)
        end
        return course_instances
      end
  end
end
