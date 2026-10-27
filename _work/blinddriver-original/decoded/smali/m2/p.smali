.class public final Lm2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf1/q;

.field public final b:Z

.field public final c:Le2/g0;

.field public final d:Lm2/m;

.field public e:Z

.field public f:Lm2/p;

.field public final g:I


# direct methods
.method public constructor <init>(Lf1/q;ZLe2/g0;Lm2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm2/p;->a:Lf1/q;

    iput-boolean p2, p0, Lm2/p;->b:Z

    iput-object p3, p0, Lm2/p;->c:Le2/g0;

    iput-object p4, p0, Lm2/p;->d:Lm2/m;

    iget p1, p3, Le2/g0;->m:I

    iput p1, p0, Lm2/p;->g:I

    return-void
.end method

.method public static synthetic j(ILm2/p;)Ljava/util/List;
    .locals 3

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lm2/p;->b:Z

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v0, v1}, Lm2/p;->i(ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Le2/h1;)Ll1/c;
    .locals 9

    invoke-virtual {p0}, Lm2/p;->l()Lm2/p;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ll1/c;->e:Ll1/c;

    return-object p0

    :cond_0
    iget-object v0, p0, Lm2/p;->c:Le2/g0;

    iget-object v0, v0, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->f:Lf1/q;

    iget v1, v0, Lf1/q;->o:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    :goto_0
    if-eqz v0, :cond_9

    iget v1, v0, Lf1/q;->n:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    move-object v1, v0

    move-object v5, v4

    :goto_1
    if-eqz v1, :cond_8

    instance-of v6, v1, Le2/z1;

    if-eqz v6, :cond_1

    move-object v6, v1

    check-cast v6, Le2/z1;

    invoke-interface {v6}, Le2/z1;->e()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_1
    iget v6, v1, Lf1/q;->n:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_7

    instance-of v6, v1, Le2/k;

    if-eqz v6, :cond_7

    move-object v6, v1

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    const/4 v7, 0x0

    :goto_2
    if-eqz v6, :cond_6

    iget v8, v6, Lf1/q;->n:I

    and-int/2addr v8, v2

    if-eqz v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v3, :cond_2

    move-object v1, v6

    goto :goto_3

    :cond_2
    if-nez v5, :cond_3

    new-instance v5, Lt0/b;

    const/16 v8, 0x10

    new-array v8, v8, [Lf1/q;

    invoke-direct {v5, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v5, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v1, v4

    :cond_4
    invoke-virtual {v5, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_6
    if-ne v7, v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_1

    :cond_8
    iget v1, v0, Lf1/q;->o:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    iget-object v0, v0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_9
    move-object v1, v4

    :goto_4
    check-cast v1, Le2/z1;

    if-eqz v1, :cond_a

    invoke-static {v1, v2}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v4

    :cond_a
    if-nez v4, :cond_b

    invoke-virtual {p0, p1}, Lm2/p;->a(Le2/h1;)Ll1/c;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {v4, p1, v3}, Le2/h1;->U(Lc2/u;Z)Ll1/c;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lm2/h;Li9/c;)Lm2/p;
    .locals 5

    new-instance v0, Lm2/m;

    invoke-direct {v0}, Lm2/m;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lm2/m;->n:Z

    iput-boolean v1, v0, Lm2/m;->o:Z

    invoke-interface {p2, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lm2/p;

    new-instance v3, Lm2/o;

    invoke-direct {v3, p2}, Lm2/o;-><init>(Li9/c;)V

    new-instance p2, Le2/g0;

    iget v4, p0, Lm2/p;->g:I

    if-eqz p1, :cond_0

    const p1, 0x3b9aca00

    :goto_0
    add-int/2addr v4, p1

    goto :goto_1

    :cond_0
    const p1, 0x77359400

    goto :goto_0

    :goto_1
    const/4 p1, 0x1

    invoke-direct {p2, v4, p1}, Le2/g0;-><init>(IZ)V

    invoke-direct {v2, v3, v1, p2, v0}, Lm2/p;-><init>(Lf1/q;ZLe2/g0;Lm2/m;)V

    iput-boolean p1, v2, Lm2/p;->e:Z

    iput-object p0, v2, Lm2/p;->f:Lm2/p;

    return-object v2
.end method

.method public final c(Le2/g0;Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p1}, Le2/g0;->y()Lt0/b;

    move-result-object p1

    iget-object v0, p1, Lt0/b;->l:[Ljava/lang/Object;

    iget p1, p1, Lt0/b;->n:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    invoke-virtual {v2}, Le2/g0;->H()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Le2/g0;->c0:Z

    if-nez v3, :cond_1

    iget-object v3, v2, Le2/g0;->R:Le2/c1;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Le2/c1;->d(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lm2/p;->b:Z

    invoke-static {v2, v3}, Lm2/s;->a(Le2/g0;Z)Lm2/p;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2, p2}, Lm2/p;->c(Le2/g0;Ljava/util/ArrayList;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final d()Le2/h1;
    .locals 1

    iget-boolean v0, p0, Lm2/p;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm2/p;->l()Lm2/p;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lm2/p;->d()Le2/h1;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lm2/p;->f()Le2/z1;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 p0, 0x8

    invoke-static {v0, p0}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lm2/p;->c:Le2/g0;

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->c:Le2/s;

    return-object p0
.end method

.method public final e(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lm2/p;->q(Ljava/util/ArrayList;Z)Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    if-ge v0, p0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/p;

    invoke-virtual {v1}, Lm2/p;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lm2/p;->d:Lm2/m;

    iget-boolean v2, v2, Lm2/m;->o:Z

    if-nez v2, :cond_1

    invoke-virtual {v1, p1, p2}, Lm2/p;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f()Le2/z1;
    .locals 10

    iget-object v0, p0, Lm2/p;->d:Lm2/m;

    iget-boolean v0, v0, Lm2/m;->n:Z

    const/16 v1, 0x10

    iget-object p0, p0, Lm2/p;->c:Le2/g0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->f:Lf1/q;

    iget v0, p0, Lf1/q;->o:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_13

    move-object v0, v4

    :goto_0
    if-eqz p0, :cond_9

    iget v5, p0, Lf1/q;->n:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_8

    move-object v5, p0

    move-object v6, v4

    :goto_1
    if-eqz v5, :cond_8

    instance-of v7, v5, Le2/z1;

    if-eqz v7, :cond_1

    check-cast v5, Le2/z1;

    invoke-interface {v5}, Le2/z1;->e()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Le2/z1;->t0()Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v5

    :cond_0
    if-nez v0, :cond_7

    move-object v0, v5

    goto :goto_4

    :cond_1
    iget v7, v5, Lf1/q;->n:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_7

    instance-of v7, v5, Le2/k;

    if-eqz v7, :cond_7

    move-object v7, v5

    check-cast v7, Le2/k;

    iget-object v7, v7, Le2/k;->A:Lf1/q;

    move v8, v2

    :goto_2
    if-eqz v7, :cond_6

    iget v9, v7, Lf1/q;->n:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_2

    move-object v5, v7

    goto :goto_3

    :cond_2
    if-nez v6, :cond_3

    new-instance v6, Lt0/b;

    new-array v9, v1, [Lf1/q;

    invoke-direct {v6, v9}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v6, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_4
    invoke-virtual {v6, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    iget-object v7, v7, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_6
    if-ne v8, v3, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    invoke-static {v6}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v5

    goto :goto_1

    :cond_8
    iget v5, p0, Lf1/q;->o:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_9

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_9
    :goto_5
    move-object v4, v0

    goto/16 :goto_a

    :cond_a
    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->f:Lf1/q;

    iget v0, p0, Lf1/q;->o:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_13

    :goto_6
    if-eqz p0, :cond_13

    iget v0, p0, Lf1/q;->n:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_12

    move-object v0, p0

    move-object v5, v4

    :goto_7
    if-eqz v0, :cond_12

    instance-of v6, v0, Le2/z1;

    if-eqz v6, :cond_b

    move-object v6, v0

    check-cast v6, Le2/z1;

    invoke-interface {v6}, Le2/z1;->e()Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_5

    :cond_b
    iget v6, v0, Lf1/q;->n:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_11

    instance-of v6, v0, Le2/k;

    if-eqz v6, :cond_11

    move-object v6, v0

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    move v7, v2

    :goto_8
    if-eqz v6, :cond_10

    iget v8, v6, Lf1/q;->n:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_f

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v3, :cond_c

    move-object v0, v6

    goto :goto_9

    :cond_c
    if-nez v5, :cond_d

    new-instance v5, Lt0/b;

    new-array v8, v1, [Lf1/q;

    invoke-direct {v5, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v5, v0}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v0, v4

    :cond_e
    invoke-virtual {v5, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_f
    :goto_9
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_8

    :cond_10
    if-ne v7, v3, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v0

    goto :goto_7

    :cond_12
    iget v0, p0, Lf1/q;->o:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_13

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_6

    :cond_13
    :goto_a
    check-cast v4, Le2/z1;

    return-object v4
.end method

.method public final g()Ll1/c;
    .locals 2

    invoke-virtual {p0}, Lm2/p;->d()Le2/h1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lc2/u;->U(Lc2/u;Z)Ll1/c;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Ll1/c;->e:Ll1/c;

    return-object p0
.end method

.method public final h()Ll1/c;
    .locals 1

    invoke-virtual {p0}, Lm2/p;->d()Le2/h1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lc2/x;->f(Lc2/u;Z)Ll1/c;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Ll1/c;->e:Ll1/c;

    return-object p0
.end method

.method public final i(ZZ)Ljava/util/List;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lm2/p;->d:Lm2/m;

    iget-boolean p1, p1, Lm2/m;->o:Z

    if-eqz p1, :cond_0

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lm2/p;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lm2/p;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lm2/p;->q(Ljava/util/ArrayList;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final k()Lm2/m;
    .locals 2

    invoke-virtual {p0}, Lm2/p;->n()Z

    move-result v0

    iget-object v1, p0, Lm2/p;->d:Lm2/m;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lm2/m;->b()Lm2/m;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, v0}, Lm2/p;->p(Ljava/util/ArrayList;Lm2/m;)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final l()Lm2/p;
    .locals 5

    iget-object v0, p0, Lm2/p;->f:Lm2/p;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lm2/p;->c:Le2/g0;

    iget-boolean p0, p0, Lm2/p;->b:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Le2/g0;->x()Lm2/m;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lm2/m;->n:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_5

    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    iget-object v2, v0, Le2/g0;->R:Le2/c1;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Le2/c1;->d(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v2, v1

    :cond_5
    :goto_3
    if-nez v2, :cond_6

    return-object v1

    :cond_6
    invoke-static {v2, p0}, Lm2/s;->a(Le2/g0;Z)Lm2/p;

    move-result-object p0

    return-object p0
.end method

.method public final m()Lm2/m;
    .locals 0

    iget-object p0, p0, Lm2/p;->d:Lm2/m;

    return-object p0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lm2/p;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm2/p;->d:Lm2/m;

    iget-boolean p0, p0, Lm2/m;->n:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o()Z
    .locals 2

    iget-boolean v0, p0, Lm2/p;->e:Z

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lm2/p;->c:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le2/g0;->x()Lm2/m;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lm2/m;->n:Z

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final p(Ljava/util/ArrayList;Lm2/m;)V
    .locals 3

    iget-object v0, p0, Lm2/p;->d:Lm2/m;

    iget-boolean v0, v0, Lm2/m;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lm2/p;->q(Ljava/util/ArrayList;Z)Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/p;

    invoke-virtual {v1}, Lm2/p;->n()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lm2/p;->d:Lm2/m;

    invoke-virtual {p2, v2}, Lm2/m;->d(Lm2/m;)V

    invoke-virtual {v1, p1, p2}, Lm2/p;->p(Ljava/util/ArrayList;Lm2/m;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final q(Ljava/util/ArrayList;Z)Ljava/util/List;
    .locals 5

    iget-boolean v0, p0, Lm2/p;->e:Z

    if-eqz v0, :cond_0

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0

    :cond_0
    iget-object v0, p0, Lm2/p;->c:Le2/g0;

    invoke-virtual {p0, v0, p1}, Lm2/p;->c(Le2/g0;Ljava/util/ArrayList;)V

    if-eqz p2, :cond_5

    iget-object p2, p0, Lm2/p;->d:Lm2/m;

    iget-object v0, p2, Lm2/m;->l:Lk/m0;

    sget-object v1, Lm2/t;->y:Lm2/w;

    invoke-virtual {v0, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Lm2/h;

    if-eqz v1, :cond_2

    iget-boolean v3, p2, Lm2/m;->n:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Landroidx/fragment/app/t;

    const/16 v4, 0x17

    invoke-direct {v3, v4, v1}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v3}, Lm2/p;->b(Lm2/h;Li9/c;)Lm2/p;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lm2/t;->a:Lm2/w;

    invoke-virtual {v0, v1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean p2, p2, Lm2/m;->n:Z

    if-eqz p2, :cond_5

    invoke-virtual {v0, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    move-object p2, v2

    :cond_3
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    invoke-static {p2}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_5

    new-instance v0, Landroidx/fragment/app/t;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p2}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v2, v0}, Lm2/p;->b(Lm2/h;Li9/c;)Lm2/p;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    return-object p1
.end method
