.class public final Lt6/j;
.super Lt6/d;
.source "SourceFile"


# instance fields
.field public x:Lb6/l;


# virtual methods
.method public final P()Lt6/o;
    .locals 1

    iget-object v0, p0, Lt6/j;->x:Lb6/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb6/l;->P()Lt6/o;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lt6/l;->v:Lt6/o;

    return-object p0
.end method

.method public final R(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lt6/j;->x:Lb6/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lb6/l;->R(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final S(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lt6/j;->x:Lb6/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lb6/l;->R(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final V()Lb6/l;
    .locals 1

    iget-object v0, p0, Lt6/j;->x:Lb6/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb6/l;->V()Lb6/l;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lt6/l;->t:Lb6/l;

    return-object p0
.end method

.method public final c0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h0(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)Lb6/l;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i0(Lb6/l;)Lb6/l;
    .locals 0

    return-object p0
.end method

.method public final j0(Ljava/lang/Object;)Lb6/l;
    .locals 0

    return-object p0
.end method

.method public final k0(Lb6/n;)Lb6/l;
    .locals 0

    return-object p0
.end method

.method public final m0()Lb6/l;
    .locals 0

    return-object p0
.end method

.method public final n0(Ljava/lang/Object;)Lb6/l;
    .locals 0

    return-object p0
.end method

.method public final o0(Ljava/lang/Object;)Lb6/l;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[recursive type; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt6/j;->x:Lb6/l;

    if-nez p0, :cond_0

    const-string p0, "UNRESOLVED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
