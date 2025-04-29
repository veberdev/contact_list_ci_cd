require "test_helper"

class ContactListTest < ActiveSupport::TestCase
  test "should be valid with name and phone" do
    contact = ContactList.new(name: "John Doe", phone: "123456789")
    assert contact.valid?
  end

  test "should not be valid without name" do
    contact = ContactList.new(phone: "123456789")
    assert_not contact.valid?
    assert_includes contact.errors[:name], "can't be blank"
  end

  test "should not be valid without phone" do
    contact = ContactList.new(name: "John Doe")
    assert_not contact.valid?
    assert_includes contact.errors[:phone], "can't be blank"
  end

  test "name should not be blank" do
    contact = ContactList.new(name: "", phone: "123456789")
    assert_not contact.valid?
    assert_includes contact.errors[:name], "can't be blank"
  end

  test "phone should not be blank" do
    contact = ContactList.new(name: "John Doe", phone: "")
    assert_not contact.valid?
    assert_includes contact.errors[:phone], "can't be blank"
  end
end
