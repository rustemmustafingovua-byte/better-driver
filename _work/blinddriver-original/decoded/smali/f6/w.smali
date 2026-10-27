.class public final Lf6/w;
.super Lr5/f1;
.source "SourceFile"


# virtual methods
.method public final b(Ljava/lang/Class;)Lr5/d1;
    .locals 1

    iget-object v0, p0, Lr5/f1;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lf6/w;

    invoke-direct {p0, p1}, Lr5/f1;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final d(Ljava/lang/Object;)Lr5/c1;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lr5/c1;

    const-class v1, Lf6/w;

    iget-object p0, p0, Lr5/f1;->l:Ljava/lang/Class;

    invoke-direct {v0, v1, p0, p1}, Lr5/c1;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e()Lr5/d1;
    .locals 0

    return-object p0
.end method
