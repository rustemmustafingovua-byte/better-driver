.class public final Ln/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/s1;


# instance fields
.field public final l:Lk/w;

.field public final m:Lk/x;

.field public final n:I

.field public final o:Ln/v;

.field public p:[I

.field public q:[F

.field public r:Ln/p;

.field public s:Ln/p;

.field public t:Ln/p;

.field public u:Ln/p;

.field public v:[F

.field public w:[F

.field public x:Lm2/j;


# direct methods
.method public constructor <init>(Lk/w;Lk/x;ILn/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/w1;->l:Lk/w;

    iput-object p2, p0, Ln/w1;->m:Lk/x;

    iput p3, p0, Ln/w1;->n:I

    iput-object p4, p0, Ln/w1;->o:Ln/v;

    sget-object p1, Ln/r1;->a:[I

    iput-object p1, p0, Ln/w1;->p:[I

    sget-object p1, Ln/r1;->b:[F

    iput-object p1, p0, Ln/w1;->q:[F

    iput-object p1, p0, Ln/w1;->v:[F

    iput-object p1, p0, Ln/w1;->w:[F

    sget-object p1, Ln/r1;->c:Lm2/j;

    iput-object p1, p0, Ln/w1;->x:Lm2/j;

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 4

    iget-object p0, p0, Ln/w1;->l:Lk/w;

    iget v0, p0, Lk/w;->b:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v0, :cond_4

    iget v1, p0, Lk/w;->b:I

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lk/w;->a:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    neg-int v2, v1

    :cond_2
    const/4 p0, -0x1

    if-ge v2, p0, :cond_3

    add-int/lit8 v2, v2, 0x2

    neg-int p0, v2

    return p0

    :cond_3
    return v2

    :cond_4
    const-string p0, ""

    invoke-static {p0}, Ll/a;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(IIZ)F
    .locals 4

    iget-object v0, p0, Ln/w1;->l:Lk/w;

    iget v1, v0, Lk/w;->b:I

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x3e8

    if-lt p1, v1, :cond_0

    int-to-float p0, p2

    :goto_0
    long-to-float p1, v2

    div-float/2addr p0, p1

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Lk/w;->c(I)I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lk/w;->c(I)I

    move-result p1

    if-ne p2, v1, :cond_1

    int-to-float p0, v1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v1

    iget-object v0, p0, Ln/w1;->m:Lk/x;

    invoke-virtual {v0, v1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/v1;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ln/v1;->b:Ln/v;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Ln/w1;->o:Ln/v;

    :cond_3
    sub-int/2addr p2, v1

    int-to-float p0, p2

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-interface {v0, p0}, Ln/v;->d(F)F

    move-result p0

    if-eqz p3, :cond_4

    return p0

    :cond_4
    mul-float/2addr p1, p0

    int-to-float p0, v1

    add-float/2addr p1, p0

    long-to-float p0, v2

    div-float/2addr p1, p0

    return p1
.end method

.method public final e(Ln/p;Ln/p;Ln/p;)V
    .locals 10

    iget-object v0, p0, Ln/w1;->x:Lm2/j;

    sget-object v1, Ln/r1;->c:Lm2/j;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Ln/w1;->r:Ln/p;

    iget-object v3, p0, Ln/w1;->m:Lk/x;

    iget-object v4, p0, Ln/w1;->l:Lk/w;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ln/p;->c()Ln/p;

    move-result-object v1

    iput-object v1, p0, Ln/w1;->r:Ln/p;

    invoke-virtual {p3}, Ln/p;->c()Ln/p;

    move-result-object p3

    iput-object p3, p0, Ln/w1;->s:Ln/p;

    iget p3, v4, Lk/w;->b:I

    new-array v1, p3, [F

    move v5, v2

    :goto_1
    if-ge v5, p3, :cond_1

    invoke-virtual {v4, v5}, Lk/w;->c(I)I

    move-result v6

    int-to-float v6, v6

    const-wide/16 v7, 0x3e8

    long-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Ln/w1;->q:[F

    iget p3, v4, Lk/w;->b:I

    new-array v1, p3, [I

    move v5, v2

    :goto_2
    if-ge v5, p3, :cond_2

    invoke-virtual {v4, v5}, Lk/w;->c(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln/v1;

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iput-object v1, p0, Ln/w1;->p:[I

    :cond_3
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object p3, p0, Ln/w1;->x:Lm2/j;

    sget-object v0, Ln/r1;->c:Lm2/j;

    if-eq p3, v0, :cond_6

    iget-object p3, p0, Ln/w1;->t:Ln/p;

    invoke-static {p3, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Ln/w1;->u:Ln/p;

    invoke-static {p3, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    return-void

    :cond_6
    :goto_4
    iput-object p1, p0, Ln/w1;->t:Ln/p;

    iput-object p2, p0, Ln/w1;->u:Ln/p;

    invoke-virtual {p1}, Ln/p;->b()I

    move-result p3

    rem-int/lit8 p3, p3, 0x2

    invoke-virtual {p1}, Ln/p;->b()I

    move-result v0

    add-int/2addr v0, p3

    new-array p3, v0, [F

    iput-object p3, p0, Ln/w1;->v:[F

    new-array p3, v0, [F

    iput-object p3, p0, Ln/w1;->w:[F

    iget p3, v4, Lk/w;->b:I

    new-array v1, p3, [[F

    move v5, v2

    :goto_5
    if-ge v5, p3, :cond_b

    invoke-virtual {v4, v5}, Lk/w;->c(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln/v1;

    if-nez v6, :cond_7

    if-nez v7, :cond_7

    new-array v6, v0, [F

    move v7, v2

    :goto_6
    if-ge v7, v0, :cond_a

    invoke-virtual {p1, v7}, Ln/p;->a(I)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    iget v8, p0, Ln/w1;->n:I

    if-ne v6, v8, :cond_8

    if-nez v7, :cond_8

    new-array v6, v0, [F

    move v7, v2

    :goto_7
    if-ge v7, v0, :cond_a

    invoke-virtual {p2, v7}, Ln/p;->a(I)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_8
    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v6, v7, Ln/v1;->a:Ln/p;

    new-array v7, v0, [F

    move v8, v2

    :goto_8
    if-ge v8, v0, :cond_9

    invoke-virtual {v6, v8}, Ln/p;->a(I)F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_9
    move-object v6, v7

    :cond_a
    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    new-instance p1, Lm2/j;

    iget-object p2, p0, Ln/w1;->p:[I

    iget-object p3, p0, Ln/w1;->q:[F

    invoke-direct {p1, p2, p3, v1}, Lm2/j;-><init>([I[F[[F)V

    iput-object p1, p0, Ln/w1;->x:Lm2/j;

    return-void
.end method

.method public final i(JLn/p;Ln/p;Ln/p;)Ln/p;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-wide/32 v3, 0xf4240

    div-long v3, p1, v3

    sget-object v5, Ln/r1;->a:[I

    const/4 v5, 0x0

    int-to-long v6, v5

    sub-long/2addr v3, v6

    iget v6, v0, Ln/w1;->n:I

    int-to-long v7, v6

    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-gez v11, :cond_0

    move-wide v3, v9

    :cond_0
    cmp-long v9, v3, v7

    if-lez v9, :cond_1

    goto :goto_0

    :cond_1
    move-wide v7, v3

    :goto_0
    long-to-int v3, v7

    iget-object v4, v0, Ln/w1;->m:Lk/x;

    invoke-virtual {v4, v3}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln/v1;

    if-eqz v7, :cond_2

    iget-object v0, v7, Ln/v1;->a:Ln/p;

    return-object v0

    :cond_2
    if-lt v3, v6, :cond_3

    return-object v2

    :cond_3
    if-gtz v3, :cond_4

    return-object v1

    :cond_4
    move-object/from16 v6, p5

    invoke-virtual {v0, v1, v2, v6}, Ln/w1;->e(Ln/p;Ln/p;Ln/p;)V

    iget-object v6, v0, Ln/w1;->r:Ln/p;

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v7, v0, Ln/w1;->x:Lm2/j;

    sget-object v8, Ln/r1;->c:Lm2/j;

    const/4 v9, 0x1

    if-eq v7, v8, :cond_e

    invoke-virtual {v0, v3}, Ln/w1;->c(I)I

    move-result v1

    invoke-virtual {v0, v1, v3, v5}, Ln/w1;->d(IIZ)F

    move-result v1

    iget-object v2, v0, Ln/w1;->v:[F

    iget-object v0, v0, Ln/w1;->x:Lm2/j;

    iget-object v0, v0, Lm2/j;->m:Ljava/lang/Object;

    check-cast v0, [[Ln/q;

    array-length v3, v0

    sub-int/2addr v3, v9

    aget-object v4, v0, v5

    aget-object v4, v4, v5

    iget v4, v4, Ln/q;->a:F

    aget-object v7, v0, v3

    aget-object v7, v7, v5

    iget v7, v7, Ln/q;->b:F

    array-length v8, v2

    cmpg-float v10, v1, v4

    if-ltz v10, :cond_a

    cmpl-float v10, v1, v7

    if-lez v10, :cond_5

    goto :goto_4

    :cond_5
    array-length v3, v0

    move v4, v5

    move v7, v4

    :goto_1
    if-ge v4, v3, :cond_d

    move v10, v5

    move v11, v10

    :goto_2
    add-int/lit8 v12, v8, -0x1

    if-ge v10, v12, :cond_8

    aget-object v12, v0, v4

    aget-object v12, v12, v11

    iget v13, v12, Ln/q;->b:F

    cmpg-float v13, v1, v13

    if-gtz v13, :cond_7

    iget-boolean v7, v12, Ln/q;->p:Z

    if-eqz v7, :cond_6

    iget v7, v12, Ln/q;->a:F

    sub-float v13, v1, v7

    iget v14, v12, Ln/q;->k:F

    mul-float/2addr v13, v14

    iget v15, v12, Ln/q;->c:F

    iget v5, v12, Ln/q;->e:F

    sub-float/2addr v5, v15

    mul-float/2addr v5, v13

    add-float/2addr v5, v15

    aput v5, v2, v10

    add-int/lit8 v5, v10, 0x1

    sub-float v7, v1, v7

    mul-float/2addr v7, v14

    iget v13, v12, Ln/q;->d:F

    iget v12, v12, Ln/q;->f:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v7

    add-float/2addr v12, v13

    aput v12, v2, v5

    goto :goto_3

    :cond_6
    invoke-virtual {v12, v1}, Ln/q;->c(F)V

    iget v5, v12, Ln/q;->q:F

    iget v7, v12, Ln/q;->n:F

    iget v13, v12, Ln/q;->h:F

    mul-float/2addr v7, v13

    add-float/2addr v7, v5

    aput v7, v2, v10

    add-int/lit8 v5, v10, 0x1

    iget v7, v12, Ln/q;->r:F

    iget v13, v12, Ln/q;->o:F

    iget v12, v12, Ln/q;->i:F

    mul-float/2addr v13, v12

    add-float/2addr v13, v7

    aput v13, v2, v5

    :goto_3
    move v7, v9

    :cond_7
    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    if-eqz v7, :cond_9

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_a
    :goto_4
    cmpl-float v5, v1, v7

    if-lez v5, :cond_b

    move v4, v7

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    sub-float/2addr v1, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_6
    add-int/lit8 v10, v8, -0x1

    if-ge v5, v10, :cond_d

    aget-object v10, v0, v3

    aget-object v10, v10, v7

    iget-boolean v11, v10, Ln/q;->p:Z

    iget v12, v10, Ln/q;->r:F

    iget v13, v10, Ln/q;->q:F

    if-eqz v11, :cond_c

    iget v11, v10, Ln/q;->a:F

    sub-float v14, v4, v11

    iget v15, v10, Ln/q;->k:F

    mul-float/2addr v14, v15

    iget v9, v10, Ln/q;->c:F

    move-object/from16 p0, v0

    iget v0, v10, Ln/q;->e:F

    sub-float/2addr v0, v9

    mul-float/2addr v0, v14

    add-float/2addr v0, v9

    mul-float/2addr v13, v1

    add-float/2addr v13, v0

    aput v13, v2, v5

    add-int/lit8 v0, v5, 0x1

    sub-float v9, v4, v11

    mul-float/2addr v9, v15

    iget v11, v10, Ln/q;->d:F

    iget v10, v10, Ln/q;->f:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v9

    add-float/2addr v10, v11

    mul-float/2addr v12, v1

    add-float/2addr v12, v10

    aput v12, v2, v0

    goto :goto_7

    :cond_c
    move-object/from16 p0, v0

    invoke-virtual {v10, v4}, Ln/q;->c(F)V

    iget v0, v10, Ln/q;->n:F

    iget v9, v10, Ln/q;->h:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v13

    invoke-virtual {v10}, Ln/q;->a()F

    move-result v9

    mul-float/2addr v9, v1

    add-float/2addr v9, v0

    aput v9, v2, v5

    add-int/lit8 v0, v5, 0x1

    iget v9, v10, Ln/q;->o:F

    iget v11, v10, Ln/q;->i:F

    mul-float/2addr v9, v11

    add-float/2addr v9, v12

    invoke-virtual {v10}, Ln/q;->b()F

    move-result v10

    mul-float/2addr v10, v1

    add-float/2addr v10, v9

    aput v10, v2, v0

    :goto_7
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_d
    :goto_8
    array-length v0, v2

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v0, :cond_13

    aget v1, v2, v5

    invoke-virtual {v6, v1, v5}, Ln/p;->e(FI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_e
    invoke-virtual {v0, v3}, Ln/w1;->c(I)I

    move-result v5

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v3, v7}, Ln/w1;->d(IIZ)F

    move-result v3

    iget-object v0, v0, Ln/w1;->l:Lk/w;

    invoke-virtual {v0, v5}, Lk/w;->c(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln/v1;

    if-eqz v7, :cond_10

    iget-object v7, v7, Ln/v1;->a:Ln/p;

    if-nez v7, :cond_f

    goto :goto_a

    :cond_f
    move-object v1, v7

    :cond_10
    :goto_a
    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v0, v5}, Lk/w;->c(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/v1;

    if-eqz v0, :cond_11

    iget-object v0, v0, Ln/v1;->a:Ln/p;

    if-nez v0, :cond_12

    :cond_11
    move-object v0, v2

    :cond_12
    invoke-virtual {v6}, Ln/p;->b()I

    move-result v2

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v2, :cond_13

    invoke-virtual {v1, v5}, Ln/p;->a(I)F

    move-result v4

    invoke-virtual {v0, v5}, Ln/p;->a(I)F

    move-result v7

    const/4 v8, 0x1

    int-to-float v9, v8

    sub-float/2addr v9, v3

    mul-float/2addr v9, v4

    mul-float/2addr v7, v3

    add-float/2addr v7, v9

    invoke-virtual {v6, v7, v5}, Ln/p;->e(FI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_13
    return-object v6
.end method

.method public final o()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final p(JLn/p;Ln/p;Ln/p;)Ln/p;
    .locals 13

    move-object/from16 v5, p5

    const-wide/32 v6, 0xf4240

    div-long v0, p1, v6

    sget-object v2, Ln/r1;->a:[I

    const/4 v8, 0x0

    int-to-long v2, v8

    sub-long/2addr v0, v2

    iget v2, p0, Ln/w1;->n:I

    int-to-long v2, v2

    const-wide/16 v9, 0x0

    cmp-long v4, v0, v9

    if-gez v4, :cond_0

    move-wide v0, v9

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v11, v2

    goto :goto_0

    :cond_1
    move-wide v11, v0

    :goto_0
    cmp-long v0, v11, v9

    if-gez v0, :cond_2

    return-object v5

    :cond_2
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {p0, v3, v4, v5}, Ln/w1;->e(Ln/p;Ln/p;Ln/p;)V

    iget-object v9, p0, Ln/w1;->s:Ln/p;

    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Ln/w1;->x:Lm2/j;

    sget-object v1, Ln/r1;->c:Lm2/j;

    if-eq v0, v1, :cond_a

    long-to-int v0, v11

    invoke-virtual {p0, v0}, Ln/w1;->c(I)I

    move-result v1

    invoke-virtual {p0, v1, v0, v8}, Ln/w1;->d(IIZ)F

    move-result v0

    iget-object v1, p0, Ln/w1;->w:[F

    iget-object p0, p0, Ln/w1;->x:Lm2/j;

    iget-object p0, p0, Lm2/j;->m:Ljava/lang/Object;

    check-cast p0, [[Ln/q;

    aget-object v2, p0, v8

    aget-object v2, v2, v8

    iget v2, v2, Ln/q;->a:F

    array-length v3, p0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, p0, v3

    aget-object v3, v3, v8

    iget v3, v3, Ln/q;->b:F

    cmpg-float v5, v0, v2

    if-gez v5, :cond_3

    move v0, v2

    :cond_3
    cmpl-float v2, v0, v3

    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    array-length v0, v1

    array-length v2, p0

    move v5, v8

    move v6, v5

    :goto_2
    if-ge v5, v2, :cond_9

    move v7, v8

    move v10, v7

    :goto_3
    add-int/lit8 v11, v0, -0x1

    if-ge v7, v11, :cond_7

    aget-object v11, p0, v5

    aget-object v11, v11, v10

    iget v12, v11, Ln/q;->b:F

    cmpg-float v12, v3, v12

    if-gtz v12, :cond_6

    iget-boolean v6, v11, Ln/q;->p:Z

    if-eqz v6, :cond_5

    iget v6, v11, Ln/q;->q:F

    aput v6, v1, v7

    add-int/lit8 v6, v7, 0x1

    iget v11, v11, Ln/q;->r:F

    aput v11, v1, v6

    goto :goto_4

    :cond_5
    invoke-virtual {v11, v3}, Ln/q;->c(F)V

    invoke-virtual {v11}, Ln/q;->a()F

    move-result v6

    aput v6, v1, v7

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v11}, Ln/q;->b()F

    move-result v11

    aput v11, v1, v6

    :goto_4
    move v6, v4

    :cond_6
    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    :goto_5
    array-length p0, v1

    :goto_6
    if-ge v8, p0, :cond_b

    aget v0, v1, v8

    invoke-virtual {v9, v0, v8}, Ln/p;->e(FI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    const-wide/16 v0, 0x1

    sub-long v0, v11, v0

    mul-long v1, v0, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ln/w1;->i(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object v10

    mul-long v1, v11, v6

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Ln/w1;->i(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p0

    invoke-virtual {v10}, Ln/p;->b()I

    move-result v0

    :goto_7
    if-ge v8, v0, :cond_b

    invoke-virtual {v10, v8}, Ln/p;->a(I)F

    move-result v1

    invoke-virtual {p0, v8}, Ln/p;->a(I)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-virtual {v9, v1, v8}, Ln/p;->e(FI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_b
    return-object v9
.end method

.method public final r()I
    .locals 0

    iget p0, p0, Ln/w1;->n:I

    return p0
.end method
