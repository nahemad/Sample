%================================================================
% Test 1 Redo                                            Problem 1
% Nahema Dumonteil Cabanas                              Date : 3/19/2025 
%=================================================================

clear;clc;

days=input('How many days' );
while days>5 | days<=0 | ~(round(days)==days);
    days=input('Error, How many days' );
end
r=input('Are you an Orlando resident? ','s');
while ~(strcmpi(r,{'yes','no'}));
    r=input('Error, Are you an Orlando resident? ','s');
end

%again=1 ;

% while c<=2
for k=1:days;
    c=3;
   while c>2;
        mk=input('will you go to Magic Kigdom ','s');
        e=input('will you go to Epcot ','s');
        hs=input('will you go to Hollywood Studios ','s');
        ak=input('will you go to Animal kingdom ','s');
        priced=0;
        c=0;
        if strcmpi(mk,'yes')
            price=150;
            c=1;
            priced=price;
        end
        if strcmpi(e,'yes')
            price=110;
            c=c+1;
            priced=priced+price;
        end
        if strcmpi(hs,'yes')
            price=125;
            c=c+1;
            priced=priced+price;
        end
        if strcmpi(ak,'yes')
            price=135;
            c=c+1;
            priced=priced+price;
        end

        if c>2
            fprintf('Error, you can only attend 2 parks per day. Try again\n');
            c=3;
            priced=0;
            price=0;
        elseif  c<=2 & strcmpi(r,'no');
            priced=priced
        else c<=2 & strcmpi(r,'yes');
            priced=priced*.6
     
        end
        pricet(k)=priced
  
        end  
   
   end

      
   


Total=sum(pricet)

fprintf('Total price each day:\n')
pricet
if strcmpi(r,'no');
    Total=Total
else strcmpi(r,'yes');
    Totalr=Total*.6
end

food=input('would you like food? ','s')
if strcmpi(food,'yes')
    turkey=input('How many Turkey leg? ')
    Waffle=input('How many Mickeye Waffle? ')
    Bar=input('How many Mickey Bar? ')
    Drink=input('How many Drinks? ')

    TotalFood=turkey*(11.99)+Waffle*(8.99)+Bar*(4.99)+Drink*(5.99)

else
    TotalFood=0
end

TotalFoodDeal=TotalFood*.85
Total
TotalDeal=225*days

TotalDealFood=TotalDeal+TotalFoodDeal
TotalNormal=Total+TotalFood

if TotalNormal<=TotalDealFood
    savings=TotalDealFood-TotalNormal
else
    TotalNormal>TotalDealFood
    overspent=TotalNormal-TotalDealFood
end

%%
clear;clc;
format short

again='yes'
while strcmpi(again,'yes') 
    clear T Vol e 
num=input('How many materials? ')
while num<1 | num>4|num~=round(num)
    num=input('Error, How many materials? (between 1 and 4) ')
end

for k=1:num
    mat=input('what material do you want?? (A,C,S,T)','s')
    while ~(strcmpi(mat,{'A','C','S','T'}))
        mat=input('Error, what material do you want?? (A,C,S,T)','s')
    end
     mate(k)=mat
    mass=input('what is the mass in kg?')
    while mass<0
        mass=input('Error, what is the mass in kg?')
    end

    material={'A','C','S','T'};
    dens=[2.7,8.96,7.85,4.5];
    costs=[2.5,9,3.5,15];

    for l=1:4
        fprintf('Comparing mat: %s with material{%d}: %s\n', mat, l, material{l});
        if strcmpi(mat,(material{l}));
            den=dens(l);
            x=costs(l);
            V=(mass*1000)/den;
           
            break
        end
    end

        Vol(k)=V;
        % cost(k)=cost
        totcost=x*mass;
        T(k)=totcost;
        cost(k)=x
        
end

T
Vol
e=T./Vol;
costeff=min(e)



again=input('would you like to run the code again?','s')
end







     