.class public final Ln/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln/i0;

.field public final b:Ln/h1;

.field public final c:Ljava/lang/String;

.field public final d:Lr0/e1;

.field public final e:Lr0/e1;

.field public final f:Lr0/c1;

.field public final g:Lr0/c1;

.field public final h:Lr0/e1;

.field public final i:Ld1/v;

.field public final j:Ld1/v;

.field public final k:Lr0/e1;


# direct methods
.method public constructor <init>(Ln/i0;Ln/h1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/h1;->a:Ln/i0;

    iput-object p2, p0, Ln/h1;->b:Ln/h1;

    iput-object p3, p0, Ln/h1;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/h1;->d:Lr0/e1;

    new-instance p1, Ln/c1;

    invoke-virtual {p0}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ln/c1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/h1;->e:Lr0/e1;

    new-instance p1, Lr0/c1;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Lr0/c1;-><init>(J)V

    iput-object p1, p0, Ln/h1;->f:Lr0/c1;

    new-instance p1, Lr0/c1;

    const-wide/high16 p2, -0x8000000000000000L

    invoke-direct {p1, p2, p3}, Lr0/c1;-><init>(J)V

    iput-object p1, p0, Ln/h1;->g:Lr0/c1;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Ln/h1;->h:Lr0/e1;

    new-instance p2, Ld1/v;

    invoke-direct {p2}, Ld1/v;-><init>()V

    iput-object p2, p0, Ln/h1;->i:Ld1/v;

    new-instance p2, Ld1/v;

    invoke-direct {p2}, Ld1/v;-><init>()V

    iput-object p2, p0, Ln/h1;->j:Ld1/v;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/h1;->k:Lr0/e1;

    new-instance p1, Ln/z0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Ln/z0;-><init>(Ln/h1;I)V

    invoke-static {p1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lr0/q;I)V
    .locals 8

    const v0, -0x59064cff

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_2

    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, p3

    goto :goto_2

    :cond_2
    move v0, p3

    :goto_2
    and-int/lit8 v1, p3, 0x30

    const/16 v2, 0x20

    if-nez v1, :cond_4

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    const/16 v1, 0x10

    :goto_3
    or-int/2addr v0, v1

    :cond_4
    and-int/lit8 v1, v0, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    move v1, v5

    :goto_4
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Ln/h1;->g()Z

    move-result v1

    const v3, 0x18d14d41

    if-nez v1, :cond_e

    const v1, 0x1bc78ba1

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    invoke-virtual {p0, p1}, Ln/h1;->k(Ljava/lang/Object;)V

    and-int/lit8 v0, v0, 0x70

    if-ne v0, v2, :cond_6

    move v1, v4

    goto :goto_5

    :cond_6
    move v1, v5

    :goto_5
    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-nez v1, :cond_7

    if-ne v6, v7, :cond_8

    :cond_7
    new-instance v1, Ln/z0;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Ln/z0;-><init>(Ln/h1;I)V

    invoke-static {v1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object v6

    invoke-virtual {p2, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v6, Lr0/r2;

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x1bcdc5d4

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_9

    invoke-static {p2}, Lr0/r;->p(Lr0/q;)Lu9/t;

    move-result-object v1

    invoke-virtual {p2, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v1, Lu9/t;

    invoke-virtual {p2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-ne v0, v2, :cond_a

    goto :goto_6

    :cond_a
    move v4, v5

    :goto_6
    or-int v0, v3, v4

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_b

    if-ne v2, v7, :cond_c

    :cond_b
    new-instance v2, Lb0/r0;

    const/16 v0, 0xd

    invoke-direct {v2, v0, v1, p0}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    check-cast v2, Li9/c;

    invoke-static {v1, p0, v2, p2}, Lr0/r;->d(Ljava/lang/Object;Ljava/lang/Object;Li9/c;Lr0/q;)V

    :goto_7
    invoke-virtual {p2, v5}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_d
    invoke-virtual {p2, v3}, Lr0/q;->b0(I)V

    goto :goto_7

    :goto_8
    invoke-virtual {p2, v5}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_e
    invoke-virtual {p2, v3}, Lr0/q;->b0(I)V

    goto :goto_8

    :cond_f
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_9
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_10

    new-instance v0, Lb0/h;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1, p0, p1}, Lb0/h;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_10
    return-void
.end method

.method public final b()J
    .locals 8

    iget-object v0, p0, Ln/h1;->i:Ld1/v;

    invoke-virtual {v0}, Ld1/v;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {v0, v5}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln/d1;

    iget-object v6, v6, Ln/d1;->u:Lr0/c1;

    iget-object v7, v6, Lr0/c1;->m:Lr0/k2;

    invoke-static {v7, v6}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object v6

    check-cast v6, Lr0/k2;

    iget-wide v6, v6, Lr0/k2;->c:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ln/h1;->j:Ld1/v;

    invoke-virtual {p0}, Ld1/v;->size()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-virtual {p0, v4}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/h1;

    invoke-virtual {v1}, Ln/h1;->b()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-wide v2
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln/h1;->a:Ln/i0;

    iget-object p0, p0, Ln/i0;->b:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d()Z
    .locals 5

    iget-object v0, p0, Ln/h1;->i:Ld1/v;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/d1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ln/h1;->j:Ld1/v;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/h1;

    invoke-virtual {v3}, Ln/h1;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Ln/h1;->b:Ln/h1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln/h1;->e()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Ln/h1;->f:Lr0/c1;

    iget-object v0, p0, Lr0/c1;->m:Lr0/k2;

    invoke-static {v0, p0}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object p0

    check-cast p0, Lr0/k2;

    iget-wide v0, p0, Lr0/k2;->c:J

    return-wide v0
.end method

.method public final f()Ln/c1;
    .locals 0

    iget-object p0, p0, Ln/h1;->e:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln/c1;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Ln/h1;->k:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final h(ZJ)V
    .locals 11

    iget-object v0, p0, Ln/h1;->a:Ln/i0;

    iget-object v1, v0, Ln/i0;->a:Lr0/e1;

    iget-object v2, p0, Ln/h1;->g:Lr0/c1;

    iget-object v3, v2, Lr0/c1;->m:Lr0/k2;

    invoke-static {v3, v2}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object v3

    check-cast v3, Lr0/k2;

    iget-wide v3, v3, Lr0/k2;->c:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {v2, p2, p3}, Lr0/c1;->g(J)V

    iget-object v0, v0, Ln/i0;->a:Lr0/e1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Ln/h1;->h:Lr0/e1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Ln/h1;->i:Ld1/v;

    invoke-virtual {v0}, Ld1/v;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v4}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln/d1;

    iget-object v6, v5, Ln/d1;->p:Lr0/e1;

    iget-object v7, v5, Ln/d1;->p:Lr0/e1;

    invoke-virtual {v6}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v5}, Ln/d1;->a()Ln/y0;

    move-result-object v6

    invoke-virtual {v6}, Ln/y0;->b()J

    move-result-wide v8

    goto :goto_2

    :cond_2
    move-wide v8, p2

    :goto_2
    invoke-virtual {v5}, Ln/d1;->a()Ln/y0;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ln/y0;->f(J)Ljava/lang/Object;

    move-result-object v6

    iget-object v10, v5, Ln/d1;->s:Lr0/e1;

    invoke-virtual {v10, v6}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ln/d1;->a()Ln/y0;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ln/y0;->d(J)Ln/p;

    move-result-object v6

    iput-object v6, v5, Ln/d1;->t:Ln/p;

    invoke-virtual {v5}, Ln/d1;->a()Ln/y0;

    move-result-object v5

    invoke-interface {v5, v8, v9}, Ln/f;->e(J)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v7}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ln/h1;->j:Ld1/v;

    invoke-virtual {v0}, Ld1/v;->size()I

    move-result v1

    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_8

    invoke-virtual {v0, v4}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln/h1;

    iget-object v6, v5, Ln/h1;->d:Lr0/e1;

    invoke-virtual {v6}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5, p1, p2, p3}, Ln/h1;->h(ZJ)V

    :cond_6
    iget-object v6, v5, Ln/h1;->d:Lr0/e1;

    invoke-virtual {v6}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    move v3, v2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {p0}, Ln/h1;->i()V

    :cond_9
    return-void
.end method

.method public final i()V
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    iget-object v2, p0, Ln/h1;->g:Lr0/c1;

    invoke-virtual {v2, v0, v1}, Lr0/c1;->g(J)V

    iget-object v0, p0, Ln/h1;->d:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ln/h1;->a:Ln/i0;

    iget-object v2, v1, Ln/i0;->b:Lr0/e1;

    invoke-virtual {v2, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Ln/h1;->b:Ln/h1;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln/h1;->f:Lr0/c1;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lr0/c1;->g(J)V

    :cond_0
    iget-object v0, v1, Ln/i0;->a:Lr0/e1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Ln/h1;->j:Ld1/v;

    invoke-virtual {p0}, Ld1/v;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/h1;

    invoke-virtual {v2}, Ln/h1;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    iget-object v2, p0, Ln/h1;->g:Lr0/c1;

    invoke-virtual {v2, v0, v1}, Lr0/c1;->g(J)V

    iget-object v0, p0, Ln/h1;->a:Ln/i0;

    iget-object v1, v0, Ln/i0;->a:Lr0/e1;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ln/h1;->g()Z

    move-result v1

    iget-object v2, p0, Ln/h1;->d:Lr0/e1;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Ln/i0;->b:Lr0/e1;

    invoke-virtual {v0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v2, p2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Ln/h1;->k:Lr0/e1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    new-instance v0, Ln/c1;

    invoke-direct {v0, p1, p2}, Ln/c1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Ln/h1;->e:Lr0/e1;

    invoke-virtual {p1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Ln/h1;->j:Ld1/v;

    invoke-virtual {p1}, Ld1/v;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_4

    invoke-virtual {p1, v1}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/h1;

    const-string v3, "null cannot be cast to non-null type androidx.compose.animation.core.Transition<kotlin.Any>"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ln/h1;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Ln/h1;->d:Lr0/e1;

    invoke-virtual {v4}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ln/h1;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Ln/h1;->i:Ld1/v;

    invoke-virtual {p0}, Ld1/v;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_5

    invoke-virtual {p0, v0}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln/d1;

    invoke-virtual {p2}, Ln/d1;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Ln/h1;->d:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ln/c1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ln/c1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Ln/h1;->e:Lr0/e1;

    invoke-virtual {v2, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ln/h1;->a:Ln/i0;

    iget-object v2, v2, Ln/i0;->b:Lr0/e1;

    invoke-virtual {v2, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Ln/h1;->g:Lr0/c1;

    iget-object v0, p1, Lr0/c1;->m:Lr0/k2;

    invoke-static {v0, p1}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object p1

    check-cast p1, Lr0/k2;

    iget-wide v0, p1, Lr0/k2;->c:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ln/h1;->h:Lr0/e1;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Ln/h1;->i:Ld1/v;

    invoke-virtual {p0}, Ld1/v;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    invoke-virtual {p0, v0}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/d1;

    const/high16 v2, -0x40000000    # -2.0f

    iget-object v1, v1, Ln/d1;->q:Lr0/a1;

    invoke-virtual {v1, v2}, Lr0/a1;->h(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Ln/h1;->i:Ld1/v;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const-string v1, "Transition animation values: "

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/d1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
