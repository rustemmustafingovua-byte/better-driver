.class public final Lr1/c;
.super Lr1/c0;
.source "SourceFile"


# instance fields
.field public b:[F

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:J

.field public f:Ljava/util/List;

.field public g:Z

.field public h:Lm1/g;

.field public i:Li9/c;

.field public final j:Landroidx/fragment/app/t;

.field public k:Ljava/lang/String;

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr1/c;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr1/c;->d:Z

    sget-wide v1, Lm1/p;->g:J

    iput-wide v1, p0, Lr1/c;->e:J

    sget v1, Lr1/h0;->a:I

    sget-object v1, Lu8/r;->l:Lu8/r;

    iput-object v1, p0, Lr1/c;->f:Ljava/util/List;

    iput-boolean v0, p0, Lr1/c;->g:Z

    new-instance v1, Landroidx/fragment/app/t;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lr1/c;->j:Landroidx/fragment/app/t;

    const-string v1, ""

    iput-object v1, p0, Lr1/c;->k:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lr1/c;->o:F

    iput v1, p0, Lr1/c;->p:F

    iput-boolean v0, p0, Lr1/c;->s:Z

    return-void
.end method


# virtual methods
.method public final a(Lo1/d;)V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lr1/c;->s:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lr1/c;->b:[F

    if-nez v1, :cond_0

    invoke-static {}, Lm1/z;->a()[F

    move-result-object v1

    iput-object v1, v0, Lr1/c;->b:[F

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lm1/z;->d([F)V

    :goto_0
    iget v3, v0, Lr1/c;->q:F

    iget v4, v0, Lr1/c;->m:F

    add-float/2addr v3, v4

    iget v4, v0, Lr1/c;->r:F

    iget v5, v0, Lr1/c;->n:F

    add-float/2addr v4, v5

    invoke-static {v1, v3, v4}, Lm1/z;->f([FFF)V

    iget v3, v0, Lr1/c;->l:F

    array-length v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/16 v12, 0x10

    if-ge v4, v12, :cond_1

    goto :goto_1

    :cond_1
    float-to-double v3, v3

    const-wide v13, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v3, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aget v4, v1, v2

    aget v14, v1, v11

    mul-float v15, v3, v4

    mul-float v16, v13, v14

    add-float v16, v16, v15

    neg-float v15, v13

    mul-float/2addr v4, v15

    mul-float/2addr v14, v3

    add-float/2addr v14, v4

    aget v4, v1, v5

    aget v17, v1, v10

    mul-float v18, v3, v4

    mul-float v19, v13, v17

    add-float v19, v19, v18

    mul-float/2addr v4, v15

    mul-float v17, v17, v3

    add-float v17, v17, v4

    aget v4, v1, v9

    aget v18, v1, v8

    mul-float v20, v3, v4

    mul-float v21, v13, v18

    add-float v21, v21, v20

    mul-float/2addr v4, v15

    mul-float v18, v18, v3

    add-float v18, v18, v4

    aget v4, v1, v7

    aget v20, v1, v6

    mul-float v22, v3, v4

    mul-float v13, v13, v20

    add-float v13, v13, v22

    mul-float/2addr v15, v4

    mul-float v3, v3, v20

    add-float/2addr v3, v15

    aput v16, v1, v2

    aput v19, v1, v5

    aput v21, v1, v9

    aput v13, v1, v7

    aput v14, v1, v11

    aput v17, v1, v10

    aput v18, v1, v8

    aput v3, v1, v6

    :goto_1
    iget v3, v0, Lr1/c;->o:F

    iget v4, v0, Lr1/c;->p:F

    array-length v13, v1

    if-ge v13, v12, :cond_2

    goto :goto_2

    :cond_2
    aget v12, v1, v2

    mul-float/2addr v12, v3

    aput v12, v1, v2

    aget v12, v1, v5

    mul-float/2addr v12, v3

    aput v12, v1, v5

    aget v5, v1, v9

    mul-float/2addr v5, v3

    aput v5, v1, v9

    aget v5, v1, v7

    mul-float/2addr v5, v3

    aput v5, v1, v7

    aget v3, v1, v11

    mul-float/2addr v3, v4

    aput v3, v1, v11

    aget v3, v1, v10

    mul-float/2addr v3, v4

    aput v3, v1, v10

    aget v3, v1, v8

    mul-float/2addr v3, v4

    aput v3, v1, v8

    aget v3, v1, v6

    mul-float/2addr v3, v4

    aput v3, v1, v6

    const/16 v3, 0x8

    aget v4, v1, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    aput v4, v1, v3

    const/16 v3, 0x9

    aget v4, v1, v3

    mul-float/2addr v4, v5

    aput v4, v1, v3

    const/16 v3, 0xa

    aget v4, v1, v3

    mul-float/2addr v4, v5

    aput v4, v1, v3

    const/16 v3, 0xb

    aget v4, v1, v3

    mul-float/2addr v4, v5

    aput v4, v1, v3

    :goto_2
    iget v3, v0, Lr1/c;->m:F

    neg-float v3, v3

    iget v4, v0, Lr1/c;->n:F

    neg-float v4, v4

    invoke-static {v1, v3, v4}, Lm1/z;->f([FFF)V

    iput-boolean v2, v0, Lr1/c;->s:Z

    :cond_3
    iget-boolean v1, v0, Lr1/c;->g:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lr1/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lr1/c;->h:Lm1/g;

    if-nez v1, :cond_4

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v1

    iput-object v1, v0, Lr1/c;->h:Lm1/g;

    :cond_4
    iget-object v3, v0, Lr1/c;->f:Ljava/util/List;

    invoke-static {v3, v1}, Lr1/b;->e(Ljava/util/List;Lm1/g;)V

    :cond_5
    iput-boolean v2, v0, Lr1/c;->g:Z

    :cond_6
    invoke-interface/range {p1 .. p1}, Lo1/d;->Y()Lg5/m;

    move-result-object v1

    invoke-virtual {v1}, Lg5/m;->m()J

    move-result-wide v3

    invoke-virtual {v1}, Lg5/m;->h()Lm1/o;

    move-result-object v5

    invoke-interface {v5}, Lm1/o;->h()V

    :try_start_0
    iget-object v5, v1, Lg5/m;->m:Ljava/lang/Object;

    check-cast v5, Lm2/j;

    iget-object v5, v5, Lm2/j;->m:Ljava/lang/Object;

    check-cast v5, Lg5/m;

    iget-object v6, v0, Lr1/c;->b:[F

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lg5/m;->h()Lm1/o;

    move-result-object v7

    invoke-interface {v7, v6}, Lm1/o;->l([F)V

    :cond_7
    iget-object v6, v0, Lr1/c;->h:Lm1/g;

    iget-object v7, v0, Lr1/c;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lg5/m;->h()Lm1/o;

    move-result-object v5

    invoke-interface {v5, v6}, Lm1/o;->c(Lm1/g;)V

    :cond_8
    iget-object v0, v0, Lr1/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_3
    if-ge v2, v5, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr1/c0;

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Lr1/c0;->a(Lo1/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_9
    invoke-static {v1, v3, v4}, Lm/a;->t(Lg5/m;J)V

    return-void

    :goto_4
    invoke-static {v1, v3, v4}, Lm/a;->t(Lg5/m;J)V

    throw v0
.end method

.method public final b()Li9/c;
    .locals 0

    iget-object p0, p0, Lr1/c;->i:Li9/c;

    return-object p0
.end method

.method public final d(Landroidx/fragment/app/t;)V
    .locals 0

    iput-object p1, p0, Lr1/c;->i:Li9/c;

    return-void
.end method

.method public final e(ILr1/c0;)V
    .locals 2

    iget-object v0, p0, Lr1/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, p2}, Lr1/c;->g(Lr1/c0;)V

    iget-object p1, p0, Lr1/c;->j:Landroidx/fragment/app/t;

    invoke-virtual {p2, p1}, Lr1/c0;->d(Landroidx/fragment/app/t;)V

    invoke-virtual {p0}, Lr1/c0;->c()V

    return-void
.end method

.method public final f(J)V
    .locals 4

    iget-boolean v0, p0, Lr1/c;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x10

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lr1/c;->e:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iput-wide p1, p0, Lr1/c;->e:J

    return-void

    :cond_1
    sget v0, Lr1/h0;->a:I

    invoke-static {v2, v3}, Lm1/p;->h(J)F

    move-result v0

    invoke-static {p1, p2}, Lm1/p;->h(J)F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-static {v2, v3}, Lm1/p;->g(J)F

    move-result v0

    invoke-static {p1, p2}, Lm1/p;->g(J)F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-static {v2, v3}, Lm1/p;->e(J)F

    move-result v0

    invoke-static {p1, p2}, Lm1/p;->e(J)F

    move-result p1

    cmpg-float p1, v0, p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lr1/c;->d:Z

    sget-wide p1, Lm1/p;->g:J

    iput-wide p1, p0, Lr1/c;->e:J

    :cond_3
    :goto_0
    return-void
.end method

.method public final g(Lr1/c0;)V
    .locals 4

    instance-of v0, p1, Lr1/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Lr1/h;

    iget-object v0, p1, Lr1/h;->b:Lm1/m;

    iget-boolean v2, p0, Lr1/c;->d:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    instance-of v2, v0, Lm1/j0;

    if-eqz v2, :cond_1

    check-cast v0, Lm1/j0;

    iget-wide v2, v0, Lm1/j0;->a:J

    invoke-virtual {p0, v2, v3}, Lr1/c;->f(J)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lr1/c;->d:Z

    sget-wide v2, Lm1/p;->g:J

    iput-wide v2, p0, Lr1/c;->e:J

    :cond_2
    :goto_0
    iget-object p1, p1, Lr1/h;->g:Lm1/m;

    iget-boolean v0, p0, Lr1/c;->d:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_7

    instance-of v0, p1, Lm1/j0;

    if-eqz v0, :cond_4

    check-cast p1, Lm1/j0;

    iget-wide v0, p1, Lm1/j0;->a:J

    invoke-virtual {p0, v0, v1}, Lr1/c;->f(J)V

    return-void

    :cond_4
    iput-boolean v1, p0, Lr1/c;->d:Z

    sget-wide v0, Lm1/p;->g:J

    iput-wide v0, p0, Lr1/c;->e:J

    return-void

    :cond_5
    instance-of v0, p1, Lr1/c;

    if-eqz v0, :cond_7

    check-cast p1, Lr1/c;

    iget-boolean v0, p1, Lr1/c;->d:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lr1/c;->d:Z

    if-eqz v0, :cond_6

    iget-wide v0, p1, Lr1/c;->e:J

    invoke-virtual {p0, v0, v1}, Lr1/c;->f(J)V

    return-void

    :cond_6
    iput-boolean v1, p0, Lr1/c;->d:Z

    sget-wide v0, Lm1/p;->g:J

    iput-wide v0, p0, Lr1/c;->e:J

    :cond_7
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VGroup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lr1/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr1/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr1/c0;

    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
