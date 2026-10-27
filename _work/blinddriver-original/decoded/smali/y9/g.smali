.class public final Ly9/g;
.super Ly9/f;
.source "SourceFile"


# virtual methods
.method public final d(Ly8/h;ILw9/a;)Ly9/e;
    .locals 1

    new-instance v0, Ly9/g;

    iget-object p0, p0, Ly9/f;->o:Lx9/g;

    invoke-direct {v0, p0, p1, p2, p3}, Ly9/f;-><init>(Lx9/g;Ly8/h;ILw9/a;)V

    return-object v0
.end method

.method public final e()Lx9/g;
    .locals 0

    iget-object p0, p0, Ly9/f;->o:Lx9/g;

    return-object p0
.end method

.method public final f(Lx9/h;Ly8/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ly9/f;->o:Lx9/g;

    invoke-interface {p0, p1, p2}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
