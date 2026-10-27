.class public final Lg6/c0;
.super Lg6/j;
.source "SourceFile"

# interfaces
.implements Le6/k;
.implements Le6/s;


# instance fields
.field public A:Ljava/util/Set;

.field public B:Ljava/util/Set;

.field public C:La6/n;

.field public final D:Z

.field public final s:Lb6/w;

.field public t:Z

.field public final u:Lb6/n;

.field public final v:Ln6/d;

.field public final w:Le6/c0;

.field public x:Lb6/n;

.field public y:Lf6/v;

.field public final z:Z


# direct methods
.method public constructor <init>(Lg6/c0;Lb6/w;Lb6/n;Ln6/d;Le6/r;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    .line 13
    iget-object v0, p1, Lg6/j;->r:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p5, v0}, Lg6/j;-><init>(Lg6/j;Le6/r;Ljava/lang/Boolean;)V

    .line 14
    iput-object p2, p0, Lg6/c0;->s:Lb6/w;

    .line 15
    iput-object p3, p0, Lg6/c0;->u:Lb6/n;

    .line 16
    iput-object p4, p0, Lg6/c0;->v:Ln6/d;

    .line 17
    iget-object p3, p1, Lg6/c0;->w:Le6/c0;

    iput-object p3, p0, Lg6/c0;->w:Le6/c0;

    .line 18
    iget-object p3, p1, Lg6/c0;->y:Lf6/v;

    iput-object p3, p0, Lg6/c0;->y:Lf6/v;

    .line 19
    iget-object p3, p1, Lg6/c0;->x:Lb6/n;

    iput-object p3, p0, Lg6/c0;->x:Lb6/n;

    .line 20
    iget-boolean p3, p1, Lg6/c0;->z:Z

    iput-boolean p3, p0, Lg6/c0;->z:Z

    .line 21
    iput-object p6, p0, Lg6/c0;->A:Ljava/util/Set;

    .line 22
    iput-object p7, p0, Lg6/c0;->B:Ljava/util/Set;

    .line 23
    invoke-static {p6, p7}, La/a;->f(Ljava/util/Set;Ljava/util/Set;)La6/n;

    move-result-object p3

    iput-object p3, p0, Lg6/c0;->C:La6/n;

    .line 24
    iget-object p3, p0, Lg6/j;->o:Lb6/l;

    invoke-static {p3, p2}, Lg6/c0;->c0(Lb6/l;Lb6/w;)Z

    move-result p2

    iput-boolean p2, p0, Lg6/c0;->t:Z

    .line 25
    iget-boolean p1, p1, Lg6/c0;->D:Z

    iput-boolean p1, p0, Lg6/c0;->D:Z

    return-void
.end method

.method public constructor <init>(Lt6/g;Le6/c0;Lb6/w;Lb6/n;Ln6/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lg6/j;-><init>(Lb6/l;Le6/r;Ljava/lang/Boolean;)V

    .line 2
    iput-object p3, p0, Lg6/c0;->s:Lb6/w;

    .line 3
    iput-object p4, p0, Lg6/c0;->u:Lb6/n;

    .line 4
    iput-object p5, p0, Lg6/c0;->v:Ln6/d;

    .line 5
    iput-object p2, p0, Lg6/c0;->w:Le6/c0;

    .line 6
    invoke-virtual {p2}, Le6/c0;->k()Z

    move-result p2

    iput-boolean p2, p0, Lg6/c0;->z:Z

    .line 7
    iput-object v0, p0, Lg6/c0;->x:Lb6/n;

    .line 8
    iput-object v0, p0, Lg6/c0;->y:Lf6/v;

    .line 9
    invoke-static {p1, p3}, Lg6/c0;->c0(Lb6/l;Lb6/w;)Z

    move-result p2

    iput-boolean p2, p0, Lg6/c0;->t:Z

    .line 10
    iput-object v0, p0, Lg6/c0;->C:La6/n;

    .line 11
    iget-object p1, p1, Lt6/g;->y:Lb6/l;

    .line 12
    const-class p2, Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lg6/c0;->D:Z

    return-void
.end method

.method public static c0(Lb6/l;Lb6/w;)Z
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb6/l;->T()Lb6/l;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_3

    :cond_2
    invoke-static {p1}, Lu6/h;->v(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final U()Le6/c0;
    .locals 0

    iget-object p0, p0, Lg6/c0;->w:Le6/c0;

    return-object p0
.end method

.method public final Z()Lb6/n;
    .locals 0

    iget-object p0, p0, Lg6/c0;->u:Lb6/n;

    return-object p0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 13

    iget-object v0, p1, Lb6/i;->q:Lb6/h;

    iget-object v1, p0, Lg6/j;->o:Lb6/l;

    iget-object v2, p0, Lg6/c0;->s:Lb6/w;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lb6/l;->T()Lb6/l;

    move-result-object v3

    invoke-virtual {p1, v3}, Lb6/i;->V(Lb6/l;)Lb6/w;

    move-result-object v3

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    iget-object v3, p0, Lg6/c0;->u:Lb6/n;

    if-eqz p2, :cond_1

    invoke-static {p1, p2, v3}, Lg6/f1;->S(Lb6/i;Lb6/f;Lb6/n;)Lb6/n;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v1}, Lb6/l;->Q()Lb6/l;

    move-result-object v1

    if-nez v4, :cond_2

    invoke-virtual {p1, v1, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v1

    :goto_2
    move-object v7, v1

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v4, p2, v1}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v1

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lg6/c0;->v:Ln6/d;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Ln6/d;->f(Lb6/f;)Ln6/d;

    move-result-object v4

    move-object v8, v4

    goto :goto_4

    :cond_3
    move-object v8, v1

    :goto_4
    iget-object v4, p0, Lg6/c0;->A:Ljava/util/Set;

    iget-object v5, p0, Lg6/c0;->B:Ljava/util/Set;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v9

    if-eqz v9, :cond_a

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lb6/f;->d()Lj6/h;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v9, v0, v10}, Lb6/d;->N(Ld6/m;Lj6/a;)Lr5/w;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-boolean v12, v11, Lr5/w;->o:Z

    if-eqz v12, :cond_4

    sget-object v11, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_5

    :cond_4
    iget-object v11, v11, Lr5/w;->l:Ljava/util/Set;

    :goto_5
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    :cond_5
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v12, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v4, v12

    :cond_6
    :goto_6
    invoke-virtual {v9, v0, v10}, Lb6/d;->Q(Ld6/m;Lj6/a;)Lr5/c0;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v0, Lr5/c0;->l:Ljava/util/Set;

    if-eqz v0, :cond_a

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    if-nez v5, :cond_7

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_8

    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    move-object v5, v9

    :cond_a
    :goto_8
    move-object v10, v4

    move-object v11, v5

    invoke-static {p1, p2, v7}, Lg6/f1;->R(Lb6/i;Lb6/f;Lb6/n;)Le6/r;

    move-result-object v9

    if-ne v2, v6, :cond_b

    if-ne v3, v7, :cond_b

    if-ne v1, v8, :cond_b

    iget-object p1, p0, Lg6/j;->p:Le6/r;

    if-ne p1, v9, :cond_b

    iget-object p1, p0, Lg6/c0;->A:Ljava/util/Set;

    if-ne p1, v10, :cond_b

    iget-object p1, p0, Lg6/c0;->B:Ljava/util/Set;

    if-ne p1, v11, :cond_b

    return-object p0

    :cond_b
    new-instance v4, Lg6/c0;

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lg6/c0;-><init>(Lg6/c0;Lb6/w;Lb6/n;Ln6/d;Le6/r;Ljava/util/Set;Ljava/util/Set;)V

    return-object v4
.end method

.method public final b(Lb6/i;)V
    .locals 5

    iget-object v0, p1, Lb6/i;->q:Lb6/h;

    iget-object v1, p0, Lg6/c0;->w:Le6/c0;

    invoke-virtual {v1}, Le6/c0;->l()Z

    move-result v2

    iget-object v3, p0, Lg6/j;->o:Lb6/l;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Le6/c0;->D()Lb6/l;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2, v4}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v2

    iput-object v2, p0, Lg6/c0;->x:Lb6/n;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v4

    :cond_1
    invoke-virtual {v1}, Le6/c0;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Le6/c0;->A()Lb6/l;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v2, v4}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v2

    iput-object v2, p0, Lg6/c0;->x:Lb6/n;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for \'canCreateUsingArrayDelegate()\', but null for \'getArrayDelegateType()\'"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v4

    :cond_3
    :goto_0
    invoke-virtual {v1}, Le6/c0;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Le6/c0;->E(Lb6/h;)[Le6/y;

    move-result-object v2

    sget-object v4, Lb6/x;->L:Lb6/x;

    invoke-virtual {v0, v4}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    invoke-static {p1, v1, v2, v0}, Lf6/v;->h(Lb6/i;Le6/c0;[Le6/y;Z)Lf6/v;

    move-result-object p1

    iput-object p1, p0, Lg6/c0;->y:Lf6/v;

    :cond_4
    iget-object p1, p0, Lg6/c0;->s:Lb6/w;

    invoke-static {v3, p1}, Lg6/c0;->c0(Lb6/l;Lb6/w;)Z

    move-result p1

    iput-boolean p1, p0, Lg6/c0;->t:Z

    return-void
.end method

.method public final b0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg6/c0;->u:Lb6/n;

    iget-object p0, p0, Lg6/c0;->v:Ln6/d;

    if-nez p0, :cond_0

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1, p2, p0}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d0(Ls5/k;Lb6/i;Ljava/util/Map;)V
    .locals 11

    iget-object v0, p0, Lg6/c0;->u:Lb6/n;

    invoke-virtual {v0}, Lb6/n;->getObjectIdReader()Lf6/r;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v3, Lg5/m;

    iget-object v4, p0, Lg6/j;->o:Lb6/l;

    invoke-virtual {v4}, Lb6/l;->Q()Lb6/l;

    move-result-object v4

    iget-object v4, v4, Lb6/l;->o:Ljava/lang/Class;

    invoke-direct {v3, v4, p3}, Lg5/m;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v4

    sget-object v5, Ls5/n;->y:Ls5/n;

    if-eq v4, v5, :cond_4

    sget-object p1, Ls5/n;->v:Ls5/n;

    if-ne v4, p1, :cond_3

    goto/16 :goto_c

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v5, v2, p1}, Lb6/i;->A0(Lb6/n;Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_4
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_b

    iget-object v4, p0, Lg6/c0;->s:Lb6/w;

    invoke-virtual {v4, p2, v1}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v4

    iget-object v5, p0, Lg6/c0;->C:La6/n;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v1}, La6/n;->o(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    :cond_5
    :goto_3
    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    goto :goto_9

    :cond_6
    :try_start_0
    sget-object v5, Ls5/n;->F:Ls5/n;
    :try_end_0
    .catch Le6/z; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    iget-boolean v6, p0, Lg6/j;->q:Z

    if-ne v4, v5, :cond_8

    if-eqz v6, :cond_7

    :goto_4
    goto :goto_3

    :cond_7
    move-object v4, v2

    goto :goto_5

    :cond_8
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lg6/c0;->b0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Le6/z; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_5
    if-nez v4, :cond_9

    :try_start_2
    iget-object v4, p0, Lg6/j;->p:Le6/r;

    invoke-interface {v4, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    move-object v10, v4

    goto :goto_6

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v6, p2

    move-object v7, p3

    goto :goto_a

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    move-object v6, p2

    goto :goto_b

    :goto_6
    if-eqz v0, :cond_a

    invoke-virtual {v3, v8, v10}, Lg5/m;->s(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Le6/z; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_a
    :try_start_3
    invoke-interface {p3, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_3
    .catch Le6/z; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v9, :cond_5

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    :try_start_4
    invoke-virtual/range {v5 .. v10}, Lg6/c0;->e0(Lb6/i;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Le6/z; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_7
    move-object p0, v0

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_8
    move-object p1, v0

    goto :goto_b

    :goto_9
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v1

    move-object p0, v5

    move-object p2, v6

    move-object p3, v7

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v6, p2

    move-object v7, p3

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v5, p0

    move-object v6, p2

    goto :goto_8

    :goto_a
    invoke-static {v6, p0, v7, v1}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :goto_b
    invoke-virtual {v5, v6, v3, v8, p1}, Lg6/c0;->f0(Lb6/i;Lg5/m;Ljava/lang/Object;Le6/z;)V

    throw v2

    :cond_b
    :goto_c
    return-void
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 12

    .line 50
    iget-object v0, p0, Lg6/c0;->y:Lf6/v;

    iget-object v7, p0, Lg6/j;->p:Le6/r;

    iget-boolean v8, p0, Lg6/j;->q:Z

    iget-object v1, p0, Lg6/j;->o:Lb6/l;

    const/4 v9, 0x0

    if-eqz v0, :cond_9

    .line 51
    invoke-virtual {v0, p1, p2, v9}, Lf6/v;->x(Ls5/k;Lb6/i;Lf6/r;)Lf6/z;

    move-result-object v3

    .line 52
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 54
    :cond_0
    sget-object v4, Ls5/n;->y:Ls5/n;

    invoke-virtual {p1, v4}, Ls5/k;->q0(Ls5/n;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v9

    :goto_0
    if-eqz v4, :cond_8

    .line 56
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v5

    .line 57
    iget-object v6, p0, Lg6/c0;->C:La6/n;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v4}, La6/n;->o(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 58
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v0, v4}, Lf6/v;->i(Ljava/lang/String;)Le6/y;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 60
    invoke-virtual {v6, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 61
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    .line 62
    :try_start_0
    invoke-virtual {v0, p2, v3}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-virtual {p0, p1, p2, v0}, Lg6/c0;->d0(Ls5/k;Lb6/i;Ljava/util/Map;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 64
    iget-object p1, v1, Lb6/l;->o:Ljava/lang/Class;

    .line 65
    invoke-static {p2, p0, p1, v4}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v9

    .line 66
    :cond_3
    iget-object v6, p0, Lg6/c0;->s:Lb6/w;

    invoke-virtual {v6, p2, v4}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 67
    :try_start_1
    sget-object v10, Ls5/n;->F:Ls5/n;

    if-ne v5, v10, :cond_5

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v9

    goto :goto_1

    .line 68
    :cond_5
    invoke-virtual/range {p0 .. p2}, Lg6/c0;->b0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_6

    .line 69
    invoke-interface {v7, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_6

    if-eqz v8, :cond_6

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 70
    :cond_6
    new-instance v4, Lf6/y;

    iget-object v10, v3, Lf6/z;->h:Lf2/b;

    const/4 v11, 0x0

    invoke-direct {v4, v10, v5, v6, v11}, Lf6/y;-><init>(Lf2/b;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v4, v3, Lf6/z;->h:Lf2/b;

    .line 71
    :cond_7
    :goto_2
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 72
    :goto_3
    iget-object p1, v1, Lb6/l;->o:Ljava/lang/Class;

    .line 73
    invoke-static {p2, p0, p1, v4}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v9

    .line 74
    :cond_8
    :try_start_2
    invoke-virtual {v0, p2, v3}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 75
    iget-object p1, v1, Lb6/l;->o:Ljava/lang/Class;

    .line 76
    invoke-static {p2, p0, p1, v4}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v9

    .line 77
    :cond_9
    iget-object v0, p0, Lg6/c0;->x:Lb6/n;

    iget-object v3, p0, Lg6/c0;->w:Le6/c0;

    if-eqz v0, :cond_a

    .line 78
    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    .line 79
    invoke-virtual {v3, p2, p0}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 80
    :cond_a
    iget-boolean v0, p0, Lg6/c0;->z:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_1b

    .line 81
    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_d

    const/4 v6, 0x2

    if-eq v0, v6, :cond_d

    const/4 v6, 0x3

    if-eq v0, v6, :cond_c

    const/4 v6, 0x5

    if-eq v0, v6, :cond_d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    .line 82
    invoke-virtual/range {p0 .. p2}, Lg6/f1;->s(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 83
    :cond_b
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v9

    .line 84
    :cond_c
    invoke-virtual/range {p0 .. p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 85
    :cond_d
    invoke-virtual {v3, p2}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 86
    iget-boolean v0, p0, Lg6/c0;->t:Z

    if-eqz v0, :cond_1a

    .line 87
    iget-object v0, p0, Lg6/c0;->u:Lb6/n;

    invoke-virtual {v0}, Lb6/n;->getObjectIdReader()Lf6/r;

    move-result-object v0

    if-eqz v0, :cond_e

    move v0, v5

    goto :goto_4

    :cond_e
    move v0, v4

    :goto_4
    if-eqz v0, :cond_f

    .line 88
    new-instance v5, Lg5/m;

    invoke-virtual {v1}, Lb6/l;->Q()Lb6/l;

    move-result-object v1

    .line 89
    iget-object v1, v1, Lb6/l;->o:Ljava/lang/Class;

    .line 90
    invoke-direct {v5, v1, v3}, Lg5/m;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    move-object v10, v5

    goto :goto_5

    :cond_f
    move-object v10, v9

    .line 91
    :goto_5
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 92
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v1

    :goto_6
    move-object v4, v1

    goto :goto_7

    .line 93
    :cond_10
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v1

    .line 94
    sget-object v5, Ls5/n;->v:Ls5/n;

    if-ne v1, v5, :cond_11

    goto/16 :goto_d

    .line 95
    :cond_11
    sget-object v5, Ls5/n;->y:Ls5/n;

    if-ne v1, v5, :cond_19

    .line 96
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :goto_7
    if-eqz v4, :cond_18

    .line 97
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    .line 98
    iget-object v5, p0, Lg6/c0;->C:La6/n;

    if-eqz v5, :cond_12

    invoke-virtual {v5, v4}, La6/n;->o(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 99
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_a

    .line 100
    :cond_12
    :try_start_3
    sget-object v5, Ls5/n;->F:Ls5/n;

    if-ne v1, v5, :cond_14

    if-eqz v8, :cond_13

    goto :goto_a

    :cond_13
    move-object v1, v9

    goto :goto_8

    .line 101
    :cond_14
    invoke-virtual/range {p0 .. p2}, Lg6/c0;->b0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v1

    :goto_8
    if-nez v1, :cond_15

    .line 102
    invoke-interface {v7, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    if-eqz v8, :cond_15

    goto :goto_a

    :cond_15
    move-object v6, v1

    goto :goto_9

    :catch_3
    move-exception v0

    move-object p0, v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object p1, v0

    goto :goto_c

    :goto_9
    if-eqz v0, :cond_16

    .line 103
    invoke-virtual {v10, v4, v6}, Lg5/m;->s(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 104
    :cond_16
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_17

    move-object v1, p0

    move-object v2, p2

    .line 105
    invoke-virtual/range {v1 .. v6}, Lg6/c0;->e0(Lb6/i;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Le6/z; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 106
    :cond_17
    :goto_a
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 107
    :goto_b
    invoke-static {p2, p0, v3, v4}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v9

    .line 108
    :goto_c
    invoke-virtual {p0, p2, v10, v4, p1}, Lg6/c0;->f0(Lb6/i;Lg5/m;Ljava/lang/Object;Le6/z;)V

    throw v9

    :cond_18
    :goto_d
    return-object v3

    .line 109
    :cond_19
    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v5, v9, p1}, Lb6/i;->A0(Lb6/n;Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v9

    .line 110
    :cond_1a
    invoke-virtual {p0, p1, p2, v3}, Lg6/c0;->d0(Ls5/k;Lb6/i;Ljava/util/Map;)V

    return-object v3

    .line 111
    :cond_1b
    iget-object p0, v1, Lb6/l;->o:Ljava/lang/Class;

    .line 112
    const-string p1, "no default constructor found"

    new-array v0, v4, [Ljava/lang/Object;

    .line 113
    invoke-virtual {p2, p0, v3, p1, v0}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v9
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p3, Ljava/util/Map;

    .line 2
    invoke-virtual {p1, p3}, Ls5/k;->d(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    .line 4
    sget-object v1, Ls5/n;->u:Ls5/n;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lg6/j;->o:Lb6/l;

    .line 6
    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    .line 7
    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2

    .line 8
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lg6/c0;->t:Z

    const/4 v1, 0x0

    iget-object v3, p0, Lg6/c0;->v:Ln6/d;

    iget-object v4, p0, Lg6/c0;->u:Lb6/n;

    iget-boolean v5, p0, Lg6/j;->q:Z

    iget-object v6, p0, Lg6/j;->p:Le6/r;

    if-eqz v0, :cond_c

    .line 9
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    .line 12
    sget-object v7, Ls5/n;->v:Ls5/n;

    if-ne v0, v7, :cond_3

    goto/16 :goto_9

    .line 13
    :cond_3
    sget-object v7, Ls5/n;->y:Ls5/n;

    if-ne v0, v7, :cond_b

    .line 14
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_16

    .line 15
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    .line 16
    iget-object v7, p0, Lg6/c0;->C:La6/n;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v0}, La6/n;->o(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 17
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_3

    .line 18
    :cond_4
    :try_start_0
    sget-object v7, Ls5/n;->F:Ls5/n;

    if-ne v1, v7, :cond_6

    if-eqz v5, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    invoke-interface {v6, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    .line 20
    :cond_6
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    if-nez v3, :cond_7

    .line 21
    invoke-virtual {v4, p1, p2, v1}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {v4, p1, p2, v3, v1}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 23
    :cond_8
    invoke-virtual {p0, p1, p2}, Lg6/c0;->b0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v7

    :goto_2
    if-nez v7, :cond_9

    .line 24
    invoke-interface {v6, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_9

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    if-eq v7, v1, :cond_a

    .line 25
    invoke-interface {p3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_a
    :goto_3
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 27
    :goto_4
    invoke-static {p2, p0, p3, v0}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_b
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v7, v2, p1}, Lb6/i;->A0(Lb6/n;Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 29
    :cond_c
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 30
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 31
    :cond_d
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    .line 32
    sget-object v7, Ls5/n;->v:Ls5/n;

    if-ne v0, v7, :cond_e

    goto/16 :goto_9

    .line 33
    :cond_e
    sget-object v7, Ls5/n;->y:Ls5/n;

    if-ne v0, v7, :cond_17

    .line 34
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_16

    .line 35
    iget-object v1, p0, Lg6/c0;->s:Lb6/w;

    invoke-virtual {v1, p2, v0}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v7

    .line 37
    iget-object v8, p0, Lg6/c0;->C:La6/n;

    if-eqz v8, :cond_f

    invoke-virtual {v8, v0}, La6/n;->o(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 38
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_7

    .line 39
    :cond_f
    :try_start_1
    sget-object v8, Ls5/n;->F:Ls5/n;

    if-ne v7, v8, :cond_11

    if-eqz v5, :cond_10

    goto :goto_7

    .line 40
    :cond_10
    invoke-interface {v6, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :catch_1
    move-exception p0

    goto :goto_8

    .line 41
    :cond_11
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_13

    if-nez v3, :cond_12

    .line 42
    invoke-virtual {v4, p1, p2, v7}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_6

    .line 43
    :cond_12
    invoke-virtual {v4, p1, p2, v3, v7}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_6

    .line 44
    :cond_13
    invoke-virtual {p0, p1, p2}, Lg6/c0;->b0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v8

    :goto_6
    if-nez v8, :cond_14

    .line 45
    invoke-interface {v6, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_14

    if-eqz v5, :cond_14

    goto :goto_7

    :cond_14
    if-eq v8, v7, :cond_15

    .line 46
    invoke-interface {p3, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    :cond_15
    :goto_7
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 48
    :goto_8
    invoke-static {p2, p0, p3, v0}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_16
    :goto_9
    return-object p3

    .line 49
    :cond_17
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v7, v2, p1}, Lb6/i;->A0(Lb6/n;Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->d(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e0(Lb6/i;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lg6/c0;->D:Z

    if-eqz p0, :cond_1

    sget-object p0, Ls5/r;->m:Ls5/r;

    invoke-virtual {p1, p0}, Lb6/i;->o0(Ls5/r;)Z

    move-result p0

    if-eqz p0, :cond_1

    instance-of p0, p4, Ljava/util/List;

    if-eqz p0, :cond_0

    move-object p0, p4

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final f0(Lb6/i;Lg5/m;Ljava/lang/Object;Le6/z;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p0, Lg6/b0;

    iget-object p1, p2, Lg5/m;->m:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p2, p4, p1, p3}, Lg6/b0;-><init>(Lg5/m;Le6/z;Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object p1, p2, Lg5/m;->o:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    throw v0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unresolved forward reference but no identity info: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, p3}, Lb6/i;->v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final isCachable()Z
    .locals 1

    iget-object v0, p0, Lg6/c0;->u:Lb6/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg6/c0;->s:Lb6/w;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg6/c0;->v:Ln6/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg6/c0;->A:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object p0, p0, Lg6/c0;->B:Ljava/util/Set;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->n:Lt6/f;

    return-object p0
.end method
