.class public abstract Lmb/c1;
.super Lmb/m3;
.source "SourceFile"


# virtual methods
.method public A()Lmb/y4;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final B()Lmb/y4;
    .locals 3

    invoke-virtual {p0}, Lmb/c1;->A()Lmb/y4;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lhb/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expression \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an rvalue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lmb/m3;->a:Lhb/c;

    invoke-direct {v0, p0, v1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method

.method public C()Lmb/s5;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final D()Lmb/s5;
    .locals 3

    invoke-virtual {p0}, Lmb/c1;->C()Lmb/s5;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lhb/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expression \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lmb/m3;->a:Lhb/c;

    invoke-direct {v0, p0, v1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract x(Lmb/g7;)Ljava/lang/Object;
.end method

.method public y()Lmb/n3;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final z()Lmb/n3;
    .locals 3

    invoke-virtual {p0}, Lmb/c1;->y()Lmb/n3;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lhb/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expression \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an lvalue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lmb/m3;->a:Lhb/c;

    invoke-direct {v0, p0, v1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method
