.class public final Lp6/r;
.super Lp6/s;
.source "SourceFile"


# instance fields
.field public g:Lb6/q;

.field public h:Z


# virtual methods
.method public final c()Ls5/m;
    .locals 0

    iget-object p0, p0, Lp6/s;->d:Lp6/s;

    return-object p0
.end method

.method public final i()Lb6/q;
    .locals 1

    iget-boolean v0, p0, Lp6/r;->h:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lp6/r;->g:Lb6/q;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Ls5/n;
    .locals 2

    iget-boolean v0, p0, Lp6/r;->h:Z

    if-nez v0, :cond_0

    iget v0, p0, Ls5/m;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ls5/m;->b:I

    iput-boolean v1, p0, Lp6/r;->h:Z

    iget-object p0, p0, Lp6/r;->g:Lb6/q;

    invoke-interface {p0}, Ls5/v;->c()Ls5/n;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp6/r;->g:Lb6/q;

    return-object v0
.end method

.method public final k()Lp6/p;
    .locals 2

    new-instance v0, Lp6/p;

    iget-object v1, p0, Lp6/r;->g:Lb6/q;

    invoke-direct {v0, v1, p0}, Lp6/p;-><init>(Lb6/q;Lp6/s;)V

    return-object v0
.end method

.method public final l()Lp6/q;
    .locals 2

    new-instance v0, Lp6/q;

    iget-object v1, p0, Lp6/r;->g:Lb6/q;

    invoke-direct {v0, v1, p0}, Lp6/q;-><init>(Lb6/q;Lp6/s;)V

    return-object v0
.end method
