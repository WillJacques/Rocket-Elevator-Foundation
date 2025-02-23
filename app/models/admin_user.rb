class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable, :registerable
  
  has_many :employees
  def display_name
    "#{email}"
  end
  def display_id
    "#{id}"
  end
  has_many :customers
  def to_s
    "#{email}"
  end

  def self.current
    Thread.current[:admin_user]
  end
  def self.current=(admin_user)
    Thread.current[:admin_user] = admin_user
  end
  
  #belongs_to :quote

  # Assign admin role if user is an Employee
  def admin?
    employees = Employee.where(["email = ?", email])
    if employees.size > 0
      true
    else
    end
  end

  # Assign customer role if user is a Customer
  def customer?
    
    customers = Customer.where(["email_company_contact = ?", email])
    #customer_id = Customer.find()
    if customers.size > 0
      true
    else
    end
  end


end
