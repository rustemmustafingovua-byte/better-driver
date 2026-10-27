.class public final Lg6/p1;
.super Lg6/j;
.source "SourceFile"

# interfaces
.implements Le6/k;


# instance fields
.field public final s:Lb6/n;

.field public final t:Le6/c0;

.field public final u:Lb6/n;


# direct methods
.method public constructor <init>(Lb6/l;Le6/c0;Lb6/n;Lb6/n;Le6/r;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p5, p6}, Lg6/j;-><init>(Lb6/l;Le6/r;Ljava/lang/Boolean;)V

    iput-object p4, p0, Lg6/p1;->s:Lb6/n;

    iput-object p2, p0, Lg6/p1;->t:Le6/c0;

    iput-object p3, p0, Lg6/p1;->u:Lb6/n;

    return-void
.end method

.method public static b0(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/HashSet;

    if-ne v0, v1, :cond_1

    check-cast p0, Ljava/util/HashSet;

    return-object p0

    :cond_1
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method


# virtual methods
.method public final U()Le6/c0;
    .locals 0

    iget-object p0, p0, Lg6/p1;->t:Le6/c0;

    return-object p0
.end method

.method public final Z()Lb6/n;
    .locals 0

    iget-object p0, p0, Lg6/p1;->s:Lb6/n;

    return-object p0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lg6/p1;->t:Le6/c0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Le6/c0;->z()Lj6/n;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Le6/c0;->A()Lb6/l;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v1

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Le6/c0;->C()Lj6/n;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Le6/c0;->D()Lb6/l;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v5, v0

    :goto_1
    iget-object v1, p0, Lg6/j;->o:Lb6/l;

    invoke-virtual {v1}, Lb6/l;->Q()Lb6/l;

    move-result-object v1

    iget-object v2, p0, Lg6/p1;->s:Lb6/n;

    if-nez v2, :cond_2

    invoke-static {p1, p2, v2}, Lg6/f1;->S(Lb6/i;Lb6/f;Lb6/n;)Lb6/n;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v1, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2, p2, v1}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v3

    :cond_3
    :goto_2
    const-class v1, Ljava/util/Collection;

    invoke-static {p1, p2, v1}, Lg6/f1;->T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v4, Lr5/n;->l:Lr5/n;

    invoke-virtual {v1, v4}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v1

    move-object v8, v1

    goto :goto_3

    :cond_4
    move-object v8, v0

    :goto_3
    invoke-static {p1, p2, v3}, Lg6/f1;->R(Lb6/i;Lb6/f;Lb6/n;)Le6/r;

    move-result-object v7

    invoke-static {v3}, Lu6/h;->v(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v6, v0

    goto :goto_4

    :cond_5
    move-object v6, v3

    :goto_4
    iget-object p1, p0, Lg6/j;->r:Ljava/lang/Boolean;

    invoke-static {p1, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lg6/j;->p:Le6/r;

    if-ne p1, v7, :cond_6

    if-ne v2, v6, :cond_6

    iget-object p1, p0, Lg6/p1;->u:Lb6/n;

    if-ne p1, v5, :cond_6

    return-object p0

    :cond_6
    new-instance v2, Lg6/p1;

    iget-object v3, p0, Lg6/j;->o:Lb6/l;

    iget-object v4, p0, Lg6/p1;->t:Le6/c0;

    invoke-direct/range {v2 .. v8}, Lg6/p1;-><init>(Lb6/l;Le6/c0;Lb6/n;Lb6/n;Le6/r;Ljava/lang/Boolean;)V

    return-object v2
.end method

.method public final c0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8

    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    iget-object v1, p0, Lg6/p1;->s:Lb6/n;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lg6/j;->q:Z

    iget-object v4, p0, Lg6/j;->p:Le6/r;

    if-nez v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p0, Lg6/j;->r:Ljava/lang/Boolean;

    if-eq v5, v0, :cond_2

    if-nez v5, :cond_0

    sget-object v0, Lb6/j;->E:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, p3}, Ls5/k;->q0(Ls5/n;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lg6/f1;->s(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_1
    iget-object p0, p0, Lg6/j;->o:Lb6/l;

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v5, Ls5/n;->F:Ls5/n;

    if-ne v0, v5, :cond_3

    if-eqz v3, :cond_7

    goto/16 :goto_8

    :cond_3
    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    iget-object v5, p0, Lg6/f1;->l:Ljava/lang/Class;

    const/4 v6, 0x1

    sget-object v7, Lt6/f;->m:Lt6/f;

    if-eqz v2, :cond_4

    const/16 v0, 0xa

    invoke-virtual {p2, v7, v5, v0}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    if-eq v0, v6, :cond_5

    invoke-virtual {p0, p2, v0, v5}, Lg6/f1;->r(Lb6/i;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lg6/p1;->b0(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v0}, Lg6/f1;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v7, v5}, Lb6/i;->S(Lt6/f;Ljava/lang/Class;)I

    move-result v0

    if-eq v0, v6, :cond_5

    invoke-virtual {p0, p2, v0, v5}, Lg6/f1;->r(Lb6/i;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lg6/p1;->b0(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez v1, :cond_6

    :try_start_0
    invoke-virtual {p0, p1, p2, v4}, Lg6/f1;->M(Ls5/k;Lb6/i;Le6/r;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v2, p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_6
    invoke-virtual {v1, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v2, :cond_8

    invoke-interface {v4, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_8

    if-eqz v3, :cond_8

    goto/16 :goto_8

    :cond_8
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p0, p3, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0

    :cond_9
    if-eqz v1, :cond_f

    :goto_4
    :try_start_1
    invoke-virtual {p1}, Ls5/k;->y0()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_d

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object p0

    sget-object v0, Ls5/n;->x:Ls5/n;

    if-ne p0, v0, :cond_a

    goto :goto_8

    :cond_a
    sget-object v0, Ls5/n;->F:Ls5/n;

    if-ne p0, v0, :cond_c

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    move-object p0, v2

    goto :goto_5

    :cond_c
    invoke-virtual {v1, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_6

    :cond_d
    invoke-virtual {v1, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_5
    if-nez p0, :cond_e

    invoke-interface {v4, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_e

    if-eqz v3, :cond_e

    goto :goto_4

    :cond_e
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_6
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p0, p3, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0

    :cond_f
    :goto_7
    :try_start_2
    invoke-virtual {p1}, Ls5/k;->y0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catch_2
    move-exception p0

    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v1

    sget-object v2, Ls5/n;->x:Ls5/n;

    if-ne v1, v2, :cond_11

    :goto_8
    return-object p3

    :cond_11
    sget-object v2, Ls5/n;->F:Ls5/n;

    if-ne v1, v2, :cond_12

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_12
    invoke-virtual {p0, p1, p2, v4}, Lg6/f1;->M(Ls5/k;Lb6/i;Le6/r;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    if-nez v0, :cond_14

    invoke-interface {v4, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_14

    if-eqz v3, :cond_14

    goto :goto_7

    :cond_14
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :goto_9
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p0, p3, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 2

    .line 2
    iget-object v0, p0, Lg6/p1;->t:Le6/c0;

    iget-object v1, p0, Lg6/p1;->u:Lb6/n;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p2, p0}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lg6/p1;->b0(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {v0, p2}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg6/p1;->b0(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lg6/p1;->c0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p3, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lg6/p1;->c0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isCachable()Z
    .locals 1

    iget-object v0, p0, Lg6/p1;->s:Lb6/n;

    if-nez v0, :cond_0

    iget-object p0, p0, Lg6/p1;->u:Lb6/n;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->m:Lt6/f;

    return-object p0
.end method
