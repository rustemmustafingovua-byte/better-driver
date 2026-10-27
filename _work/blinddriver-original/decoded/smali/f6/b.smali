.class public final Lf6/b;
.super Le6/f;
.source "SourceFile"


# instance fields
.field public final J:Le6/f;

.field public final K:[Le6/y;


# direct methods
.method public constructor <init>(Le6/f;[Le6/y;)V
    .locals 0

    invoke-direct {p0, p1}, Le6/f;-><init>(Le6/f;)V

    iput-object p1, p0, Lf6/b;->J:Le6/f;

    iput-object p2, p0, Lf6/b;->K:[Le6/y;

    return-void
.end method


# virtual methods
.method public final a0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Le6/f;->o:Lb6/l;

    iget-object v1, p0, Le6/f;->t:Lf6/v;

    iget-object v2, p0, Le6/f;->H:Lf6/r;

    invoke-virtual {v1, p1, p2, v2}, Lf6/v;->x(Ls5/k;Lb6/i;Lf6/r;)Lf6/z;

    move-result-object v2

    iget-object v3, p0, Lf6/b;->K:[Le6/y;

    array-length v4, v3

    iget-boolean v5, p0, Le6/f;->C:Z

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    :goto_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v8

    sget-object v9, Ls5/n;->x:Ls5/n;

    if-eq v8, v9, :cond_8

    if-ge v5, v4, :cond_1

    aget-object v8, v3, v5

    goto :goto_1

    :cond_1
    move-object v8, v6

    :goto_1
    if-nez v8, :cond_2

    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_2

    :cond_2
    iget-object v9, v8, Le6/y;->n:Lb6/i0;

    if-eqz v7, :cond_3

    :try_start_0
    invoke-virtual {v8, p1, p2, v7}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object v0, v9, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v0, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v6

    :cond_3
    iget-object v9, v9, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lf6/v;->i(Ljava/lang/String;)Le6/y;

    move-result-object v10

    invoke-virtual {v2, v9}, Lf6/z;->d(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v10, :cond_6

    invoke-virtual {v10, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :try_start_1
    invoke-virtual {v1, p2, v2}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1, v7}, Ls5/k;->d(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, v0, Lb6/l;->o:Ljava/lang/Class;

    if-ne v8, v9, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7}, Lu6/h;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot support implicit polymorphic deserialization for POJOs-as-Arrays style: nominal type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", actual type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v6

    :catch_1
    move-exception p1

    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0, v9, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v6

    :cond_6
    invoke-virtual {v8, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lf6/z;->c(Le6/y;Ljava/lang/Object;)V

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    if-nez v7, :cond_9

    :try_start_2
    invoke-virtual {v1, p2, v2}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p1

    invoke-virtual {p0, p2, p1}, Le6/f;->w0(Lb6/i;Ljava/lang/Exception;)V

    throw v6

    :cond_9
    return-object v7
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2
    iget-boolean v0, p0, Le6/f;->v:Z

    const-string v2, "Unexpected JSON values; expected at most %d properties (in JSON Array)"

    iget-boolean v3, p0, Le6/f;->B:Z

    const/4 v4, 0x0

    iget-object v5, p0, Lf6/b;->K:[Le6/y;

    iget-object v6, p0, Le6/f;->q:Le6/c0;

    if-nez v0, :cond_8

    .line 3
    iget-boolean v0, p0, Le6/f;->u:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Le6/f;->j0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {v6, p2}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Ls5/k;->d(Ljava/lang/Object;)V

    .line 7
    iget-object v6, p0, Le6/f;->x:[Lf6/f0;

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {p0, p2, v0}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-boolean v6, p0, Le6/f;->C:Z

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    :cond_2
    array-length v7, v5

    .line 12
    :goto_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v6

    sget-object v8, Ls5/n;->x:Ls5/n;

    if-ne v6, v8, :cond_3

    goto :goto_2

    :cond_3
    if-ne v4, v7, :cond_6

    if-nez v3, :cond_5

    .line 13
    sget-object v3, Lb6/j;->r:Lb6/j;

    invoke-virtual {p2, v3}, Lb6/i;->n0(Lb6/j;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 15
    invoke-virtual {p2, p0, v8, v2, p1}, Lb6/i;->A0(Lb6/n;Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 16
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    .line 17
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p0

    sget-object p2, Ls5/n;->x:Ls5/n;

    if-ne p0, p2, :cond_5

    :goto_2
    return-object v0

    .line 18
    :cond_6
    aget-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    if-eqz v6, :cond_7

    .line 19
    :try_start_0
    invoke-virtual {v6, p1, p2, v0}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    iget-object v2, v6, Le6/y;->n:Lb6/i0;

    .line 21
    iget-object v2, v2, Lb6/i0;->l:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p1, v0, v2, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v1

    .line 23
    :cond_7
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_0

    .line 24
    :cond_8
    invoke-virtual {v6, p2}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ls5/k;->d(Ljava/lang/Object;)V

    .line 26
    array-length v6, v5

    .line 27
    :goto_3
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v7

    sget-object v8, Ls5/n;->x:Ls5/n;

    if-ne v7, v8, :cond_9

    goto :goto_5

    :cond_9
    if-ne v4, v6, :cond_c

    if-nez v3, :cond_b

    .line 28
    sget-object v3, Lb6/j;->r:Lb6/j;

    invoke-virtual {p2, v3}, Lb6/i;->n0(Lb6/j;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_4

    .line 29
    :cond_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 30
    invoke-virtual {p2, p0, v8, v2, p1}, Lb6/i;->A0(Lb6/n;Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 31
    :cond_b
    :goto_4
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    .line 32
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p0

    sget-object p2, Ls5/n;->x:Ls5/n;

    if-ne p0, p2, :cond_b

    :goto_5
    return-object v0

    .line 33
    :cond_c
    aget-object v7, v5, v4

    if-eqz v7, :cond_d

    .line 34
    :try_start_1
    invoke-virtual {v7, p1, p2, v0}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    .line 35
    iget-object v2, v7, Le6/y;->n:Lb6/i0;

    .line 36
    iget-object v2, v2, Lb6/i0;->l:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1, v0, v2, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v1

    .line 38
    :cond_d
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 39
    :cond_e
    invoke-virtual {p0, p1, p2}, Lf6/b;->x0(Ls5/k;Lb6/i;)V

    throw v1
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 40
    invoke-virtual {p1, p3}, Ls5/k;->d(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 42
    iget-object v0, p0, Le6/f;->x:[Lf6/f0;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p2, p3}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lf6/b;->K:[Le6/y;

    array-length v2, v0

    const/4 v3, 0x0

    .line 45
    :goto_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v4

    sget-object v5, Ls5/n;->x:Ls5/n;

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v3, v2, :cond_4

    .line 46
    iget-boolean v0, p0, Le6/f;->B:Z

    if-nez v0, :cond_3

    sget-object v0, Lb6/j;->r:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 47
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 48
    const-string p3, "Unexpected JSON values; expected at most %d properties (in JSON Array)"

    invoke-virtual {p2, p0, v5, p3, p1}, Lb6/i;->A0(Lb6/n;Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 49
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    .line 50
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p0

    sget-object p2, Ls5/n;->x:Ls5/n;

    if-ne p0, p2, :cond_3

    :goto_2
    return-object p3

    .line 51
    :cond_4
    aget-object v4, v0, v3

    if-eqz v4, :cond_5

    .line 52
    :try_start_0
    invoke-virtual {v4, p1, p2, p3}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 53
    iget-object v0, v4, Le6/y;->n:Lb6/i0;

    .line 54
    iget-object v0, v0, Lb6/i0;->l:Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p1, p3, v0, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    throw v1

    .line 56
    :cond_5
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_6
    invoke-virtual {p0, p1, p2}, Lf6/b;->x0(Ls5/k;Lb6/i;)V

    throw v1
.end method

.method public final e0()Le6/f;
    .locals 0

    return-object p0
.end method

.method public final r0(Lf6/c;)Le6/f;
    .locals 2

    new-instance v0, Lf6/b;

    iget-object v1, p0, Lf6/b;->J:Le6/f;

    invoke-virtual {v1, p1}, Le6/f;->r0(Lf6/c;)Le6/f;

    move-result-object p1

    iget-object p0, p0, Lf6/b;->K:[Le6/y;

    invoke-direct {v0, p1, p0}, Lf6/b;-><init>(Le6/f;[Le6/y;)V

    return-object v0
.end method

.method public final s0(Ljava/util/Set;Ljava/util/Set;)Le6/f;
    .locals 2

    new-instance v0, Lf6/b;

    iget-object v1, p0, Lf6/b;->J:Le6/f;

    invoke-virtual {v1, p1, p2}, Le6/f;->s0(Ljava/util/Set;Ljava/util/Set;)Le6/f;

    move-result-object p1

    iget-object p0, p0, Lf6/b;->K:[Le6/y;

    invoke-direct {v0, p1, p0}, Lf6/b;-><init>(Le6/f;[Le6/y;)V

    return-object v0
.end method

.method public final t0()Le6/f;
    .locals 2

    new-instance v0, Lf6/b;

    iget-object v1, p0, Lf6/b;->J:Le6/f;

    invoke-virtual {v1}, Le6/f;->t0()Le6/f;

    move-result-object v1

    iget-object p0, p0, Lf6/b;->K:[Le6/y;

    invoke-direct {v0, v1, p0}, Lf6/b;-><init>(Le6/f;[Le6/y;)V

    return-object v0
.end method

.method public final u0(Lf6/r;)Le6/f;
    .locals 2

    new-instance v0, Lf6/b;

    iget-object v1, p0, Lf6/b;->J:Le6/f;

    invoke-virtual {v1, p1}, Le6/f;->u0(Lf6/r;)Le6/f;

    move-result-object p1

    iget-object p0, p0, Lf6/b;->K:[Le6/y;

    invoke-direct {v0, p1, p0}, Lf6/b;-><init>(Le6/f;[Le6/y;)V

    return-object v0
.end method

.method public final unwrappingDeserializer(Lu6/r;)Lb6/n;
    .locals 0

    iget-object p0, p0, Lf6/b;->J:Le6/f;

    invoke-virtual {p0, p1}, Le6/f;->unwrappingDeserializer(Lu6/r;)Lb6/n;

    move-result-object p0

    return-object p0
.end method

.method public final x0(Ls5/k;Lb6/i;)V
    .locals 6

    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object v1

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v2

    iget-object p0, p0, Le6/f;->o:Lb6/l;

    invoke-static {p0}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v5

    const-string v4, "Cannot deserialize a POJO (of type %s) from non-Array representation (token: %s): type/property designed to be serialized as JSON Array"

    move-object v3, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lb6/i;->g0(Lb6/l;Ls5/n;Ls5/k;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
