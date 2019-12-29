from nltk.tokenize import sent_tokenize


def lines(a, b):

    A = list(set(a.split("\n")))
    B = list(set(b.splitlines()))

    return GiveResult(A, B)


def sentences(a, b):
    A = list(set(sent_tokenize(a)))
    B = list(set(sent_tokenize(b)))

    return GiveResult(A, B)


def substrings(a, b, n):
    A = subString(a, n)
    B = subString(b, n)

    return GiveResult(A, B)


def subString(s, n):
    C = []
    for i in range(len(s)-n+1):
        C.append(s[i:i+n])
    return list(set(C))


def GiveResult(A, B):
    C = []
    if(len(A) < len(B)):
        g = len(A)
    else:
        g = len(B)

    for i in range(g):
        if(len(A) < len(B)):
            if A[i] in B:
                C.append(A[i])
        else:
            if B[i] in A:
                C.append(B[i])

    return list(set(C))
