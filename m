####Regula Falsi Method
def R_F(a,b,n,f):
    for i in range(1,n):
        c=(a*f(b)-b*f(a))/(f(b)-f(a))
        if(f(a)*f(c)<0):
            b=c    
        else:
            a=c
        print('\n iteration %d,c=%f and f(c)=%f'%(i,c,f(c)))
    print('\nroot by regula falsi method c=',c)

####Trapazoidal
def Tr(a,b,n,f):
    h=float(b-a)/n
    I=f(a)+f(b)
    for i in range(1,n):
        I=I+2*f(a+i*h)
    I=(h/2)*I
    return I

###1/3  Rule
def s13(a,b,n,f):
    h=float(b-a)/n
    I=f(a)+f(b)
    for i in range(1,n):
        k=a+i*h
        if i%2==0:
            I=I+2*f(k)
        else:
            I=I+4*f(k)
    I=(h/3)*I
    return I

###3/8 Rule
def s38(a,b,n,f):
    h=float(b-a)/n
    I=f(a)+f(b)
    for i in range(1,n):
        k=a+i*h
        if i%3==0:
            I=I+2*f(k)
        else:
            I=I+3*f(k)
    I=(3*h/8)*I
    return I


####Newton raphson method
def N_R(x0,n,f,g):
    for i in range(1,n):
        x1=x0-f(x0)/g(x0)
        x0=x1
        print("\niteration %d,x1=%0.6f and f(x1)=%0.6f"%(i,x1,f(x1)))
        print('Root by Newton Raphson Method x1=',x1)
