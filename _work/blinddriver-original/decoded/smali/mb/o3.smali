.class public final Lmb/o3;
.super Lmb/d0;
.source "SourceFile"


# virtual methods
.method public final getType()Lmb/s5;
    .locals 0

    iget-object p0, p0, Lmb/d0;->a:Lmb/s5;

    return-object p0
.end method

.method public final s(Lmb/e7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/e7;->e0(Lmb/o3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmb/d0;->a:Lmb/s5;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
