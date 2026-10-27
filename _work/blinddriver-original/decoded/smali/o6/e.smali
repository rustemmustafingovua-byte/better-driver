.class public final Lo6/e;
.super Lo6/a;
.source "SourceFile"


# virtual methods
.method public final f(Lb6/f;)Ln6/d;
    .locals 2

    iget-object v0, p0, Lo6/a;->n:Lb6/f;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo6/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lo6/a;-><init>(Lo6/a;Lb6/f;I)V

    return-object v0
.end method

.method public final h()Lr5/s0;
    .locals 0

    sget-object p0, Lr5/s0;->o:Lr5/s0;

    return-object p0
.end method
