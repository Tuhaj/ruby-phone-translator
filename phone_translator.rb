class PhoneTranslator
  KEYS_MAP = {
    a: "2",
    b: "2",
    c: "2",
    d: "3",
    e: "3",
    f: "3",
    g: "4",
    h: "4",
    i: "4",
    j: "5",
    k: "5",
    l: "5",
    m: "6",
    n: "6",
    o: "6",
    p: "7",
    q: "7",
    r: "7",
    s: "7",
    t: "8",
    u: "8",
    v: "8",
    w: "9",
    x: "9",
    y: "9",
    z: "9",
  }

  def initialize(coded_phone_number)
    KEYS_MAP.default = "1"
    @coded_phone_number = coded_phone_number
    @decoded_phone_number = ""
    @numbers_map = KEYS_MAP
  end

  def digit?(char)
    char =~ /[0-9]/
  end

  def shouldRemain?(char)
    char == "-" || digit?(char) ||
    char == " "
  end

  def key_mapper(char)
    shouldRemain?(char) ? char : @numbers_map[char.downcase.to_sym]
  end

  def show_instruction
    "Proper usage: \n phone.rb number"
  end

  def decode
    return show_instruction if !@coded_phone_number || @coded_phone_number.empty?
    @coded_phone_number.each_char do |char|
      @decoded_phone_number += key_mapper(char)
    end
    @decoded_phone_number
  end
end
