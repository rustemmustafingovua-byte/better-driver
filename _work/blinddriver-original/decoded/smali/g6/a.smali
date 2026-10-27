.class public final Lg6/a;
.super Lg6/i;
.source "SourceFile"


# virtual methods
.method public final b0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lg6/i;->b0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    new-instance p0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p3

    invoke-direct {p1, p3, p2, p0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZLjava/util/Collection;)V

    return-object p1
.end method

.method public final d0(Lb6/i;)Ljava/util/Collection;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f0(Lb6/n;Lb6/n;Ln6/d;Le6/r;Ljava/lang/Boolean;)Lg6/i;
    .locals 8

    new-instance v0, Lg6/a;

    iget-object v1, p0, Lg6/j;->o:Lb6/l;

    iget-object v4, p0, Lg6/i;->u:Le6/c0;

    move-object v5, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lg6/i;-><init>(Lb6/l;Lb6/n;Ln6/d;Le6/c0;Lb6/n;Le6/r;Ljava/lang/Boolean;)V

    return-object v0
.end method
