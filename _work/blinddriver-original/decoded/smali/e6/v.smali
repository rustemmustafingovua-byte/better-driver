.class public final Le6/v;
.super Le6/w;
.source "SourceFile"


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Le6/w;->m:Lj6/h;

    check-cast p0, Lj6/i;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h(Lb6/n;)Le6/w;
    .locals 7

    new-instance v0, Le6/v;

    iget-object v4, p0, Le6/w;->r:Lb6/w;

    iget-object v6, p0, Le6/w;->q:Ln6/d;

    iget-object v1, p0, Le6/w;->l:Lb6/e;

    iget-object v2, p0, Le6/w;->m:Lj6/h;

    iget-object v3, p0, Le6/w;->o:Lb6/l;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Le6/w;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;)V

    return-object v0
.end method
