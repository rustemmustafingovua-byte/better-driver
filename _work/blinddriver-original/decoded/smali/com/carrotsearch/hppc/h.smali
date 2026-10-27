.class public abstract Lcom/carrotsearch/hppc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/j1;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lcom/carrotsearch/hppc/k1;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/j;

    add-int/lit8 v3, v1, 0x1

    iget-object v2, v2, Ln5/j;->b:Ljava/lang/Object;

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
