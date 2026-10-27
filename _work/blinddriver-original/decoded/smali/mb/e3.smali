.class public final Lmb/e3;
.super Lmb/b4;
.source "SourceFile"

# interfaces
.implements Lmb/v2;


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmb/m0;->f:Lmb/a5;

    :goto_0
    instance-of v1, v0, Lmb/v5;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lmb/v5;

    invoke-interface {v0}, Lmb/v5;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/b4;->l:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_0
.end method

.method public final q(Lmb/t7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/t7;->D0(Lmb/e3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
