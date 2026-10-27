.class public final Ls6/w;
.super Ls6/a;
.source "SourceFile"


# instance fields
.field public final p:Z

.field public final q:Lb6/l;

.field public final r:Ln6/e;

.field public final s:Lb6/u;

.field public t:Lpc/h;


# direct methods
.method public constructor <init>(Lb6/l;ZLn6/e;Lb6/u;)V
    .locals 1

    .line 1
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Ls6/a;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Ls6/w;->q:Lb6/l;

    .line 3
    iput-boolean p2, p0, Ls6/w;->p:Z

    .line 4
    iput-object p3, p0, Ls6/w;->r:Ln6/e;

    .line 5
    sget-object p1, Lr6/j;->n:Lr6/j;

    iput-object p1, p0, Ls6/w;->t:Lpc/h;

    .line 6
    iput-object p4, p0, Ls6/w;->s:Lb6/u;

    return-void
.end method

.method public constructor <init>(Ls6/w;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p5}, Ls6/a;-><init>(Ls6/a;Lb6/f;Ljava/lang/Boolean;)V

    .line 8
    iget-object p2, p1, Ls6/w;->q:Lb6/l;

    iput-object p2, p0, Ls6/w;->q:Lb6/l;

    .line 9
    iput-object p3, p0, Ls6/w;->r:Ln6/e;

    .line 10
    iget-boolean p1, p1, Ls6/w;->p:Z

    iput-boolean p1, p0, Ls6/w;->p:Z

    .line 11
    sget-object p1, Lr6/j;->n:Lr6/j;

    iput-object p1, p0, Ls6/w;->t:Lpc/h;

    .line 12
    iput-object p4, p0, Ls6/w;->s:Lb6/u;

    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 8

    iget-object v0, p0, Ls6/w;->r:Ln6/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ln6/e;->a(Lb6/f;)Ln6/e;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lb6/f;->d()Lj6/h;

    move-result-object v2

    iget-object v3, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v3}, Ld6/m;->d()Lb6/d;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Lb6/d;->e(Lj6/a;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2, v3}, Lb6/r0;->m0(Lj6/a;Ljava/lang/Object;)Lb6/u;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v3}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v1, Lr5/n;->p:Lr5/n;

    invoke-virtual {v3, v1}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v1

    :cond_2
    move-object v7, v1

    iget-object v1, p0, Ls6/w;->s:Lb6/u;

    if-nez v2, :cond_3

    move-object v2, v1

    :cond_3
    invoke-static {p1, p2, v2}, Ls6/n0;->c(Lb6/r0;Lb6/f;Lb6/u;)Lb6/u;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v3, p0, Ls6/w;->q:Lb6/l;

    if-eqz v3, :cond_4

    iget-boolean v4, p0, Ls6/w;->p:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lb6/l;->e0()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1, v3, p2}, Lb6/r0;->V(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v2

    :cond_4
    move-object v6, v2

    iget-object p1, p0, Ls6/a;->n:Lb6/f;

    if-ne p1, p2, :cond_5

    if-ne v6, v1, :cond_5

    if-ne v0, v5, :cond_5

    iget-object p1, p0, Ls6/a;->o:Ljava/lang/Boolean;

    invoke-static {p1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    new-instance v2, Ls6/w;

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Ls6/w;-><init>(Ls6/w;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)V

    return-object v2
.end method

.method public final i(Ln6/e;)Lq6/h;
    .locals 3

    new-instance v0, Ls6/w;

    iget-boolean v1, p0, Ls6/w;->p:Z

    iget-object v2, p0, Ls6/w;->s:Lb6/u;

    iget-object p0, p0, Ls6/w;->q:Lb6/l;

    invoke-direct {v0, p0, v1, p1, v2}, Ls6/w;-><init>(Lb6/l;ZLn6/e;Lb6/u;)V

    return-object v0
.end method

.method public final isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, [Ljava/lang/Object;

    array-length p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(Lb6/f;Ljava/lang/Boolean;)Lb6/u;
    .locals 6

    new-instance v0, Ls6/w;

    iget-object v3, p0, Ls6/w;->r:Ln6/e;

    iget-object v4, p0, Ls6/w;->s:Lb6/u;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ls6/w;-><init>(Ls6/w;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final bridge synthetic l(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Ls6/w;->m([Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void
.end method

.method public final m([Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 9

    iget-object v0, p0, Ls6/w;->q:Lb6/l;

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, p0, Ls6/w;->r:Ln6/e;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ls6/w;->s:Lb6/u;

    if-eqz v5, :cond_3

    array-length p0, p1

    move-object v0, v4

    :goto_0
    if-ge v3, p0, :cond_b

    :try_start_0
    aget-object v0, p1, v3

    if-nez v0, :cond_1

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {v5, v0, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v0, p2, p3, v2}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    invoke-static {p3, p0, v0, v3}, Ls6/n0;->f(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;I)V

    throw v4

    :cond_3
    iget-object v5, p0, Ls6/a;->n:Lb6/f;

    if-eqz v2, :cond_6

    array-length v0, p1

    :try_start_1
    iget-object v1, p0, Ls6/w;->t:Lpc/h;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v6, v4

    :goto_3
    if-ge v3, v0, :cond_b

    :try_start_2
    aget-object v6, p1, v3

    if-nez v6, :cond_4

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_5

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-virtual {p3, v7, v5}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object v7

    if-eq v1, v7, :cond_5

    iput-object v7, p0, Ls6/w;->t:Lpc/h;

    :cond_5
    invoke-virtual {v8, v6, p2, p3, v2}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v6, v4

    :goto_5
    invoke-static {p3, p0, v6, v3}, Ls6/n0;->f(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;I)V

    throw v4

    :cond_6
    :try_start_3
    iget-object v2, p0, Ls6/w;->t:Lpc/h;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v6, v4

    :goto_6
    if-ge v3, v1, :cond_b

    :try_start_4
    aget-object v6, p1, v3

    if-nez v6, :cond_7

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_8

    :catch_3
    move-exception p0

    goto :goto_a

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2, v7}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v8

    if-nez v8, :cond_a

    invoke-virtual {v0}, Lb6/l;->X()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p3, v0, v7}, Lb6/r0;->S(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object v7

    invoke-virtual {v2, v7, p3, v5}, Lpc/h;->j(Lb6/l;Lb6/r0;Lb6/f;)Lk0/l;

    move-result-object v7

    iget-object v8, v7, Lk0/l;->n:Ljava/lang/Object;

    check-cast v8, Lpc/h;

    if-eq v2, v8, :cond_8

    iput-object v8, p0, Ls6/w;->t:Lpc/h;

    :cond_8
    iget-object v7, v7, Lk0/l;->m:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Lb6/u;

    goto :goto_7

    :cond_9
    invoke-virtual {p3, v7, v5}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object v7

    if-eq v2, v7, :cond_a

    iput-object v7, p0, Ls6/w;->t:Lpc/h;

    :cond_a
    :goto_7
    invoke-virtual {v8, v6, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    :goto_9
    return-void

    :catch_4
    move-exception p0

    move-object v6, v4

    :goto_a
    invoke-static {p3, p0, v6, v3}, Ls6/n0;->f(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;I)V

    throw v4
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 3

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ls6/a;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v1, Lb6/q0;->E:Lb6/q0;

    iget-object v2, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v2, v1}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ls6/w;->m([Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_2
    invoke-virtual {p2, p1}, Ls5/g;->m0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Ls6/w;->m([Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->P()V

    return-void
.end method
