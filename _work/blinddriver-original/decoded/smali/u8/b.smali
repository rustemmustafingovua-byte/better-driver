.class public abstract Lu8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk9/a;


# instance fields
.field public l:I

.field public m:Ljava/lang/Object;


# virtual methods
.method public abstract a()V
.end method

.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lu8/b;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    return v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasNext called when the iterator is in the FAILED state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lu8/b;->l:I

    invoke-virtual {p0}, Lu8/b;->a()V

    iget p0, p0, Lu8/b;->l:I

    if-ne p0, v2, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lu8/b;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lu8/b;->l:I

    iget-object p0, p0, Lu8/b;->m:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lu8/b;->l:I

    invoke-virtual {p0}, Lu8/b;->a()V

    iget v0, p0, Lu8/b;->l:I

    if-ne v0, v2, :cond_1

    iput v1, p0, Lu8/b;->l:I

    iget-object p0, p0, Lu8/b;->m:Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
