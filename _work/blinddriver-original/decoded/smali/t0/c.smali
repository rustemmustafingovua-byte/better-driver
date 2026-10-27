.class public abstract Lt0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ILjava/util/List;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ltz p0, :cond_1

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lt0/c;->c(II)V

    return-void
.end method

.method public static final b(Ljava/util/List;II)V
    .locals 0

    if-le p1, p2, :cond_0

    invoke-static {p1, p2}, Lt0/c;->f(II)V

    :cond_0
    if-gez p1, :cond_1

    invoke-static {p1}, Lt0/c;->d(I)V

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-le p2, p1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p2, p0}, Lt0/c;->e(II)V

    :cond_2
    return-void
.end method

.method private static final c(II)V
    .locals 4

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, " is out of bounds. The list has "

    const-string v2, " elements."

    const-string v3, "Index "

    invoke-static {v3, p0, v1, p1, v2}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final d(I)V
    .locals 3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "fromIndex ("

    const-string v2, ") is less than 0."

    invoke-static {p0, v1, v2}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final e(II)V
    .locals 3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toIndex ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is more than than the list size ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final f(II)V
    .locals 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ") is greater than toIndex ("

    const-string v2, ")."

    const-string v3, "Indices are out of order. fromIndex ("

    invoke-static {v3, p0, v1, p1, v2}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
