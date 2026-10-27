.class public final Lg6/s1;
.super Le6/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le6/e;Lu6/r;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le6/f;-><init>(Le6/f;Lu6/r;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Le6/f;->v:Z

    return-void
.end method


# virtual methods
.method public final A0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Le6/f;->t:Lf6/v;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Le6/e;->a0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Le6/f;->r:Lb6/n;

    iget-object v1, p0, Le6/f;->q:Le6/c0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Le6/f;->o:Lb6/l;

    invoke-virtual {v0}, Lb6/l;->a0()Z

    move-result v2

    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_16

    invoke-virtual {v1}, Le6/c0;->i()Z

    move-result v2

    invoke-virtual {v1}, Le6/c0;->k()Z

    move-result v5

    if-nez v2, :cond_3

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Throwable needs a default constructor, a single-String-arg constructor; or explicit @JsonCreator"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, p0, p1}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v4

    :cond_3
    :goto_0
    move v5, v3

    move-object v0, v4

    move-object v1, v0

    move-object v6, v1

    :goto_1
    sget-object v7, Ls5/n;->v:Ls5/n;

    invoke-virtual {p1, v7}, Ls5/k;->q0(Ls5/n;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Le6/f;->w:Lf6/c;

    invoke-virtual {v8, v7}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v9

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    if-eqz v9, :cond_8

    iget-object v7, v9, Le6/y;->n:Lb6/i0;

    iget-object v7, v7, Lb6/i0;->l:Ljava/lang/String;

    const-string v10, "cause"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, v7}, Ls5/k;->q0(Ls5/n;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_3

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v9, p1, p2, v0}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    if-nez v1, :cond_6

    iget v1, v8, Lf6/c;->n:I

    add-int/2addr v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    goto :goto_2

    :cond_6
    array-length v7, v1

    if-ne v5, v7, :cond_7

    add-int/lit8 v7, v5, 0x10

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :cond_7
    :goto_2
    add-int/lit8 v7, v5, 0x1

    aput-object v9, v1, v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v9, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v7

    goto/16 :goto_3

    :cond_8
    const-string v8, "message"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p1}, Ls5/k;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v2, v0}, Lg6/s1;->D0(Lb6/i;ZLjava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_3

    :cond_9
    iget-object v9, p0, Le6/f;->z:Ljava/util/Set;

    if-eqz v9, :cond_a

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_3

    :cond_a
    const-string v9, "suppressed"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    sget-object v6, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, v6}, Ls5/k;->q0(Ls5/n;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v6, v4

    goto :goto_3

    :cond_b
    const-class v6, [Ljava/lang/Throwable;

    invoke-virtual {p2, v6}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v6

    invoke-virtual {p2, v6}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Throwable;

    goto :goto_3

    :cond_c
    const-string v9, "localizedMessage"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_3

    :cond_d
    iget-object v9, p0, Le6/f;->y:Le6/w;

    if-eqz v9, :cond_f

    if-nez v0, :cond_e

    invoke-virtual {p0, p2, v2, v4}, Lg6/s1;->D0(Lb6/i;ZLjava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_e
    iget-object v8, p0, Le6/f;->y:Le6/w;

    invoke-virtual {v8, p1, p2, v0, v7}, Le6/w;->d(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_3

    :cond_10
    invoke-virtual {p0, p1, p2, v0, v7}, Le6/f;->o0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    goto/16 :goto_1

    :cond_11
    if-nez v0, :cond_12

    invoke-virtual {p0, p2, v2, v4}, Lg6/s1;->D0(Lb6/i;ZLjava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_12
    if-eqz v1, :cond_13

    move p0, v3

    :goto_4
    if-ge p0, v5, :cond_13

    aget-object p1, v1, p0

    check-cast p1, Le6/y;

    add-int/lit8 p2, p0, 0x1

    aget-object p2, v1, p2

    invoke-virtual {p1, v0, p2}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x2

    goto :goto_4

    :cond_13
    if-eqz v6, :cond_15

    array-length p0, v6

    :goto_5
    if-ge v3, p0, :cond_15

    aget-object p1, v6, v3

    if-eqz p1, :cond_14

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_15
    return-object v0

    :cond_16
    const-string p0, "abstract type (need to add/enable type information?)"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, p0, p1}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v4
.end method

.method public final D0(Lb6/i;ZLjava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Le6/f;->q:Le6/c0;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p3}, Le6/c0;->u(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Le6/c0;->u(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public final unwrappingDeserializer(Lu6/r;)Lb6/n;
    .locals 1

    new-instance v0, Lg6/s1;

    invoke-direct {v0, p0, p1}, Lg6/s1;-><init>(Le6/e;Lu6/r;)V

    return-object v0
.end method
