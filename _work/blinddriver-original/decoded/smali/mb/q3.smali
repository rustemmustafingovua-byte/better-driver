.class public Lmb/q3;
.super Lmb/b4;
.source "SourceFile"

# interfaces
.implements Lmb/t3;
.implements Lmb/v2;


# virtual methods
.method public final g()Lmb/v5;
    .locals 0

    iget-object p0, p0, Lmb/m0;->f:Lmb/a5;

    check-cast p0, Lmb/v5;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/m0;->f:Lmb/a5;

    check-cast v1, Lmb/v5;

    invoke-interface {v1}, Lmb/v5;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/b4;->l:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lmb/t7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/t7;->e(Lmb/q3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public v(Lmb/s7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/s7;->e(Lmb/q3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
