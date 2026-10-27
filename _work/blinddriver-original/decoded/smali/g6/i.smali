.class public Lg6/i;
.super Lg6/j;
.source "SourceFile"

# interfaces
.implements Le6/k;


# instance fields
.field public final s:Lb6/n;

.field public final t:Ln6/d;

.field public final u:Le6/c0;

.field public final v:Lb6/n;


# direct methods
.method public constructor <init>(Lb6/l;Lb6/n;Ln6/d;Le6/c0;Lb6/n;Le6/r;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p6, p7}, Lg6/j;-><init>(Lb6/l;Le6/r;Ljava/lang/Boolean;)V

    .line 3
    iput-object p2, p0, Lg6/i;->s:Lb6/n;

    .line 4
    iput-object p3, p0, Lg6/i;->t:Ln6/d;

    .line 5
    iput-object p4, p0, Lg6/i;->u:Le6/c0;

    .line 6
    iput-object p5, p0, Lg6/i;->v:Lb6/n;

    return-void
.end method

.method public constructor <init>(Lt6/c;Lb6/n;Ln6/d;Le6/c0;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lg6/i;-><init>(Lb6/l;Lb6/n;Ln6/d;Le6/c0;Lb6/n;Le6/r;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final U()Le6/c0;
    .locals 0

    iget-object p0, p0, Lg6/i;->u:Le6/c0;

    return-object p0
.end method

.method public final Z()Lb6/n;
    .locals 0

    iget-object p0, p0, Lg6/i;->s:Lb6/n;

    return-object p0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 8

    iget-object v0, p0, Lg6/j;->o:Lb6/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lg6/i;->u:Le6/c0;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Le6/c0;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Le6/c0;->D()Lb6/l;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v3, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v2

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    :cond_1
    invoke-virtual {v2}, Le6/c0;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Le6/c0;->A()Lb6/l;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v3, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for \'canCreateUsingArrayDelegate()\', but null for \'getArrayDelegateType()\'"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    :cond_3
    move-object v3, v1

    :goto_1
    const-class v2, Ljava/util/Collection;

    invoke-static {p1, p2, v2}, Lg6/f1;->T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v1, Lr5/n;->l:Lr5/n;

    invoke-virtual {v2, v1}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v1

    :cond_4
    move-object v7, v1

    iget-object v1, p0, Lg6/i;->s:Lb6/n;

    invoke-static {p1, p2, v1}, Lg6/f1;->S(Lb6/i;Lb6/f;Lb6/n;)Lb6/n;

    move-result-object v2

    invoke-virtual {v0}, Lb6/l;->Q()Lb6/l;

    move-result-object v0

    if-nez v2, :cond_5

    invoke-virtual {p1, v0, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v2, p2, v0}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lg6/i;->t:Ln6/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p2}, Ln6/d;->f(Lb6/f;)Ln6/d;

    move-result-object v2

    move-object v5, v2

    goto :goto_4

    :cond_6
    move-object v5, v0

    :goto_4
    invoke-static {p1, p2, v4}, Lg6/f1;->R(Lb6/i;Lb6/f;Lb6/n;)Le6/r;

    move-result-object v6

    iget-object p1, p0, Lg6/j;->r:Ljava/lang/Boolean;

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lg6/j;->p:Le6/r;

    if-ne v6, p1, :cond_7

    iget-object p1, p0, Lg6/i;->v:Lb6/n;

    if-ne v3, p1, :cond_7

    if-ne v4, v1, :cond_7

    if-eq v5, v0, :cond_8

    :cond_7
    move-object v2, p0

    goto :goto_5

    :cond_8
    return-object p0

    :goto_5
    invoke-virtual/range {v2 .. v7}, Lg6/i;->f0(Lb6/n;Lb6/n;Ln6/d;Le6/r;Ljava/lang/Boolean;)Lg6/i;

    move-result-object p0

    return-object p0
.end method

.method public b0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7

    invoke-virtual {p1, p3}, Ls5/k;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lg6/i;->s:Lb6/n;

    invoke-virtual {v0}, Lb6/n;->getObjectIdReader()Lf6/r;

    move-result-object v1

    iget-object v2, p0, Lg6/i;->t:Ln6/d;

    iget-object v3, p0, Lg6/j;->p:Le6/r;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lg6/j;->q:Z

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lg6/i;->e0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p3}, Ls5/k;->d(Ljava/lang/Object;)V

    new-instance v1, Lg5/m;

    iget-object p0, p0, Lg6/j;->o:Lb6/l;

    invoke-virtual {p0}, Lb6/l;->Q()Lb6/l;

    move-result-object p0

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-direct {v1, p0, p3}, Lg5/m;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p0

    sget-object v6, Ls5/n;->x:Ls5/n;

    if-eq p0, v6, :cond_e

    :try_start_0
    sget-object v6, Ls5/n;->F:Ls5/n;

    if-ne p0, v6, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v4

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1, p2, v2}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_4

    invoke-interface {v3, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    if-eqz v5, :cond_4

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_4
    invoke-virtual {v1, p0}, Lg5/m;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Le6/z; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    if-eqz p2, :cond_6

    sget-object p1, Lb6/j;->D:Lb6/j;

    invoke-virtual {p2, p1}, Lb6/i;->n0(Lb6/j;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p0}, Lu6/h;->E(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p0, p3, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0

    :goto_4
    new-instance p1, Lg6/h;

    iget-object p2, v1, Lg5/m;->m:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Class;

    invoke-direct {p1, v1, p0, p2}, Lg6/h;-><init>(Lg5/m;Le6/z;Ljava/lang/Class;)V

    iget-object p0, v1, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    throw v4

    :cond_7
    :goto_5
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    sget-object v6, Ls5/n;->x:Ls5/n;

    if-eq v1, v6, :cond_e

    :try_start_1
    sget-object v6, Ls5/n;->F:Ls5/n;

    if-ne v1, v6, :cond_9

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    move-object v1, v4

    goto :goto_6

    :cond_9
    if-nez v2, :cond_a

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_a
    invoke-virtual {v0, p1, p2, v2}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_b

    invoke-interface {v3, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {p0, p1, p2, p3}, Lg6/i;->c0(Ls5/k;Lb6/i;Ljava/util/Collection;)V

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_7

    :cond_b
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :goto_7
    if-eqz p2, :cond_d

    sget-object p1, Lb6/j;->D:Lb6/j;

    invoke-virtual {p2, p1}, Lb6/i;->n0(Lb6/j;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {p0}, Lu6/h;->E(Ljava/lang/Throwable;)V

    :cond_d
    :goto_8
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p0, p3, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0

    :cond_e
    return-object p3
.end method

.method public final c0(Ls5/k;Lb6/i;Ljava/util/Collection;)V
    .locals 7

    iget-boolean v0, p0, Lg6/j;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object v3, Ls5/n;->F:Ls5/n;

    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p3

    invoke-static {p3}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v6

    iget-object v2, p0, Lg6/f1;->m:Lb6/l;

    const-string v5, "`java.util.Collection` of type %s does not accept `null` values"

    move-object v4, p1

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lb6/i;->g0(Lb6/l;Ls5/n;Ls5/k;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public d0(Lb6/i;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lg6/i;->u:Le6/c0;

    invoke-virtual {p0, p1}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 5

    .line 5
    iget-object v0, p0, Lg6/i;->v:Lb6/n;

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lg6/i;->u:Le6/c0;

    .line 7
    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p2, p1}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, p2}, Lg6/i;->d0(Lb6/i;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lg6/i;->b0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    sget-object v3, Lt6/f;->m:Lt6/f;

    iget-object v4, p0, Lg6/f1;->l:Ljava/lang/Class;

    if-eqz v1, :cond_2

    const/16 v0, 0xa

    .line 14
    invoke-virtual {p2, v3, v4, v0}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    .line 15
    invoke-virtual {p0, p2, v0, v4}, Lg6/f1;->r(Lb6/i;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    .line 16
    :cond_2
    invoke-static {v0}, Lg6/f1;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p2, v3, v4}, Lb6/i;->S(Lt6/f;Ljava/lang/Class;)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 18
    invoke-virtual {p0, p2, v0, v4}, Lg6/f1;->r(Lb6/i;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    .line 19
    :cond_3
    invoke-virtual {p0, p2}, Lg6/i;->d0(Lb6/i;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lg6/i;->e0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 20
    :cond_4
    invoke-virtual {p0, p2}, Lg6/i;->d0(Lb6/i;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lg6/i;->e0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p3, Ljava/util/Collection;

    .line 2
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lg6/i;->b0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lg6/i;->e0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e0(Ls5/k;Lb6/i;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iget-object v2, p0, Lg6/j;->r:Ljava/lang/Boolean;

    if-eq v2, v0, :cond_1

    if-nez v2, :cond_0

    sget-object v0, Lb6/j;->E:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg6/j;->o:Lb6/l;

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v1

    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lg6/j;->q:Z

    if-eqz v0, :cond_4

    return-object p3

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lg6/i;->s:Lb6/n;

    iget-object v1, p0, Lg6/i;->t:Ln6/d;

    if-nez v1, :cond_3

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1, p2, v1}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    iget-object v0, p0, Lg6/j;->p:Le6/r;

    invoke-interface {v0, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lg6/i;->c0(Ls5/k;Lb6/i;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :cond_5
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p3

    :goto_3
    sget-object p1, Lb6/j;->D:Lb6/j;

    invoke-virtual {p2, p1}, Lb6/i;->n0(Lb6/j;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {p0}, Lu6/h;->E(Ljava/lang/Throwable;)V

    :cond_6
    const-class p1, Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-static {p0, p1, p2}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0
.end method

.method public f0(Lb6/n;Lb6/n;Ln6/d;Le6/r;Ljava/lang/Boolean;)Lg6/i;
    .locals 8

    new-instance v0, Lg6/i;

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

.method public final isCachable()Z
    .locals 1

    iget-object v0, p0, Lg6/i;->s:Lb6/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg6/i;->t:Ln6/d;

    if-nez v0, :cond_0

    iget-object p0, p0, Lg6/i;->v:Lb6/n;

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
