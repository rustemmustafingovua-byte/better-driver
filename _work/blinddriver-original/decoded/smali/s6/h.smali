.class public final Ls6/h;
.super Ls6/b;
.source "SourceFile"


# instance fields
.field public final u:Z


# direct methods
.method public constructor <init>(Lb6/l;ZLo6/r;Lb6/u;)V
    .locals 6

    .line 1
    const-class v1, Ljava/util/Collection;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ls6/b;-><init>(Ljava/lang/Class;Lb6/l;ZLn6/e;Lb6/u;)V

    .line 2
    invoke-virtual {v2}, Lb6/l;->d0()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v2}, Lb6/l;->e0()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    iput-boolean p0, v0, Ls6/h;->u:Z

    return-void
.end method

.method public constructor <init>(Ls6/h;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Ls6/b;-><init>(Ls6/b;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)V

    .line 4
    iget-boolean p1, p1, Ls6/h;->u:Z

    iput-boolean p1, p0, Ls6/h;->u:Z

    return-void
.end method


# virtual methods
.method public final i(Ln6/e;)Lq6/h;
    .locals 6

    new-instance v0, Ls6/h;

    iget-object v4, p0, Ls6/b;->s:Lb6/u;

    iget-object v5, p0, Ls6/b;->q:Ljava/lang/Boolean;

    iget-object v2, p0, Ls6/b;->o:Lb6/f;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ls6/h;-><init>(Ls6/h;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic k(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Ls6/h;->m(Ljava/util/Collection;Ls5/g;Lb6/r0;)V

    return-void
.end method

.method public final l(Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)Ls6/b;
    .locals 6

    new-instance v0, Ls6/h;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ls6/h;-><init>(Ls6/h;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final m(Ljava/util/Collection;Ls5/g;Lb6/r0;)V
    .locals 9

    iget-object v0, p0, Ls6/b;->n:Lb6/l;

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iget-object v2, p0, Ls6/b;->r:Ln6/e;

    iget-boolean v3, p0, Ls6/h;->u:Z

    const/4 v4, 0x0

    iget-object v5, p0, Ls6/b;->s:Lb6/u;

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v3, :cond_0

    instance-of v0, p1, Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    move-object v2, v4

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {v5, v0, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v0, p2, p3, v2}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :goto_1
    invoke-static {p3, p0, p1, v1}, Ls6/n0;->f(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;I)V

    throw v4

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    iget-object v6, p0, Ls6/b;->t:Lpc/h;

    if-eqz v3, :cond_5

    instance-of v3, p1, Ljava/util/EnumSet;

    if-eqz v3, :cond_5

    move-object v2, v4

    :cond_5
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v8

    if-nez v8, :cond_9

    invoke-virtual {v0}, Lb6/l;->X()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p3, v0, v7}, Lb6/r0;->S(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p3}, Ls6/b;->j(Lpc/h;Lb6/l;Lb6/r0;)Lb6/u;

    move-result-object v6

    move-object v8, v6

    goto :goto_2

    :cond_7
    iget-object v8, p0, Ls6/b;->o:Lb6/f;

    invoke-virtual {p3, v7, v8}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object v7

    if-eq v6, v7, :cond_8

    iput-object v7, p0, Ls6/b;->t:Lpc/h;

    :cond_8
    :goto_2
    iget-object v6, p0, Ls6/b;->t:Lpc/h;

    :cond_9
    if-nez v2, :cond_a

    invoke-virtual {v8, v3, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v8, v3, p2, p3, v2}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_5

    :cond_b
    :goto_4
    return-void

    :goto_5
    invoke-static {p3, p0, p1, v1}, Ls6/n0;->f(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;I)V

    throw v4
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 3

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ls6/b;->q:Ljava/lang/Boolean;

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
    invoke-virtual {p0, p1, p2, p3}, Ls6/h;->m(Ljava/util/Collection;Ls5/g;Lb6/r0;)V

    return-void

    :cond_2
    invoke-virtual {p2, p1}, Ls5/g;->m0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Ls6/h;->m(Ljava/util/Collection;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->P()V

    return-void
.end method
