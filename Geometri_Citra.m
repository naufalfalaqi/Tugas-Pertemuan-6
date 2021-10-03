Naufal1 = imread('Naufal1.jpg');
Naufal2 = imread('Naufal2.jpg');

q = rgb2gray(Naufal1);
r = rgb2gray(Naufal2);

figure(1); imshow(q);
figure(2); imshow(r);

c = q;
[kolom, baris] = size(c);

for m = 1 : kolom
    for n = 1 : baris
        if r(m,n)~= 0
            c(m,n) = r(m,n);
        end
    end
end

figure(3); imshow(c);  

l = r;  

for m = 1 : kolom     
    for n = 1 : baris        
        if l(m,n) ~= 0            
            l(m,n) = r(m,n);        
        end
    end
end

figure(4); imshow(l);   

blackwhite1 = q > 135; 
blackwhite2 = r > 135;   

figure(5); imshow(blackwhite1); 
figure(6); imshow(blackwhite2); 

k = blackwhite1;   

for m = 1: kolom    
    for n = 1 : baris        
        if k(m,n) == 0            
            k(m,n) =1;         
        else
            k(m,n) = 0;        
        end
    end
end

figure(7); imshow(k);   

x = blackwhite1;   

for m = 1: kolom     
    for n = 1: baris        
        if blackwhite2(m,n) ~= 0          
            if x(m,n) == 0                 
                x(m,n) = 1 ;             
            else
                x(m,n) = 0;            
            end
        end
    end
end

figure(8); imshow (x)