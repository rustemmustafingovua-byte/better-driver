.class public final Lo6/d;
.super Lo6/h;
.source "SourceFile"


# virtual methods
.method public final a(Lb6/f;)Ln6/e;
    .locals 2

    iget-object v0, p0, Lo6/r;->b:Lb6/f;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo6/d;

    iget-object v1, p0, Lo6/r;->a:Lo6/p;

    iget-object p0, p0, Lo6/h;->e:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0}, Lo6/h;-><init>(Lo6/p;Lb6/f;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Lr5/s0;
    .locals 0

    sget-object p0, Lr5/s0;->p:Lr5/s0;

    return-object p0
.end method

.method public final g(Lb6/f;)Lo6/c;
    .locals 2

    iget-object v0, p0, Lo6/r;->b:Lb6/f;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo6/d;

    iget-object v1, p0, Lo6/r;->a:Lo6/p;

    iget-object p0, p0, Lo6/h;->e:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0}, Lo6/h;-><init>(Lo6/p;Lb6/f;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h(Lb6/f;)Lo6/h;
    .locals 2

    iget-object v0, p0, Lo6/r;->b:Lb6/f;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo6/d;

    iget-object v1, p0, Lo6/r;->a:Lo6/p;

    iget-object p0, p0, Lo6/h;->e:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0}, Lo6/h;-><init>(Lo6/p;Lb6/f;Ljava/lang/String;)V

    return-object v0
.end method
