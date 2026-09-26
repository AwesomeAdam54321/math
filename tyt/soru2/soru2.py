"""
MIT License

Copyright (c) 2026-2027 Mass Collaboration Labs

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
"""
def solve_k():
    digits = list(range(10)) # 0'dan 9'a kadar rakamlar
    k_values = set()         # Benzersiz toplamları tutmak için küme (set) kullanıyoruz
    
    # Tüm a ve b kombinasyonlarını dene
    for a in digits:
        for b in digits:
            if a != b:       # "birbirinden farklı" şartı
                k_values.add(a + b)
                
    # Sonuçları sıralayarak yazdır
    sorted_values = sorted(list(k_values))
    print(f"K'nin alabileceği tüm değerler: {sorted_values}")
    print(f"Toplam farklı değer sayısı: {len(sorted_values)}")

solve_k()
