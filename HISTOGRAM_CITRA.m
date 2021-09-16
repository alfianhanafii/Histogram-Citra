%DATA
data = [ 1 2 1 1, 3 3 4 7, 2 1 1 7]
 
%HISTOGRAM CITRA
[kolom, baris] = size(data);
histogram = zeros(1,7);
 
for x = 1 : kolom
    for y = 1 : baris
        ii = data(x,y);
        histogram(ii) = histogram(ii) + 1;
    end
end
 
figure(1)
bar(histogram)
axis([0 8 0 8])
grid on
 
%DISTRIBUSI KUMULATIF
kumulatif = zeros(1,7);
for A = 1 : 7
    kumulatif(A) = sum(histogram(1:A));
end
 
figure(2)
bar(kumulatif)
axis([0 8 0 15])
grid on
 
%EKUALISASI
ekualisasi = zeros(1,7);
for B = 1 : 7
    ekualisasi(B) = round(kumulatif(B) * 7 / (kolom * baris));
end
 
figure(3)
bar(ekualisasi)
axis([0 8 0 kolom*baris])
grid on