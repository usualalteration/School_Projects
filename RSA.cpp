#include <iostream>
#include <cmath>
using namespace std;
//prototipi funzioni
unsigned long cifratura(unsigned long k[], unsigned long m);
unsigned long MCD(unsigned long a, unsigned long b);
unsigned long decifratura(unsigned long h[], unsigned long c);

//main
int main()
{
    unsigned long p;
    unsigned long q;
    //inserimento numeri primi p e q
    cout << "Inserisci il numero primo p: ";
    cin >> p;
    cout <<"Inserisci il numero primo q: ";
    cin >> q;
    //Calcolo del prodotto tra p e q = n
    unsigned long n = p * q;
    unsigned long f = (p-1) * (q-1);
    cout << "n = p * q      :  " << n << endl;
    cout << "f(n) = (p-1)*(q-1)      :  " << f << endl;

    //e inserito nel programma come esempio
    unsigned long e = 17;
    //Se MCD tra e e f(n) è 1 il programma prosegue altrimenti esce
    if(!(MCD(e,f)==1 && e<f))
    {
        return -1;
    }

    cout << "Esponente pubblico e      :  " << e << endl;
    unsigned long d = 2753;
    //Se d (e*d)%f(n)=1 il programma prosegue altrimenti esce
    if (!((e*d)%f == 1))
    {
    //forza l'uscita del programma
    return -1;
    }
    cout << "Esponente privato d      :  " << d << endl;
    //Array k[] chiave pubblica array h[] chiave privata
    unsigned long k[] = {n,e};
    unsigned long h[] = {n,d};
    cout << "Chiave pubblica      :k(" << k[0] << "," << k[1] << ")" << endl;
    cout << "Chiave privata      :h(" << h[0] << "," << h[1] << ")" << endl;
    //1)inserimento del numero da cifrare (max 3232)
    unsigned long m;
    cout << "Messaggio da cifrare      :  m=";
    cin >> m;
    unsigned long c = cifratura(k,m);
    cout << "Cifratura di m      :  c=" << m << endl;
    m = decifratura(h,c);
    cout << "Decifratura di c      :  m=" << m << endl;
}

unsigned long MCD(unsigned long a, unsigned long b)
{
    //funzione che calcola il mcd tra a e b
    unsigned long r = a % b;
    if (r == 0){
        return b;
    }

    return MCD (b,r);
}

unsigned long cifratura(unsigned long k[], unsigned long m)
{
    //funzione che cifra il messaggio m con la chiave pubblica k[]
    unsigned long s = 1;
    for (unsigned long i=0; i<k[1]; i++){
        s = (s*m) % k[0];
    }
    return s;
}

unsigned long decifratura(unsigned long h[], unsigned long c)
{
    //funzione che decifra il messaggio c con la chiave privata h
    unsigned long s = 1;
    for(unsigned long i = 0; i < h[1]; i++){
        s = (s*c) % h[0];
    }
    return s;
}

