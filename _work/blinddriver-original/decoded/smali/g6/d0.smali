.class public final Lg6/d0;
.super Lg6/j;
.source "SourceFile"

# interfaces
.implements Le6/k;


# instance fields
.field public final s:Lb6/w;

.field public final t:Lb6/n;

.field public final u:Ln6/d;


# direct methods
.method public constructor <init>(Lb6/l;Lb6/w;Lb6/n;Ln6/d;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lg6/j;-><init>(Lb6/l;Le6/r;Ljava/lang/Boolean;)V

    .line 2
    move-object v0, p1

    check-cast v0, Lt6/l;

    .line 3
    iget-object v0, v0, Lt6/l;->v:Lt6/o;

    .line 4
    iget-object v0, v0, Lt6/o;->m:[Lb6/l;

    .line 5
    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6
    iput-object p2, p0, Lg6/d0;->s:Lb6/w;

    .line 7
    iput-object p3, p0, Lg6/d0;->t:Lb6/n;

    .line 8
    iput-object p4, p0, Lg6/d0;->u:Ln6/d;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Missing generic type information for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lg6/d0;Lb6/w;Lb6/n;Ln6/d;)V
    .locals 2

    .line 10
    iget-object v0, p1, Lg6/j;->p:Le6/r;

    iget-object v1, p1, Lg6/j;->r:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0, v1}, Lg6/j;-><init>(Lg6/j;Le6/r;Ljava/lang/Boolean;)V

    .line 11
    iput-object p2, p0, Lg6/d0;->s:Lb6/w;

    .line 12
    iput-object p3, p0, Lg6/d0;->t:Lb6/n;

    .line 13
    iput-object p4, p0, Lg6/d0;->u:Ln6/d;

    return-void
.end method


# virtual methods
.method public final Z()Lb6/n;
    .locals 0

    iget-object p0, p0, Lg6/d0;->t:Lb6/n;

    return-object p0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 6

    iget-object v0, p0, Lg6/j;->o:Lb6/l;

    iget-object v1, p0, Lg6/d0;->s:Lb6/w;

    if-nez v1, :cond_0

    move-object v2, v0

    check-cast v2, Lt6/l;

    iget-object v2, v2, Lt6/l;->v:Lt6/o;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lt6/o;->d(I)Lb6/l;

    move-result-object v2

    invoke-virtual {p1, v2}, Lb6/i;->V(Lb6/l;)Lb6/w;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lg6/d0;->t:Lb6/n;

    invoke-static {p1, p2, v3}, Lg6/f1;->S(Lb6/i;Lb6/f;Lb6/n;)Lb6/n;

    move-result-object v4

    check-cast v0, Lt6/l;

    iget-object v0, v0, Lt6/l;->v:Lt6/o;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lt6/o;->d(I)Lb6/l;

    move-result-object v0

    if-nez v4, :cond_1

    invoke-virtual {p1, v0, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4, p2, v0}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lg6/d0;->u:Ln6/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ln6/d;->f(Lb6/f;)Ln6/d;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v0

    :goto_2
    if-ne v1, v2, :cond_3

    if-ne v3, p1, :cond_3

    if-ne v0, p2, :cond_3

    return-object p0

    :cond_3
    new-instance v0, Lg6/d0;

    invoke-direct {v0, p0, v2, p1, p2}, Lg6/d0;-><init>(Lg6/d0;Lb6/w;Lb6/n;Ln6/d;)V

    return-object v0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 8

    .line 3
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    .line 4
    sget-object v1, Ls5/n;->u:Ls5/n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Ls5/n;->y:Ls5/n;

    if-eq v0, v1, :cond_2

    sget-object v1, Ls5/n;->v:Ls5/n;

    if-eq v0, v1, :cond_2

    .line 7
    sget-object v1, Ls5/n;->w:Ls5/n;

    if-ne v0, v1, :cond_1

    .line 8
    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v2

    .line 10
    :cond_2
    :goto_0
    sget-object v1, Ls5/n;->y:Ls5/n;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    .line 11
    sget-object v1, Ls5/n;->v:Ls5/n;

    if-ne v0, v1, :cond_3

    .line 12
    const-string p1, "Cannot deserialize a Map.Entry out of empty JSON Object"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, v0}, Lb6/i;->v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 13
    :cond_3
    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    .line 14
    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2

    .line 15
    :cond_4
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v4, p0, Lg6/d0;->s:Lb6/w;

    invoke-virtual {v4, p2, v0}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v5

    .line 18
    :try_start_0
    sget-object v6, Ls5/n;->F:Ls5/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, p0, Lg6/d0;->t:Lb6/n;

    if-ne v5, v6, :cond_5

    .line 19
    :try_start_1
    invoke-virtual {v7, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 20
    :cond_5
    iget-object v5, p0, Lg6/d0;->u:Ln6/d;

    if-nez v5, :cond_6

    .line 21
    :try_start_2
    invoke-virtual {v7, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {v7, p1, p2, v5}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    :goto_1
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v5

    .line 24
    sget-object v6, Ls5/n;->v:Ls5/n;

    if-eq v5, v6, :cond_8

    if-ne v5, v1, :cond_7

    .line 25
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 26
    const-string v0, "Problem binding JSON into Map.Entry: more than one entry in JSON (second field: \'%s\')"

    invoke-virtual {p2, p0, v0, p1}, Lb6/i;->v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 27
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Problem binding JSON into Map.Entry: unexpected content after JSON Object entry: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, v0}, Lb6/i;->v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 28
    :cond_8
    new-instance p0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p0, v4, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 29
    :goto_2
    const-class p1, Ljava/util/Map$Entry;

    invoke-static {p2, p0, p1, v0}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p3, Ljava/util/Map$Entry;

    .line 2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot update Map.Entry values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->d(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->n:Lt6/f;

    return-object p0
.end method
