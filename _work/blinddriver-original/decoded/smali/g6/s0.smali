.class public final Lg6/s0;
.super Lg6/j;
.source "SourceFile"

# interfaces
.implements Le6/k;


# instance fields
.field public final s:Z

.field public final t:Ljava/lang/Class;

.field public final u:Lb6/n;

.field public final v:Ln6/d;

.field public final w:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb6/l;Lb6/n;Ln6/d;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lg6/j;-><init>(Lb6/l;Le6/r;Ljava/lang/Boolean;)V

    .line 2
    check-cast p1, Lt6/a;

    .line 3
    iget-object v0, p1, Lt6/a;->x:Lb6/l;

    .line 4
    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    .line 5
    iput-object v0, p0, Lg6/s0;->t:Ljava/lang/Class;

    .line 6
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lg6/s0;->s:Z

    .line 7
    iput-object p2, p0, Lg6/s0;->u:Lb6/n;

    .line 8
    iput-object p3, p0, Lg6/s0;->v:Ln6/d;

    .line 9
    iget-object p1, p1, Lt6/a;->y:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lg6/s0;->w:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg6/s0;Lb6/n;Ln6/d;Le6/r;Ljava/lang/Boolean;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p4, p5}, Lg6/j;-><init>(Lg6/j;Le6/r;Ljava/lang/Boolean;)V

    .line 12
    iget-object p4, p1, Lg6/s0;->t:Ljava/lang/Class;

    iput-object p4, p0, Lg6/s0;->t:Ljava/lang/Class;

    .line 13
    iget-boolean p4, p1, Lg6/s0;->s:Z

    iput-boolean p4, p0, Lg6/s0;->s:Z

    .line 14
    iget-object p1, p1, Lg6/s0;->w:[Ljava/lang/Object;

    iput-object p1, p0, Lg6/s0;->w:[Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lg6/s0;->u:Lb6/n;

    .line 16
    iput-object p3, p0, Lg6/s0;->v:Ln6/d;

    return-void
.end method


# virtual methods
.method public final Z()Lb6/n;
    .locals 0

    iget-object p0, p0, Lg6/s0;->u:Lb6/n;

    return-object p0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 8

    iget-object v0, p0, Lg6/j;->o:Lb6/l;

    iget-object v1, v0, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p1, p2, v1}, Lg6/f1;->T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lr5/n;->l:Lr5/n;

    invoke-virtual {v1, v2}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lg6/s0;->u:Lb6/n;

    invoke-static {p1, p2, v1}, Lg6/f1;->S(Lb6/i;Lb6/f;Lb6/n;)Lb6/n;

    move-result-object v2

    invoke-virtual {v0}, Lb6/l;->Q()Lb6/l;

    move-result-object v0

    if-nez v2, :cond_1

    invoke-virtual {p1, v0, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_1
    invoke-virtual {p1, v2, p2, v0}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lg6/s0;->v:Ln6/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ln6/d;->f(Lb6/f;)Ln6/d;

    move-result-object v2

    move-object v5, v2

    goto :goto_4

    :cond_2
    move-object v5, v0

    :goto_4
    invoke-static {p1, p2, v4}, Lg6/f1;->R(Lb6/i;Lb6/f;Lb6/n;)Le6/r;

    move-result-object v6

    iget-object p1, p0, Lg6/j;->r:Ljava/lang/Boolean;

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lg6/j;->p:Le6/r;

    if-ne v6, p1, :cond_3

    if-ne v4, v1, :cond_3

    if-ne v5, v0, :cond_3

    return-object p0

    :cond_3
    new-instance v2, Lg6/s0;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lg6/s0;-><init>(Lg6/s0;Lb6/n;Ln6/d;Le6/r;Ljava/lang/Boolean;)V

    return-object v2
.end method

.method public final b0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lg6/s0;->t:Ljava/lang/Class;

    iget-object v4, p0, Lg6/j;->r:Ljava/lang/Boolean;

    if-eq v4, v0, :cond_4

    if-nez v4, :cond_0

    sget-object v0, Lb6/j;->E:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Ljava/lang/Byte;

    if-ne v3, v0, :cond_2

    iget-object p0, p2, Lb6/i;->q:Lb6/h;

    iget-object p0, p0, Ld6/m;->m:Ld6/a;

    iget-object p0, p0, Ld6/a;->s:Ls5/a;

    invoke-virtual {p1, p0}, Ls5/k;->J(Ls5/a;)[B

    move-result-object p0

    array-length p1, p0

    new-array p1, p1, [Ljava/lang/Byte;

    array-length p2, p0

    :goto_0
    if-ge v2, p2, :cond_1

    aget-byte v0, p0, v2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lg6/f1;->s(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lg6/j;->o:Lb6/l;

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v1

    :cond_4
    :goto_1
    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lg6/j;->q:Z

    if-eqz v0, :cond_5

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_5
    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    iget-object v6, p0, Lg6/f1;->l:Ljava/lang/Class;

    sget-object v7, Lt6/f;->l:Lt6/f;

    if-eqz v1, :cond_6

    const/16 v0, 0xa

    invoke-virtual {p2, v7, v6, v0}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    if-eq v0, v4, :cond_7

    invoke-virtual {p0, p2, v0, v6}, Lg6/f1;->r(Lb6/i;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_6
    invoke-static {v0}, Lg6/f1;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, v7, v6}, Lb6/i;->S(Lt6/f;Ljava/lang/Class;)I

    move-result v0

    if-eq v0, v4, :cond_7

    invoke-virtual {p0, p2, v0, v6}, Lg6/f1;->r(Lb6/i;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_7
    iget-object v0, p0, Lg6/s0;->u:Lb6/n;

    iget-object v1, p0, Lg6/s0;->v:Ln6/d;

    if-nez v1, :cond_8

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    move-object v1, p1

    goto :goto_3

    :cond_8
    invoke-virtual {v0, p1, p2, v1}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_9
    :goto_3
    if-nez v1, :cond_a

    iget-object p1, p0, Lg6/j;->p:Le6/r;

    invoke-interface {p1, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    if-eqz v5, :cond_a

    :goto_4
    iget-object p0, p0, Lg6/s0;->w:[Ljava/lang/Object;

    return-object p0

    :cond_a
    iget-boolean p0, p0, Lg6/s0;->s:Z

    if-eqz p0, :cond_b

    new-array p0, v4, [Ljava/lang/Object;

    goto :goto_5

    :cond_b
    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    :goto_5
    aput-object v1, p0, v2

    return-object p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lg6/s0;->b0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lb6/i;->q0()Lf6/v;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lf6/v;->l()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v4

    sget-object v5, Ls5/n;->x:Ls5/n;

    if-eq v4, v5, :cond_6

    .line 6
    sget-object v5, Ls5/n;->F:Ls5/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v6, p0, Lg6/j;->q:Z

    if-ne v4, v5, :cond_2

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 7
    :cond_2
    :try_start_1
    iget-object v4, p0, Lg6/s0;->u:Lb6/n;

    iget-object v5, p0, Lg6/s0;->v:Ln6/d;

    if-nez v5, :cond_3

    .line 8
    invoke-virtual {v4, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v4, p1, p2, v5}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_4

    .line 10
    iget-object v4, p0, Lg6/j;->p:Le6/r;

    invoke-interface {v4, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    if-eqz v6, :cond_4

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    .line 11
    :cond_4
    array-length v5, v1

    if-lt v3, v5, :cond_5

    .line 12
    invoke-virtual {v0, v1}, Lf6/v;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v2

    :cond_5
    add-int/lit8 v5, v3, 0x1

    .line 13
    :try_start_2
    aput-object v4, v1, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v3, v5

    goto :goto_0

    :catch_1
    move-exception p0

    move v3, v5

    goto :goto_3

    .line 14
    :cond_6
    iget-boolean p1, p0, Lg6/s0;->s:Z

    if-eqz p1, :cond_7

    .line 15
    iget p0, v0, Lf6/v;->a:I

    add-int/2addr p0, v3

    .line 16
    new-array p1, p0, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, p0, v3, p1, v1}, Lf6/v;->a(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v0}, Lf6/v;->b()V

    goto :goto_2

    .line 19
    :cond_7
    iget-object p0, p0, Lg6/s0;->t:Ljava/lang/Class;

    invoke-virtual {v0, v1, v3, p0}, Lf6/v;->g([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 20
    :goto_2
    invoke-virtual {p2, v0}, Lb6/i;->C0(Lf6/v;)V

    return-object p1

    .line 21
    :goto_3
    iget p1, v0, Lf6/v;->a:I

    add-int/2addr p1, v3

    .line 22
    invoke-static {p0, v1, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 23
    check-cast p3, [Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 25
    invoke-virtual {p0, p1, p2}, Lg6/s0;->b0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    return-object p3

    .line 26
    :cond_0
    array-length p1, p3

    .line 27
    array-length p2, p0

    add-int/2addr p2, p1

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .line 28
    array-length p3, p0

    invoke-static {p0, v1, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 29
    :cond_1
    invoke-virtual {p2}, Lb6/i;->q0()Lf6/v;

    move-result-object v0

    .line 30
    array-length v2, p3

    .line 31
    invoke-virtual {v0, v2, p3}, Lf6/v;->m(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 32
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v3

    sget-object v4, Ls5/n;->x:Ls5/n;

    if-eq v3, v4, :cond_7

    .line 33
    sget-object v4, Ls5/n;->F:Ls5/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v5, p0, Lg6/j;->q:Z

    if-ne v3, v4, :cond_3

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 34
    :cond_3
    :try_start_1
    iget-object v3, p0, Lg6/s0;->u:Lb6/n;

    iget-object v4, p0, Lg6/s0;->v:Ln6/d;

    if-nez v4, :cond_4

    .line 35
    invoke-virtual {v3, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 36
    :cond_4
    invoke-virtual {v3, p1, p2, v4}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_5

    .line 37
    iget-object v3, p0, Lg6/j;->p:Le6/r;

    invoke-interface {v3, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    if-eqz v5, :cond_5

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    .line 38
    :cond_5
    array-length v4, p3

    if-lt v2, v4, :cond_6

    .line 39
    invoke-virtual {v0, p3}, Lf6/v;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v1

    :cond_6
    add-int/lit8 v4, v2, 0x1

    .line 40
    :try_start_2
    aput-object v3, p3, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v4

    goto :goto_0

    :catch_1
    move-exception p0

    move v2, v4

    goto :goto_3

    .line 41
    :cond_7
    iget-boolean p1, p0, Lg6/s0;->s:Z

    if-eqz p1, :cond_8

    .line 42
    iget p0, v0, Lf6/v;->a:I

    add-int/2addr p0, v2

    .line 43
    new-array p1, p0, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v0, p0, v2, p1, p3}, Lf6/v;->a(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v0}, Lf6/v;->b()V

    goto :goto_2

    .line 46
    :cond_8
    iget-object p0, p0, Lg6/s0;->t:Ljava/lang/Class;

    invoke-virtual {v0, p3, v2, p0}, Lf6/v;->g([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 47
    :goto_2
    invoke-virtual {p2, v0}, Lb6/i;->C0(Lf6/v;)V

    return-object p1

    .line 48
    :goto_3
    iget p1, v0, Lf6/v;->a:I

    add-int/2addr p1, v2

    .line 49
    invoke-static {p0, p3, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public final getEmptyAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->m:Lu6/a;

    return-object p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg6/s0;->w:[Ljava/lang/Object;

    return-object p0
.end method

.method public final isCachable()Z
    .locals 1

    iget-object v0, p0, Lg6/s0;->u:Lb6/n;

    if-nez v0, :cond_0

    iget-object p0, p0, Lg6/s0;->v:Ln6/d;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->l:Lt6/f;

    return-object p0
.end method
