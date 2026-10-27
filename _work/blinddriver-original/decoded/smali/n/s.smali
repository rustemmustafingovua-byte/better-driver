.class public final Ln/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/f;


# instance fields
.field public final a:Lg5/i;

.field public final b:Ln/o1;

.field public final c:Ljava/lang/Object;

.field public final d:Ln/p;

.field public final e:Ln/p;

.field public final f:Ln/p;

.field public final g:Ljava/lang/Object;

.field public final h:J


# direct methods
.method public constructor <init>(Ln/t;Ln/o1;Ljava/lang/Object;Ln/p;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v4, Lg5/i;

    move-object/from16 v5, p1

    iget-object v5, v5, Ln/t;->a:Lb0/l1;

    const/16 v6, 0xd

    invoke-direct {v4, v6, v5}, Lg5/i;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Ln/s;->a:Lg5/i;

    iput-object v1, v0, Ln/s;->b:Ln/o1;

    iput-object v2, v0, Ln/s;->c:Ljava/lang/Object;

    iget-object v5, v1, Ln/o1;->a:Li9/c;

    invoke-interface {v5, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/p;

    iput-object v2, v0, Ln/s;->d:Ln/p;

    invoke-static {v3}, Ln/d;->g(Ln/p;)Ln/p;

    move-result-object v5

    iput-object v5, v0, Ln/s;->e:Ln/p;

    iget-object v1, v1, Ln/o1;->b:Li9/c;

    iget-object v5, v4, Lg5/i;->p:Ljava/lang/Object;

    check-cast v5, Ln/p;

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ln/p;->c()Ln/p;

    move-result-object v5

    iput-object v5, v4, Lg5/i;->p:Ljava/lang/Object;

    :cond_0
    iget-object v5, v4, Lg5/i;->p:Ljava/lang/Object;

    check-cast v5, Ln/p;

    const-string v7, "targetVector"

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ln/p;->b()I

    move-result v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_2

    iget-object v12, v4, Lg5/i;->p:Ljava/lang/Object;

    check-cast v12, Ln/p;

    if-eqz v12, :cond_1

    iget-object v13, v4, Lg5/i;->m:Ljava/lang/Object;

    check-cast v13, Lb0/l1;

    invoke-virtual {v2, v9}, Ln/p;->a(I)F

    move-result v14

    invoke-virtual {v3, v9}, Ln/p;->a(I)F

    move-result v15

    iget-object v13, v13, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v13, Lm/e0;

    invoke-virtual {v13, v15}, Lm/e0;->b(F)D

    move-result-wide v16

    const/16 p1, 0x0

    sget v6, Lm/f0;->a:F

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    float-to-double v10, v6

    sub-double v18, v10, p2

    iget v6, v13, Lm/e0;->a:F

    iget v13, v13, Lm/e0;->b:F

    mul-float/2addr v6, v13

    move/from16 v20, v9

    float-to-double v8, v6

    div-double v10, v10, v18

    mul-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    double-to-float v6, v10

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v14

    move/from16 v6, v20

    invoke-virtual {v12, v8, v6}, Ln/p;->e(FI)V

    add-int/lit8 v9, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x0

    invoke-static {v7}, Lj9/n;->m(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 p1, 0x0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    iget-object v2, v4, Lg5/i;->p:Ljava/lang/Object;

    check-cast v2, Ln/p;

    if-eqz v2, :cond_7

    invoke-interface {v1, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ln/s;->g:Ljava/lang/Object;

    iget-object v1, v0, Ln/s;->a:Lg5/i;

    iget-object v2, v0, Ln/s;->d:Ln/p;

    iget-object v4, v1, Lg5/i;->o:Ljava/lang/Object;

    check-cast v4, Ln/p;

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ln/p;->c()Ln/p;

    move-result-object v4

    iput-object v4, v1, Lg5/i;->o:Ljava/lang/Object;

    :cond_3
    iget-object v4, v1, Lg5/i;->o:Ljava/lang/Object;

    check-cast v4, Ln/p;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ln/p;->b()I

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_4

    iget-object v8, v1, Lg5/i;->m:Ljava/lang/Object;

    check-cast v8, Lb0/l1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ln/p;->a(I)F

    move-result v9

    iget-object v8, v8, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v8, Lm/e0;

    invoke-virtual {v8, v9}, Lm/e0;->b(F)D

    move-result-wide v8

    sget v10, Lm/f0;->a:F

    float-to-double v10, v10

    sub-double v10, v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    iput-wide v5, v0, Ln/s;->h:J

    iget-object v1, v0, Ln/s;->a:Lg5/i;

    iget-object v2, v0, Ln/s;->d:Ln/p;

    invoke-virtual {v1, v5, v6, v2, v3}, Lg5/i;->t(JLn/p;Ln/p;)Ln/p;

    move-result-object v1

    invoke-static {v1}, Ln/d;->g(Ln/p;)Ln/p;

    move-result-object v1

    iput-object v1, v0, Ln/s;->f:Ln/p;

    invoke-virtual {v1}, Ln/p;->b()I

    move-result v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v1, :cond_5

    iget-object v2, v0, Ln/s;->f:Ln/p;

    invoke-virtual {v2, v8}, Ln/p;->a(I)F

    move-result v3

    iget-object v4, v0, Ln/s;->a:Lg5/i;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Ln/s;->a:Lg5/i;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-static {v3, v5, v4}, Lg6/c1;->e(FFF)F

    move-result v3

    invoke-virtual {v2, v3, v8}, Ln/p;->e(FI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    const-string v0, "velocityVector"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {v7}, Lj9/n;->m(Ljava/lang/String;)V

    throw p1

    :cond_8
    const/16 p1, 0x0

    invoke-static {v7}, Lj9/n;->m(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Ln/s;->h:J

    return-wide v0
.end method

.method public final c()Ln/o1;
    .locals 0

    iget-object p0, p0, Ln/s;->b:Ln/o1;

    return-object p0
.end method

.method public final d(J)Ln/p;
    .locals 2

    invoke-interface {p0, p1, p2}, Ln/f;->e(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln/s;->d:Ln/p;

    iget-object v1, p0, Ln/s;->e:Ln/p;

    iget-object p0, p0, Ln/s;->a:Lg5/i;

    invoke-virtual {p0, p1, p2, v0, v1}, Lg5/i;->t(JLn/p;Ln/p;)Ln/p;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Ln/s;->f:Ln/p;

    return-object p0
.end method

.method public final f(J)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p2}, Ln/f;->e(J)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Ln/s;->b:Ln/o1;

    iget-object v1, v1, Ln/o1;->b:Li9/c;

    iget-object v2, v0, Ln/s;->a:Lg5/i;

    iget-object v3, v2, Lg5/i;->n:Ljava/lang/Object;

    check-cast v3, Ln/p;

    iget-object v4, v0, Ln/s;->d:Ln/p;

    if-nez v3, :cond_0

    invoke-virtual {v4}, Ln/p;->c()Ln/p;

    move-result-object v3

    iput-object v3, v2, Lg5/i;->n:Ljava/lang/Object;

    :cond_0
    iget-object v3, v2, Lg5/i;->n:Ljava/lang/Object;

    check-cast v3, Ln/p;

    const/4 v5, 0x0

    const-string v6, "valueVector"

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ln/p;->b()I

    move-result v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_3

    iget-object v8, v2, Lg5/i;->n:Ljava/lang/Object;

    check-cast v8, Ln/p;

    if-eqz v8, :cond_2

    iget-object v9, v2, Lg5/i;->m:Ljava/lang/Object;

    check-cast v9, Lb0/l1;

    invoke-virtual {v4, v7}, Ln/p;->a(I)F

    move-result v10

    iget-object v11, v0, Ln/s;->e:Ln/p;

    invoke-virtual {v11, v7}, Ln/p;->a(I)F

    move-result v11

    const-wide/32 v12, 0xf4240

    div-long v12, p1, v12

    iget-object v9, v9, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v9, Lm/e0;

    invoke-virtual {v9, v11}, Lm/e0;->a(F)Lm/d0;

    move-result-object v9

    iget-wide v14, v9, Lm/d0;->c:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-lez v11, :cond_1

    long-to-float v11, v12

    long-to-float v12, v14

    div-float/2addr v11, v12

    goto :goto_1

    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_1
    iget v12, v9, Lm/d0;->b:F

    iget v9, v9, Lm/d0;->a:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    mul-float/2addr v9, v12

    invoke-static {v11}, Lm/c;->a(F)Lm/b;

    move-result-object v11

    iget v11, v11, Lm/b;->a:F

    mul-float/2addr v9, v11

    add-float/2addr v9, v10

    invoke-virtual {v8, v9, v7}, Ln/p;->e(FI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lj9/n;->m(Ljava/lang/String;)V

    throw v5

    :cond_3
    iget-object v0, v2, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Ln/p;

    if-eqz v0, :cond_4

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v6}, Lj9/n;->m(Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-static {v6}, Lj9/n;->m(Ljava/lang/String;)V

    throw v5

    :cond_6
    iget-object v0, v0, Ln/s;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln/s;->g:Ljava/lang/Object;

    return-object p0
.end method
