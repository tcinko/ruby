def englishNumber number
  if number<0 
    return 'input number >0'
  end
  if number ==0
    return 'zerro'
  end

  result=''
  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens =['ten', 'twenty',  'thirty',   'forty',    'fifty', 'sixty',   'seventy',   'eighty',   'ninety']
  teenage = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']


  left  = number
  write = left/1000000          #  Сколько миллионов осталось вывести?
  left  = left - write*1000000

  if write>0
     h1000000=englishNumber (write)
     result=result+h1000000 + ' million'
     if left>0
        result=result+' '
     end
  end

  write = left/1000          #  Сколько тысяч осталось вывести?
  left  = left - write*1000

  if write>0
     h1000=englishNumber (write)
     result=result+h1000 + ' thousand'
     if left>0
        result=result+' '
     end
  end


  write = left/100          #  Сколько сотен осталось вывести?
  left  = left - write*100


  if write>0
     h100=englishNumber (write)
     result=result + h100  + ' hundred'
     if left>0
        result=result+' '
     end
  end

  write = left/10          #  Сколько десятков  осталось вывести?
  left  = left - write*10
  if write>0
     if (write==1) and (left>0)
         result=result + teenage[left-1]
         left=0
     else
         result=result + tens [write-1]
#         if left==0 
#          result=result + ' '
#         end 
     end
     if left>0
       result=result + '-'
    end
  end



  write=left

  if write>0
     result=result +  ones [write-1]
  end

  result
#   result=result+'|'
end
#----------------------------
puts 'input number'
n=gets.to_i

puts englishNumber (n)

