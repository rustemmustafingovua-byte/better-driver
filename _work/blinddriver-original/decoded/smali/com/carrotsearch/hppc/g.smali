.class public abstract Lcom/carrotsearch/hppc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/u0;


# virtual methods
.method public toArray()[J
    .locals 6

    invoke-interface {p0}, Lcom/carrotsearch/hppc/v0;->size()I

    move-result v0

    new-array v0, v0, [J

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/f;

    add-int/lit8 v3, v1, 0x1

    iget-wide v4, v2, Ln5/f;->b:J

    aput-wide v4, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g;->toArray()[J

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
