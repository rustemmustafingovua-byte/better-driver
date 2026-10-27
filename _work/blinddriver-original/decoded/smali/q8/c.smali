.class public final Lq8/c;
.super Lq8/g;
.source "SourceFile"


# virtual methods
.method public final a(Ljava/lang/Object;Lp8/b;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object p0, p0, Lq8/g;->b:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lq8/d;

    invoke-virtual {v3, p1, p2}, Lq8/d;->a(Ljava/lang/Object;Lp8/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    sget-object v4, Lq8/a;->n:Lq8/a;

    const/16 v5, 0x1e

    iget-object v0, p0, Lq8/g;->b:Ljava/util/ArrayList;

    const-string v1, " or "

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
