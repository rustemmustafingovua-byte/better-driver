.class public final Lmb/x4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lmb/q;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Lmb/q;-><init>(ILjava/lang/Object;)V

    .line 3
    new-instance p1, Lorg/codehaus/janino/util/a;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lorg/codehaus/janino/util/a;-><init>(Lmb/x4;I)V

    iput-object p1, p0, Lmb/x4;->b:Ljava/lang/Object;

    .line 4
    new-instance p1, Lorg/codehaus/janino/util/a;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lorg/codehaus/janino/util/a;-><init>(Lmb/x4;I)V

    iput-object p1, p0, Lmb/x4;->c:Ljava/lang/Object;

    .line 5
    new-instance p1, Lorg/codehaus/janino/util/a;

    const/4 v1, 0x4

    invoke-direct {p1, p0, v1}, Lorg/codehaus/janino/util/a;-><init>(Lmb/x4;I)V

    iput-object p1, p0, Lmb/x4;->d:Ljava/lang/Object;

    .line 6
    new-instance p1, Lorg/codehaus/janino/util/a;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Lorg/codehaus/janino/util/a;-><init>(Lmb/x4;I)V

    iput-object p1, p0, Lmb/x4;->e:Ljava/lang/Object;

    .line 7
    new-instance p1, Lorg/codehaus/janino/util/a;

    invoke-direct {p1, p0, v0}, Lorg/codehaus/janino/util/a;-><init>(Lmb/x4;I)V

    iput-object p1, p0, Lmb/x4;->f:Ljava/lang/Object;

    .line 8
    new-instance p1, Lorg/codehaus/janino/util/a;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lorg/codehaus/janino/util/a;-><init>(Lmb/x4;I)V

    iput-object p1, p0, Lmb/x4;->g:Ljava/lang/Object;

    .line 9
    new-instance p1, Lorg/codehaus/janino/util/a;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lorg/codehaus/janino/util/a;-><init>(Lmb/x4;I)V

    iput-object p1, p0, Lmb/x4;->h:Ljava/lang/Object;

    .line 10
    new-instance p1, Lorg/codehaus/janino/util/a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/codehaus/janino/util/a;-><init>(Lmb/x4;I)V

    iput-object p1, p0, Lmb/x4;->i:Ljava/lang/Object;

    .line 11
    new-instance p1, Lorg/codehaus/janino/util/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lorg/codehaus/janino/util/a;-><init>(Lmb/x4;I)V

    iput-object p1, p0, Lmb/x4;->j:Ljava/lang/Object;

    .line 12
    iput-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    return-void

    .line 13
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance p1, Lt0/b;

    const/16 v0, 0x10

    new-array v1, v0, [Lr0/y1;

    invoke-direct {p1, v1}, Lt0/b;-><init>([Ljava/lang/Object;)V

    .line 15
    iput-object p1, p0, Lmb/x4;->c:Ljava/lang/Object;

    .line 16
    sget-object v1, Lk/u0;->a:Lk/n0;

    .line 17
    new-instance v1, Lk/n0;

    invoke-direct {v1}, Lk/n0;-><init>()V

    .line 18
    iput-object v1, p0, Lmb/x4;->d:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lmb/x4;->e:Ljava/lang/Object;

    .line 20
    new-instance p1, Lt0/b;

    new-array v1, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1}, Lt0/b;-><init>([Ljava/lang/Object;)V

    .line 21
    iput-object p1, p0, Lmb/x4;->f:Ljava/lang/Object;

    .line 22
    new-instance p1, Lt0/b;

    new-array v0, v0, [Li9/a;

    invoke-direct {p1, v0}, Lt0/b;-><init>([Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lmb/x4;->g:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lmb/a5;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lmb/x4;->k:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmb/x4;-><init>(I)V

    return-void
.end method

.method public static final f(Lr0/y1;Lt0/b;)Z
    .locals 5

    iget-object v0, p1, Lt0/b;->l:[Ljava/lang/Object;

    iget p1, p1, Lt0/b;->n:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, v0, v2

    check-cast v3, Lr0/y1;

    iget-object v3, v3, Lr0/y1;->a:Lr0/x1;

    instance-of v4, v3, Lz0/f;

    if-eqz v4, :cond_1

    check-cast v3, Lz0/f;

    iget-object v3, v3, Lz0/f;->m:Lt0/b;

    invoke-virtual {v3, p0}, Lt0/b;->j(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, v3}, Lmb/x4;->f(Lr0/y1;Lt0/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lmb/x4;->a:Ljava/lang/Object;

    iput-object v0, p0, Lmb/x4;->b:Ljava/lang/Object;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    invoke-virtual {v1}, Lt0/b;->g()V

    iget-object v2, p0, Lmb/x4;->d:Ljava/lang/Object;

    check-cast v2, Lk/n0;

    invoke-virtual {v2}, Lk/n0;->b()V

    iput-object v1, p0, Lmb/x4;->e:Ljava/lang/Object;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    invoke-virtual {v1}, Lt0/b;->g()V

    iget-object v1, p0, Lmb/x4;->g:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    invoke-virtual {v1}, Lt0/b;->g()V

    iput-object v0, p0, Lmb/x4;->h:Ljava/lang/Object;

    iput-object v0, p0, Lmb/x4;->i:Ljava/lang/Object;

    iput-object v0, p0, Lmb/x4;->j:Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Compose:abandons"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/x1;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0}, Lr0/x1;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public c()V
    .locals 7

    iget-object v0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    iget-object v2, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lmb/x4;->k:Ljava/lang/Object;

    iget v3, v1, Lt0/b;->n:I

    if-eqz v3, :cond_6

    const-string v3, "Compose:onForgotten"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lmb/x4;->h:Ljava/lang/Object;

    check-cast v3, Lk/n0;

    iget v4, v1, Lt0/b;->n:I

    add-int/lit8 v4, v4, -0x1

    :goto_0
    const/4 v5, -0x1

    if-ge v5, v4, :cond_5

    iget-object v5, v1, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v5, v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v6, v5, Lr0/y1;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Lr0/y1;

    iget-object v6, v6, Lr0/y1;->a:Lr0/x1;

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v6}, Lr0/x1;->f()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    instance-of v6, v5, Lr0/h;

    if-eqz v6, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v5}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Lr0/h;

    invoke-interface {v6}, Lr0/h;->a()V

    goto :goto_2

    :cond_2
    move-object v6, v5

    check-cast v6, Lr0/h;

    invoke-interface {v6}, Lr0/h;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :goto_3
    :try_start_2
    iget-object p0, p0, Lmb/x4;->b:Ljava/lang/Object;

    check-cast p0, Le1/e;

    if-eqz p0, :cond_4

    new-instance v1, Lb0/n;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, v5}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Ll9/a;->F(Ljava/lang/Throwable;Li9/a;)Z

    :cond_4
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :catchall_1
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_6
    :goto_4
    iget v1, v0, Lt0/b;->n:I

    if-eqz v1, :cond_a

    const-string v1, "Compose:onRemembered"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_3
    iget-object v1, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    iget-object v2, v0, Lt0/b;->l:[Ljava/lang/Object;

    iget v0, v0, Lt0/b;->n:I

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_9

    aget-object v4, v2, v3

    check-cast v4, Lr0/y1;

    iget-object v5, v4, Lr0/y1;->a:Lr0/x1;

    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-interface {v5}, Lr0/x1;->g()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_5
    iget-object p0, p0, Lmb/x4;->b:Ljava/lang/Object;

    check-cast p0, Le1/e;

    if-eqz p0, :cond_8

    new-instance v1, Lb0/n;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, v4}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Ll9/a;->F(Ljava/lang/Throwable;Li9/a;)Z

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_8

    :cond_8
    :goto_6
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_9
    :goto_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_a
    :goto_9
    return-void
.end method

.method public d()V
    .locals 4

    iget-object p0, p0, Lmb/x4;->g:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    iget v0, p0, Lt0/b;->n:I

    if-eqz v0, :cond_1

    const-string v0, "Compose:sideeffects"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget v1, p0, Lt0/b;->n:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Li9/a;

    invoke-interface {v3}, Li9/a;->invoke()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lt0/b;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_1
    return-void
.end method

.method public e(Lr0/y1;)V
    .locals 2

    iget-object v0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    iget-object v1, p0, Lmb/x4;->d:Ljava/lang/Object;

    check-cast v1, Lk/n0;

    invoke-virtual {v1, p1}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmb/x4;->d:Ljava/lang/Object;

    check-cast v1, Lk/n0;

    invoke-virtual {v1, p1}, Lk/n0;->l(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    invoke-virtual {v1, p1}, Lt0/b;->j(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Lt0/b;->j(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lmb/x4;->f(Lr0/y1;Lt0/b;)Z

    :cond_1
    :goto_0
    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lr0/y1;->a:Lr0/x1;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object v0, p0, Lmb/x4;->k:Ljava/lang/Object;

    check-cast v0, Lk/n0;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    iget-object p0, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/util/Set;Le1/e;)V
    .locals 0

    invoke-virtual {p0}, Lmb/x4;->a()V

    iput-object p1, p0, Lmb/x4;->a:Ljava/lang/Object;

    iput-object p2, p0, Lmb/x4;->b:Ljava/lang/Object;

    return-void
.end method

.method public h(Lmb/m0;)V
    .locals 6

    invoke-virtual {p1}, Lmb/m0;->getAnnotations()[Lmb/r0;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lmb/c4;

    iget-object v5, p0, Lmb/x4;->b:Ljava/lang/Object;

    check-cast v5, Lorg/codehaus/janino/util/a;

    invoke-interface {v4, v5}, Lmb/v5;->q(Lmb/t7;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lmb/u3;

    invoke-virtual {p0, v1}, Lmb/x4;->k(Lmb/r2;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public i(Lmb/t1;)V
    .locals 4

    iget-object p1, p1, Lmb/t1;->c:[Lmb/y4;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/janino/util/a;

    invoke-virtual {v2, v3}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(Lmb/k2;)V
    .locals 4

    iget-object v0, p1, Lmb/k2;->f:Lmb/s5;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/k2;->g:[Lmb/z5;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v2, v2, Lmb/z5;->e:Lmb/x0;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lmb/x4;->g:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/janino/util/a;

    invoke-interface {v2, v3}, Lmb/x0;->f(Lmb/f7;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k(Lmb/r2;)V
    .locals 5

    iget-object v0, p1, Lmb/r2;->g:Lmb/q2;

    iget-object v0, v0, Lmb/q2;->c:[Lmb/p2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, Lmb/p2;->d:Lmb/s5;

    iget-object v4, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v4, Lorg/codehaus/janino/util/a;

    invoke-virtual {v3, v4}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lmb/r2;->i:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/f1;

    iget-object v1, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-interface {v0, v1}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public l(Lmb/y2;)V
    .locals 6

    iget-object v0, p1, Lmb/y2;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lmb/u5;

    iget-object v5, p0, Lmb/x4;->d:Ljava/lang/Object;

    check-cast v5, Lorg/codehaus/janino/util/a;

    invoke-interface {v4, v5}, Lmb/u5;->v(Lmb/s7;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lmb/y2;->j:[Lmb/s5;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v4, Lorg/codehaus/janino/util/a;

    invoke-virtual {v3, v4}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lmb/x4;->h(Lmb/m0;)V

    return-void
.end method

.method public m(Lmb/z2;)V
    .locals 5

    iget-object v0, p1, Lmb/z2;->g:[Lmb/y4;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v4, Lorg/codehaus/janino/util/a;

    invoke-virtual {v3, v4}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    return-void
.end method

.method public n(Lmb/b4;)V
    .locals 6

    iget-object v0, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/janino/util/a;

    iget-object v1, p1, Lmb/b4;->n:[Lmb/s5;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5, v0}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lmb/b4;->m:Lmb/s5;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p1, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lmb/s1;

    iget-object v5, p0, Lmb/x4;->d:Ljava/lang/Object;

    check-cast v5, Lorg/codehaus/janino/util/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v4}, Lorg/codehaus/janino/util/a;->A(Lmb/r2;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lmb/f1;

    iget-object v4, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast v4, Lorg/codehaus/janino/util/a;

    invoke-interface {v2, v4}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lmb/x4;->h(Lmb/m0;)V

    return-void
.end method

.method public o(Lmb/y4;)V
    .locals 2

    iget-object p0, p0, Lmb/x4;->k:Ljava/lang/Object;

    check-cast p0, Lmb/a5;

    iget-object v0, p1, Lmb/y4;->c:Lmb/a5;

    if-eqz v0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lhb/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enclosing block statement for rvalue \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already set"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p0, p1, Lmb/y4;->c:Lmb/a5;

    return-void
.end method

.method public p(Lmb/s5;)V
    .locals 2

    iget-object p0, p0, Lmb/x4;->k:Ljava/lang/Object;

    check-cast p0, Lmb/a5;

    iget-object v0, p1, Lmb/s5;->c:Lmb/a5;

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lmb/s5;->a(Lmb/a5;)V

    return-void

    :cond_0
    if-ne p0, v0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lhb/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enclosing scope already set for type \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
