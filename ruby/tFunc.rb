#!/usr/bin/ruby

doit=Proc.new do |x|
        puts("do it #{x}")
end

repeat=Proc.new do |x|
        puts("repeat #{x}")
end


def perform(arr,proc)

  arr.each { |x| proc.call(x) }

end

arr=[]

arr << "one" << "two" << "three"

perform(arr,doit)

perform(arr,repeat)

