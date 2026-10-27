.class public final Lr6/g;
.super Lq6/h;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# instance fields
.field public final n:Lb6/f;

.field public final o:Z

.field public final p:Lb6/l;

.field public final q:Lb6/l;

.field public final r:Lb6/u;

.field public final s:Lb6/u;

.field public final t:Ln6/e;

.field public u:Lpc/h;

.field public final v:Ljava/lang/Object;

.field public final w:Z


# direct methods
.method public constructor <init>(Lb6/l;Lb6/l;Lb6/l;ZLo6/r;Lb6/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls6/n0;-><init>(Lb6/l;)V

    .line 2
    iput-object p2, p0, Lr6/g;->p:Lb6/l;

    .line 3
    iput-object p3, p0, Lr6/g;->q:Lb6/l;

    .line 4
    iput-boolean p4, p0, Lr6/g;->o:Z

    .line 5
    iput-object p5, p0, Lr6/g;->t:Ln6/e;

    .line 6
    iput-object p6, p0, Lr6/g;->n:Lb6/f;

    .line 7
    sget-object p1, Lr6/j;->n:Lr6/j;

    iput-object p1, p0, Lr6/g;->u:Lpc/h;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lr6/g;->v:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lr6/g;->w:Z

    return-void
.end method

.method public constructor <init>(Lr6/g;Lb6/u;Lb6/u;Ljava/lang/Object;Z)V
    .locals 2

    .line 10
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, v1, v0}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    .line 12
    iget-object v0, p1, Lr6/g;->p:Lb6/l;

    iput-object v0, p0, Lr6/g;->p:Lb6/l;

    .line 13
    iget-object v0, p1, Lr6/g;->q:Lb6/l;

    iput-object v0, p0, Lr6/g;->q:Lb6/l;

    .line 14
    iget-boolean v0, p1, Lr6/g;->o:Z

    iput-boolean v0, p0, Lr6/g;->o:Z

    .line 15
    iget-object v0, p1, Lr6/g;->t:Ln6/e;

    iput-object v0, p0, Lr6/g;->t:Ln6/e;

    .line 16
    iput-object p2, p0, Lr6/g;->r:Lb6/u;

    .line 17
    iput-object p3, p0, Lr6/g;->s:Lb6/u;

    .line 18
    sget-object p2, Lr6/j;->n:Lr6/j;

    iput-object p2, p0, Lr6/g;->u:Lpc/h;

    .line 19
    iget-object p1, p1, Lr6/g;->n:Lb6/f;

    iput-object p1, p0, Lr6/g;->n:Lb6/f;

    .line 20
    iput-object p4, p0, Lr6/g;->v:Ljava/lang/Object;

    .line 21
    iput-boolean p5, p0, Lr6/g;->w:Z

    return-void
.end method


# virtual methods
.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 10

    iget-object v0, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lb6/f;->d()Lj6/h;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lb6/d;->x(Lj6/a;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2, v3}, Lb6/r0;->m0(Lj6/a;Ljava/lang/Object;)Lb6/u;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v2}, Lb6/d;->e(Lj6/a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2, v0}, Lb6/r0;->m0(Lj6/a;Ljava/lang/Object;)Lb6/u;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    move-object v3, v0

    :goto_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lr6/g;->s:Lb6/u;

    :cond_4
    invoke-static {p1, p2, v0}, Ls6/n0;->c(Lb6/r0;Lb6/f;Lb6/u;)Lb6/u;

    move-result-object v0

    iget-object v2, p0, Lr6/g;->q:Lb6/l;

    if-nez v0, :cond_5

    iget-boolean v4, p0, Lr6/g;->o:Z

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lb6/l;->e0()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v2, p2}, Lb6/r0;->V(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v0

    :cond_5
    move-object v7, v0

    if-nez v3, :cond_6

    iget-object v3, p0, Lr6/g;->r:Lb6/u;

    :cond_6
    if-nez v3, :cond_7

    iget-object v0, p0, Lr6/g;->p:Lb6/l;

    invoke-virtual {p1, v0, p2}, Lb6/r0;->X(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v0

    :goto_3
    move-object v6, v0

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v3, p2}, Lb6/r0;->h0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object v0

    goto :goto_3

    :goto_4
    if-eqz p2, :cond_e

    iget-object v0, p1, Lb6/r0;->o:Lb6/p0;

    invoke-interface {p2, v0, v1}, Lb6/f;->e(Ld6/m;Ljava/lang/Class;)Lr5/a0;

    move-result-object p2

    if-eqz p2, :cond_e

    iget-object v0, p2, Lr5/a0;->m:Lr5/z;

    sget-object v3, Lr5/z;->p:Lr5/z;

    if-eq v0, v3, :cond_e

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v4, 0x2

    sget-object v5, Lr5/z;->n:Lr5/z;

    if-eq v0, v4, :cond_d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_c

    const/4 v4, 0x4

    if-eq v0, v4, :cond_b

    const/4 v2, 0x5

    if-eq v0, v2, :cond_9

    const/4 v3, 0x0

    :cond_8
    :goto_5
    move-object v8, v1

    move v9, v3

    goto :goto_6

    :cond_9
    iget-object p2, p2, Lr5/a0;->o:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lb6/r0;->i0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v1}, Lb6/r0;->j0(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_5

    :cond_b
    invoke-static {v2}, Lwa/h;->p(Lb6/l;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v1}, Lf8/u3;->a(Ljava/lang/Object;)Ld1/c0;

    move-result-object v1

    goto :goto_5

    :cond_c
    move v9, v3

    move-object v8, v5

    goto :goto_6

    :cond_d
    invoke-virtual {v2}, Lb6/g;->y()Z

    move-result p1

    if-eqz p1, :cond_8

    move-object v1, v5

    goto :goto_5

    :cond_e
    iget-object v1, p0, Lr6/g;->v:Ljava/lang/Object;

    iget-boolean v3, p0, Lr6/g;->w:Z

    goto :goto_5

    :goto_6
    new-instance v4, Lr6/g;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lr6/g;-><init>(Lr6/g;Lb6/u;Lb6/u;Ljava/lang/Object;Z)V

    return-object v4
.end method

.method public final i(Ln6/e;)Lq6/h;
    .locals 6

    new-instance v0, Lr6/g;

    iget-object v4, p0, Lr6/g;->v:Ljava/lang/Object;

    iget-boolean v5, p0, Lr6/g;->w:Z

    iget-object v2, p0, Lr6/g;->r:Lb6/u;

    iget-object v3, p0, Lr6/g;->s:Lb6/u;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lr6/g;-><init>(Lr6/g;Lb6/u;Lb6/u;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    iget-boolean p0, p0, Lr6/g;->w:Z

    return p0

    :cond_0
    iget-object v0, p0, Lr6/g;->v:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lr6/g;->s:Lb6/u;

    if-nez v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lr6/g;->u:Lpc/h;

    invoke-virtual {v2, v1}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lr6/g;->u:Lpc/h;

    iget-object v3, p0, Lr6/g;->n:Lb6/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object v1

    if-eq v2, v1, :cond_2

    iput-object v1, p0, Lr6/g;->u:Lpc/h;
    :try_end_0
    .catch Lb6/p; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v1, v3

    goto :goto_1

    :catch_0
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    move-object v1, v2

    :cond_4
    :goto_1
    sget-object p0, Lr5/z;->n:Lr5/z;

    if-ne v0, p0, :cond_5

    invoke-virtual {v1, p1, p2}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final j(Ljava/util/Map$Entry;Ls5/g;Lb6/r0;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p3, Lb6/r0;->u:Lr6/c;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr6/g;->r:Lb6/u;

    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-boolean v3, p0, Lr6/g;->w:Z

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p3, Lb6/r0;->t:Ls6/o;

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lr6/g;->s:Lb6/u;

    if-nez v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lr6/g;->u:Lpc/h;

    invoke-virtual {v4, v3}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lr6/g;->q:Lb6/l;

    invoke-virtual {v4}, Lb6/l;->X()Z

    move-result v5

    iget-object v6, p0, Lr6/g;->n:Lb6/f;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lr6/g;->u:Lpc/h;

    invoke-virtual {p3, v4, v3}, Lb6/r0;->S(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object v3

    invoke-virtual {v5, v3, p3, v6}, Lpc/h;->j(Lb6/l;Lb6/r0;Lb6/f;)Lk0/l;

    move-result-object v3

    iget-object v4, v3, Lk0/l;->n:Ljava/lang/Object;

    check-cast v4, Lpc/h;

    if-eq v5, v4, :cond_3

    iput-object v4, p0, Lr6/g;->u:Lpc/h;

    :cond_3
    iget-object v3, v3, Lk0/l;->m:Ljava/lang/Object;

    check-cast v3, Lb6/u;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lr6/g;->u:Lpc/h;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v3, v6}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object v3

    if-eq v4, v3, :cond_5

    iput-object v3, p0, Lr6/g;->u:Lpc/h;

    :cond_5
    move-object v3, v5

    goto :goto_1

    :cond_6
    move-object v3, v4

    :cond_7
    :goto_1
    iget-object v4, p0, Lr6/g;->v:Ljava/lang/Object;

    if-eqz v4, :cond_9

    sget-object v5, Lr5/z;->n:Lr5/z;

    if-ne v4, v5, :cond_8

    invoke-virtual {v3, p3, v2}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_2
    return-void

    :cond_9
    :goto_3
    invoke-virtual {v1, v0, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    iget-object p0, p0, Lr6/g;->t:Ln6/e;

    if-nez p0, :cond_a

    :try_start_0
    invoke-virtual {v3, v2, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_a
    invoke-virtual {v3, v2, p2, p3, p0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p0, p1, p2}, Ls6/n0;->h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p2, p1}, Ls5/g;->o0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lr6/g;->j(Ljava/util/Map$Entry;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->R()V

    return-void
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    sget-object v0, Ls5/n;->u:Ls5/n;

    invoke-virtual {p4, p1, v0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lr6/g;->j(Ljava/util/Map$Entry;Ls5/g;Lb6/r0;)V

    invoke-virtual {p4, p2, v0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void
.end method
