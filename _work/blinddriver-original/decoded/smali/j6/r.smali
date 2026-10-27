.class public final Lj6/r;
.super Lj6/s;
.source "SourceFile"


# instance fields
.field public m:Ljava/lang/Class;

.field public n:Ljava/lang/annotation/Annotation;


# virtual methods
.method public final a(Ljava/lang/annotation/Annotation;)Lj6/s;
    .locals 3

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lj6/r;->m:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    iput-object p1, p0, Lj6/r;->n:Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_0
    new-instance v2, Lj6/p;

    iget-object p0, p0, Lj6/r;->n:Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v1, p0, v0, p1}, Lj6/p;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v2
.end method

.method public final b()Lb0/l1;
    .locals 3

    iget-object v0, p0, Lj6/r;->m:Ljava/lang/Class;

    iget-object p0, p0, Lj6/r;->n:Ljava/lang/annotation/Annotation;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lb0/l1;

    const/16 v0, 0x15

    invoke-direct {p0, v0, v1}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final c()Lu6/b;
    .locals 2

    new-instance v0, La6/n;

    iget-object v1, p0, Lj6/r;->m:Ljava/lang/Class;

    iget-object p0, p0, Lj6/r;->n:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, p0}, La6/n;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public final e(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    iget-object p0, p0, Lj6/r;->m:Ljava/lang/Class;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
