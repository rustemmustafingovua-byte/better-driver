.class public Lmb/m4;
.super Lmb/b4;
.source "SourceFile"

# interfaces
.implements Lmb/p4;


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmb/m0;->f:Lmb/a5;

    check-cast v0, Lmb/q1;

    iget-object v0, v0, Lmb/q1;->c:Lmb/k4;

    iget-object p0, p0, Lmb/b4;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lmb/k4;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final o()Lmb/q1;
    .locals 0

    iget-object p0, p0, Lmb/m0;->f:Lmb/a5;

    check-cast p0, Lmb/q1;

    return-object p0
.end method

.method public q(Lmb/t7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/t7;->d0(Lmb/m4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
