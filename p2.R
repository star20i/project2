n = 5  
p = 1/2  

###soal 1

p3 = dbinom(3, n, p)  
pmin4 = sum(dbinom(4:5, n, p))  
p0 = dbinom(0, n, p)  

p3
pmin4
p0


###soal 2

p = function() {  
  halatha = 36  
  
  c = table(sapply(1:6, function(X1) {  
    sapply(1:6, function(X2) {  
      min(X1, X2)  
    })  
  }))  
  
  py1 = c[1] / halatha  
  py2 = c[2] / halatha  
  p5 = sum(c[1:4]) / halatha  
  
  return(list(py1 = py1, py2 = py2, p5 = p5))  
}  

py1
py2
p5




###soal 3

msefid = 5  
msabz = 7  
mabi = 12  

kol_mohreha = msefid + msabz + mabi  

s = choose(msefid, 2)  
e = choose(kol_mohreha, 2)  

pmohresefid2 = s / e  
print(pmohresefid2)  

#az motamem estefade mikonim
#farz mikonim rang anha yeksan bashad


t = choose(msefid, 3)  
a = choose(msabz, 3)  
r = choose(mabi, 3)  
ee = choose(kol_mohreha, 3)  

prang = (t + a + r) / ee  
motamem = 1 - prang  

motamem
