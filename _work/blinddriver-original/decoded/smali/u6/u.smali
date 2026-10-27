.class public final Lu6/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb6/s;


# instance fields
.field public l:Ljava/lang/String;


# virtual methods
.method public final a(Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 2

    iget-object v0, p0, Lu6/u;->l:Ljava/lang/String;

    instance-of v1, v0, Lb6/s;

    if-eqz v1, :cond_0

    check-cast v0, Lb6/s;

    invoke-interface {v0, p1, p2, p3}, Lb6/s;->a(Ls5/g;Lb6/r0;Ln6/e;)V

    return-void

    :cond_0
    instance-of p3, v0, Ls5/q;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lu6/u;->d(Ls5/g;Lb6/r0;)V

    :cond_1
    return-void
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 1

    iget-object p0, p0, Lu6/u;->l:Ljava/lang/String;

    instance-of v0, p0, Lb6/s;

    if-eqz v0, :cond_0

    check-cast p0, Lb6/s;

    invoke-interface {p0, p1, p2}, Lb6/s;->d(Ls5/g;Lb6/r0;)V

    return-void

    :cond_0
    instance-of p2, p0, Ls5/q;

    if-eqz p2, :cond_1

    check-cast p0, Ls5/q;

    invoke-virtual {p1, p0}, Ls5/g;->j0(Ls5/q;)V

    return-void

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ls5/g;->i0(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lu6/u;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lu6/u;

    iget-object p0, p0, Lu6/u;->l:Ljava/lang/String;

    iget-object p1, p1, Lu6/u;->l:Ljava/lang/String;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lu6/u;->l:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lu6/u;->l:Ljava/lang/String;

    invoke-static {p0}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[RawValue of type "

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
