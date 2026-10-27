.class public final Lo0/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo0/b0;->a:F

    iput p2, p0, Lo0/b0;->b:F

    iput p3, p0, Lo0/b0;->c:F

    iput p4, p0, Lo0/b0;->d:F

    iput p5, p0, Lo0/b0;->e:F

    iput p6, p0, Lo0/b0;->f:F

    return-void
.end method


# virtual methods
.method public final a(ZLs/i;Lr0/q;I)Lr0/r2;
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    move/from16 v1, p4

    const v2, -0x691c96f5

    invoke-virtual {v8, v2}, Lr0/q;->b0(I)V

    iget v2, p0, Lo0/b0;->a:F

    sget-object v5, Lr0/m;->a:Lr0/e;

    const/4 v9, 0x0

    if-nez v0, :cond_1

    const v0, 0x9ffae2b

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_0

    new-instance v0, Lb3/f;

    invoke-direct {v0, v2}, Lb3/f;-><init>(F)V

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v8, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Lr0/u0;

    invoke-virtual {v8, v9}, Lr0/q;->q(Z)V

    invoke-virtual {v8, v9}, Lr0/q;->q(Z)V

    return-object v0

    :cond_1
    const v6, 0xa00cb77

    invoke-virtual {v8, v6}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v9}, Lr0/q;->q(Z)V

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_2

    new-instance v6, Ld1/v;

    invoke-direct {v6}, Ld1/v;-><init>()V

    invoke-virtual {v8, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v6, Ld1/v;

    and-int/lit8 v7, v1, 0x70

    xor-int/lit8 v7, v7, 0x30

    const/16 v10, 0x20

    const/4 v11, 0x1

    if-le v7, v10, :cond_3

    invoke-virtual {v8, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    and-int/lit8 v7, v1, 0x30

    if-ne v7, v10, :cond_5

    :cond_4
    move v7, v11

    goto :goto_0

    :cond_5
    move v7, v9

    :goto_0
    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    const/4 v12, 0x0

    if-nez v7, :cond_6

    if-ne v10, v5, :cond_7

    :cond_6
    new-instance v10, Lo0/s;

    const/4 v7, 0x1

    invoke-direct {v10, v0, v6, v12, v7}, Lo0/s;-><init>(Ls/i;Ld1/v;Ly8/c;I)V

    invoke-virtual {v8, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v10, Li9/e;

    invoke-static {v10, v0, v8}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/h;

    if-nez p1, :cond_8

    iget v2, p0, Lo0/b0;->f:F

    goto :goto_1

    :cond_8
    instance-of v6, v0, Ls/k;

    if-eqz v6, :cond_9

    iget v2, p0, Lo0/b0;->b:F

    goto :goto_1

    :cond_9
    instance-of v6, v0, Ls/f;

    if-eqz v6, :cond_a

    iget v2, p0, Lo0/b0;->d:F

    goto :goto_1

    :cond_a
    instance-of v6, v0, Ls/d;

    if-eqz v6, :cond_b

    iget v2, p0, Lo0/b0;->c:F

    goto :goto_1

    :cond_b
    instance-of v6, v0, Ls/b;

    if-eqz v6, :cond_c

    iget v2, p0, Lo0/b0;->e:F

    :cond_c
    :goto_1
    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_d

    new-instance v6, Ln/c;

    new-instance v7, Lb3/f;

    invoke-direct {v7, v2}, Lb3/f;-><init>(F)V

    sget-object v10, Ln/d;->l:Ln/o1;

    const/16 v13, 0xc

    invoke-direct {v6, v7, v10, v12, v13}, Ln/c;-><init>(Ljava/lang/Object;Ln/o1;Ljava/lang/Object;I)V

    invoke-virtual {v8, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    check-cast v6, Ln/c;

    new-instance v10, Lb3/f;

    invoke-direct {v10, v2}, Lb3/f;-><init>(F)V

    invoke-virtual {v8, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v8, v2}, Lr0/q;->d(F)Z

    move-result v12

    or-int/2addr v7, v12

    and-int/lit8 v12, v1, 0xe

    xor-int/lit8 v12, v12, 0x6

    const/4 v13, 0x4

    if-le v12, v13, :cond_e

    invoke-virtual {v8, p1}, Lr0/q;->h(Z)Z

    move-result v12

    if-nez v12, :cond_f

    :cond_e
    and-int/lit8 v12, v1, 0x6

    if-ne v12, v13, :cond_10

    :cond_f
    move v12, v11

    goto :goto_2

    :cond_10
    move v12, v9

    :goto_2
    or-int/2addr v7, v12

    and-int/lit16 v12, v1, 0x380

    xor-int/lit16 v12, v12, 0x180

    const/16 v13, 0x100

    if-le v12, v13, :cond_11

    invoke-virtual {v8, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    :cond_11
    and-int/lit16 v1, v1, 0x180

    if-ne v1, v13, :cond_12

    goto :goto_3

    :cond_12
    move v11, v9

    :cond_13
    :goto_3
    or-int v1, v7, v11

    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v1, :cond_14

    if-ne v7, v5, :cond_15

    :cond_14
    move-object v5, v0

    goto :goto_4

    :cond_15
    move-object v1, v6

    goto :goto_5

    :goto_4
    new-instance v0, Lo0/t;

    move-object v1, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lo0/t;-><init>(Ln/c;FZLjava/lang/Object;Ls/h;Ly8/c;I)V

    invoke-virtual {v8, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v7, v0

    :goto_5
    check-cast v7, Li9/e;

    invoke-static {v7, v10, v8}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v0, v1, Ln/c;->c:Ln/k;

    invoke-virtual {v8, v9}, Lr0/q;->q(Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_7

    instance-of v0, p1, Lo0/b0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lo0/b0;

    iget v0, p1, Lo0/b0;->a:F

    iget v1, p0, Lo0/b0;->a:F

    invoke-static {v1, v0}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lo0/b0;->b:F

    iget v1, p1, Lo0/b0;->b:F

    invoke-static {v0, v1}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Lo0/b0;->c:F

    iget v1, p1, Lo0/b0;->c:F

    invoke-static {v0, v1}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Lo0/b0;->d:F

    iget v1, p1, Lo0/b0;->d:F

    invoke-static {v0, v1}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget p0, p0, Lo0/b0;->f:F

    iget p1, p1, Lo0/b0;->f:F

    invoke-static {p0, p1}, Lb3/f;->b(FF)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lo0/b0;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lo0/b0;->b:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lo0/b0;->c:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lo0/b0;->d:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget p0, p0, Lo0/b0;->f:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
