.class public final Lg6/p;
.super Lg6/j;
.source "SourceFile"

# interfaces
.implements Le6/k;
.implements Le6/s;


# instance fields
.field public final s:Ljava/lang/Class;

.field public final t:Lb6/w;

.field public final u:Lb6/n;

.field public final v:Ln6/d;

.field public final w:Le6/c0;

.field public x:Lb6/n;

.field public y:Lf6/v;


# direct methods
.method public constructor <init>(Lb6/l;Lb6/n;Le6/c0;Ln6/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lg6/j;-><init>(Lb6/l;Le6/r;Ljava/lang/Boolean;)V

    .line 2
    invoke-virtual {p1}, Lb6/l;->T()Lb6/l;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lg6/p;->s:Ljava/lang/Class;

    .line 5
    iput-object v0, p0, Lg6/p;->t:Lb6/w;

    .line 6
    iput-object p2, p0, Lg6/p;->u:Lb6/n;

    .line 7
    iput-object p4, p0, Lg6/p;->v:Ln6/d;

    .line 8
    iput-object p3, p0, Lg6/p;->w:Le6/c0;

    return-void
.end method

.method public constructor <init>(Lg6/p;Lb6/w;Lb6/n;Ln6/d;Le6/r;)V
    .locals 1

    .line 9
    iget-object v0, p1, Lg6/j;->r:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p5, v0}, Lg6/j;-><init>(Lg6/j;Le6/r;Ljava/lang/Boolean;)V

    .line 10
    iget-object p5, p1, Lg6/p;->s:Ljava/lang/Class;

    iput-object p5, p0, Lg6/p;->s:Ljava/lang/Class;

    .line 11
    iput-object p2, p0, Lg6/p;->t:Lb6/w;

    .line 12
    iput-object p3, p0, Lg6/p;->u:Lb6/n;

    .line 13
    iput-object p4, p0, Lg6/p;->v:Ln6/d;

    .line 14
    iget-object p2, p1, Lg6/p;->w:Le6/c0;

    iput-object p2, p0, Lg6/p;->w:Le6/c0;

    .line 15
    iget-object p2, p1, Lg6/p;->x:Lb6/n;

    iput-object p2, p0, Lg6/p;->x:Lb6/n;

    .line 16
    iget-object p1, p1, Lg6/p;->y:Lf6/v;

    iput-object p1, p0, Lg6/p;->y:Lf6/v;

    return-void
.end method


# virtual methods
.method public final U()Le6/c0;
    .locals 0

    iget-object p0, p0, Lg6/p;->w:Le6/c0;

    return-object p0
.end method

.method public final Z()Lb6/n;
    .locals 0

    iget-object p0, p0, Lg6/p;->u:Lb6/n;

    return-object p0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 9

    iget-object v0, p0, Lg6/j;->o:Lb6/l;

    iget-object v1, p0, Lg6/p;->t:Lb6/w;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lb6/l;->T()Lb6/l;

    move-result-object v2

    invoke-virtual {p1, v2}, Lb6/i;->V(Lb6/l;)Lb6/w;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-virtual {v0}, Lb6/l;->Q()Lb6/l;

    move-result-object v0

    iget-object v2, p0, Lg6/p;->u:Lb6/n;

    if-nez v2, :cond_1

    invoke-virtual {p1, v0, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v0

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v2, p2, v0}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lg6/p;->v:Ln6/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ln6/d;->f(Lb6/f;)Ln6/d;

    move-result-object v3

    move-object v7, v3

    goto :goto_3

    :cond_2
    move-object v7, v0

    :goto_3
    invoke-static {p1, p2, v6}, Lg6/f1;->R(Lb6/i;Lb6/f;Lb6/n;)Le6/r;

    move-result-object v8

    if-ne v5, v1, :cond_3

    iget-object p1, p0, Lg6/j;->p:Le6/r;

    if-ne v8, p1, :cond_3

    if-ne v6, v2, :cond_3

    if-ne v7, v0, :cond_3

    return-object p0

    :cond_3
    new-instance v3, Lg6/p;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lg6/p;-><init>(Lg6/p;Lb6/w;Lb6/n;Ln6/d;Le6/r;)V

    return-object v3
.end method

.method public final b(Lb6/i;)V
    .locals 5

    iget-object v0, p1, Lb6/i;->q:Lb6/h;

    iget-object v1, p0, Lg6/p;->w:Le6/c0;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Le6/c0;->l()Z

    move-result v2

    iget-object v3, p0, Lg6/j;->o:Lb6/l;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Le6/c0;->D()Lb6/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, v4}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object p1

    iput-object p1, p0, Lg6/p;->x:Lb6/n;

    return-void

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

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0, v4}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object p1

    iput-object p1, p0, Lg6/p;->x:Lb6/n;

    return-void

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
    invoke-virtual {v1}, Le6/c0;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Le6/c0;->E(Lb6/h;)[Le6/y;

    move-result-object v2

    sget-object v3, Lb6/x;->L:Lb6/x;

    invoke-virtual {v0, v3}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    invoke-static {p1, v1, v2, v0}, Lf6/v;->h(Lb6/i;Le6/c0;[Le6/y;Z)Lf6/v;

    move-result-object p1

    iput-object p1, p0, Lg6/p;->y:Lf6/v;

    :cond_4
    return-void
.end method

.method public final b0(Lb6/i;)Ljava/util/EnumMap;
    .locals 4

    iget-object v0, p0, Lg6/p;->w:Le6/c0;

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/EnumMap;

    iget-object p0, p0, Lg6/p;->s:Ljava/lang/Class;

    invoke-direct {p1, p0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Le6/c0;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/EnumMap;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    const-string v2, "no default constructor found"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v2, v3}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1, p0}, Lu6/h;->B(Lb6/i;Ljava/io/IOException;)V

    throw v1
.end method

.method public final c0(Ls5/k;Lb6/i;Ljava/util/EnumMap;)V
    .locals 6

    invoke-virtual {p1, p3}, Ls5/k;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v2, Ls5/n;->y:Ls5/n;

    if-eq v0, v2, :cond_2

    sget-object p1, Ls5/n;->v:Ls5/n;

    if-ne v0, p1, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v2, v1, p1}, Lb6/i;->A0(Lb6/n;Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_9

    iget-object v2, p0, Lg6/p;->t:Lb6/w;

    invoke-virtual {v2, p2, v0}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v3

    if-nez v2, :cond_4

    sget-object v2, Lb6/j;->L:Lb6/j;

    invoke-virtual {p2, v2}, Lb6/i;->n0(Lb6/j;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lg6/j;->o:Lb6/l;

    invoke-virtual {p1}, Lb6/l;->T()Lb6/l;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lg6/p;->s:Ljava/lang/Class;

    const-string p3, "value not one of declared Enum instance names for %s"

    invoke-virtual {p2, p0, v0, p3, p1}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_4
    :try_start_0
    sget-object v4, Ls5/n;->F:Ls5/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v5, p0, Lg6/j;->q:Z

    if-ne v3, v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v1

    goto :goto_1

    :cond_6
    :try_start_1
    iget-object v3, p0, Lg6/p;->u:Lb6/n;

    iget-object v4, p0, Lg6/p;->v:Ln6/d;

    if-nez v4, :cond_7

    invoke-virtual {v3, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_7
    invoke-virtual {v3, p1, p2, v4}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_8

    iget-object v3, p0, Lg6/j;->p:Le6/r;

    invoke-interface {v3, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_8

    if-eqz v5, :cond_8

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_8
    invoke-virtual {p3, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_3
    invoke-static {p2, p0, p3, v0}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_4
    return-void
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 9

    .line 2
    iget-object v0, p0, Lg6/p;->y:Lf6/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lf6/v;->x(Ls5/k;Lb6/i;Lf6/r;)Lf6/z;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 6
    :cond_0
    sget-object v3, Ls5/n;->y:Ls5/n;

    invoke-virtual {p1, v3}, Ls5/k;->q0(Ls5/n;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 8
    :goto_0
    iget-object v4, p0, Lg6/j;->o:Lb6/l;

    if-eqz v3, :cond_a

    .line 9
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v5

    .line 10
    invoke-virtual {v0, v3}, Lf6/v;->i(Ljava/lang/String;)Le6/y;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {v6, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 12
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    .line 13
    :try_start_0
    invoke-virtual {v0, p2, v2}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-virtual {p0, p1, p2, v0}, Lg6/p;->c0(Ls5/k;Lb6/i;Ljava/util/EnumMap;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 15
    iget-object p1, v4, Lb6/l;->o:Ljava/lang/Class;

    .line 16
    invoke-static {p2, p0, p1, v3}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_2
    iget-object v6, p0, Lg6/p;->t:Lb6/w;

    invoke-virtual {v6, p2, v3}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Enum;

    if-nez v6, :cond_4

    .line 18
    sget-object v5, Lb6/j;->L:Lb6/j;

    invoke-virtual {p2, v5}, Lb6/i;->n0(Lb6/j;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 19
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    .line 20
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {v4}, Lb6/l;->T()Lb6/l;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 22
    iget-object p0, p0, Lg6/p;->s:Ljava/lang/Class;

    const-string v0, "value not one of declared Enum instance names for %s"

    invoke-virtual {p2, p0, v3, v0, p1}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 23
    :cond_4
    :try_start_1
    sget-object v7, Ls5/n;->F:Ls5/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-boolean v8, p0, Lg6/j;->q:Z

    if-ne v5, v7, :cond_6

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v1

    goto :goto_1

    .line 24
    :cond_6
    :try_start_2
    iget-object v5, p0, Lg6/p;->u:Lb6/n;

    iget-object v7, p0, Lg6/p;->v:Ln6/d;

    if-nez v7, :cond_7

    .line 25
    invoke-virtual {v5, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 26
    :cond_7
    invoke-virtual {v5, p1, p2, v7}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_8

    .line 27
    iget-object v5, p0, Lg6/j;->p:Le6/r;

    invoke-interface {v5, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v5, :cond_8

    if-eqz v8, :cond_8

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    .line 28
    :cond_8
    new-instance v3, Lf6/y;

    iget-object v4, v2, Lf6/z;->h:Lf2/b;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lf6/y;-><init>(Lf2/b;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v3, v2, Lf6/z;->h:Lf2/b;

    .line 29
    :cond_9
    :goto_2
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 30
    :goto_3
    iget-object p1, v4, Lb6/l;->o:Ljava/lang/Class;

    .line 31
    invoke-static {p2, p0, p1, v3}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_a
    :try_start_3
    invoke-virtual {v0, p2, v2}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/EnumMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 33
    iget-object p1, v4, Lb6/l;->o:Ljava/lang/Class;

    .line 34
    invoke-static {p2, p0, p1, v3}, Lg6/j;->a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_b
    iget-object v0, p0, Lg6/p;->x:Lb6/n;

    if-eqz v0, :cond_c

    .line 36
    iget-object p0, p0, Lg6/p;->w:Le6/c0;

    .line 37
    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p2, p1}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/EnumMap;

    return-object p0

    .line 39
    :cond_c
    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_f

    const/4 v2, 0x6

    if-ne v0, v2, :cond_d

    .line 40
    invoke-virtual {p0, p1, p2}, Lg6/f1;->s(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/EnumMap;

    return-object p0

    .line 41
    :cond_d
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v1

    .line 42
    :cond_e
    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/EnumMap;

    return-object p0

    .line 43
    :cond_f
    invoke-virtual {p0, p2}, Lg6/p;->b0(Lb6/i;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lg6/p;->c0(Ls5/k;Lb6/i;Ljava/util/EnumMap;)V

    return-object v0
.end method

.method public final bridge synthetic deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p3, Ljava/util/EnumMap;

    invoke-virtual {p0, p1, p2, p3}, Lg6/p;->c0(Ls5/k;Lb6/i;Ljava/util/EnumMap;)V

    return-object p3
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->d(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lg6/p;->b0(Lb6/i;)Ljava/util/EnumMap;

    move-result-object p0

    return-object p0
.end method

.method public final isCachable()Z
    .locals 1

    iget-object v0, p0, Lg6/p;->u:Lb6/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg6/p;->t:Lb6/w;

    if-nez v0, :cond_0

    iget-object p0, p0, Lg6/p;->v:Ln6/d;

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
