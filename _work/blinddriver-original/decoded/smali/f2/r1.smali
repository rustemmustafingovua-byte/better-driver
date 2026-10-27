.class public final Lf2/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/p1;


# instance fields
.field public A:Lm1/v;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public final F:Landroidx/fragment/app/t;

.field public l:Lp1/b;

.field public final m:Lm1/t;

.field public final n:Lf2/y;

.field public o:Li9/e;

.field public p:Li9/a;

.field public q:J

.field public r:Z

.field public final s:[F

.field public t:[F

.field public u:Z

.field public v:Lb3/c;

.field public w:Lb3/m;

.field public final x:Lo1/b;

.field public y:I

.field public z:J


# direct methods
.method public constructor <init>(Lp1/b;Lm1/t;Lf2/y;Li9/e;Li9/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/r1;->l:Lp1/b;

    iput-object p2, p0, Lf2/r1;->m:Lm1/t;

    iput-object p3, p0, Lf2/r1;->n:Lf2/y;

    iput-object p4, p0, Lf2/r1;->o:Li9/e;

    iput-object p5, p0, Lf2/r1;->p:Li9/a;

    const p1, 0x7fffffff

    int-to-long p1, p1

    const/16 p3, 0x20

    shl-long p3, p1, p3

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    or-long/2addr p1, p3

    iput-wide p1, p0, Lf2/r1;->q:J

    invoke-static {}, Lm1/z;->a()[F

    move-result-object p1

    iput-object p1, p0, Lf2/r1;->s:[F

    invoke-static {}, Lpc/h;->b()Lb3/d;

    move-result-object p1

    iput-object p1, p0, Lf2/r1;->v:Lb3/c;

    sget-object p1, Lb3/m;->l:Lb3/m;

    iput-object p1, p0, Lf2/r1;->w:Lb3/m;

    new-instance p1, Lo1/b;

    invoke-direct {p1}, Lo1/b;-><init>()V

    iput-object p1, p0, Lf2/r1;->x:Lo1/b;

    sget-wide p1, Lm1/k0;->b:J

    iput-wide p1, p0, Lf2/r1;->z:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf2/r1;->D:Z

    new-instance p1, Landroidx/fragment/app/t;

    const/16 p2, 0xb

    invoke-direct {p1, p2, p0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lf2/r1;->F:Landroidx/fragment/app/t;

    return-void
.end method


# virtual methods
.method public final a()[F
    .locals 4

    iget-object v0, p0, Lf2/r1;->t:[F

    if-nez v0, :cond_0

    invoke-static {}, Lm1/z;->a()[F

    move-result-object v0

    iput-object v0, p0, Lf2/r1;->t:[F

    :cond_0
    iget-boolean v1, p0, Lf2/r1;->C:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    aget p0, v0, v2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v3

    :cond_1
    iput-boolean v2, p0, Lf2/r1;->C:Z

    invoke-virtual {p0}, Lf2/r1;->b()[F

    move-result-object v1

    iget-boolean p0, p0, Lf2/r1;->D:Z

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {v1, v0}, Lf2/k0;->l([F[F)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return-object v0

    :cond_4
    const/high16 p0, 0x7fc00000    # Float.NaN

    aput p0, v0, v2

    return-object v3
.end method

.method public final b()[F
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lf2/r1;->B:Z

    iget-object v2, v0, Lf2/r1;->s:[F

    if-eqz v1, :cond_2

    iget-object v1, v0, Lf2/r1;->l:Lp1/b;

    iget-wide v3, v1, Lp1/b;->v:J

    iget-object v1, v1, Lp1/b;->a:Lp1/c;

    const-wide v5, 0x7fffffff7fffffffL

    and-long/2addr v5, v3

    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    iget-wide v3, v0, Lf2/r1;->q:J

    invoke-static {v3, v4}, Ly4/s;->E(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lwa/h;->o(J)J

    move-result-wide v3

    :cond_0
    const/16 v5, 0x20

    shr-long v5, v3, v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iget v4, v1, Lp1/c;->l:F

    iget v6, v1, Lp1/c;->p:F

    iget v7, v1, Lp1/c;->j:F

    iget v1, v1, Lp1/c;->k:F

    const/4 v8, 0x0

    float-to-double v9, v8

    const-wide v11, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    neg-float v15, v13

    mul-float v16, v4, v14

    mul-float v17, v8, v13

    sub-float v16, v16, v17

    mul-float/2addr v4, v13

    mul-float v17, v8, v14

    add-float v17, v17, v4

    move v4, v8

    move-wide/from16 v18, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    neg-float v10, v8

    mul-float v18, v13, v8

    mul-float/2addr v13, v9

    mul-float v19, v14, v8

    mul-float v20, v14, v9

    mul-float v21, v4, v9

    mul-float v22, v17, v8

    add-float v22, v22, v21

    const/high16 v21, -0x80000000

    mul-float v21, v21, v8

    mul-float v17, v17, v9

    add-float v17, v17, v21

    move-wide/from16 v23, v11

    float-to-double v11, v6

    mul-double v11, v11, v23

    move v8, v4

    move v6, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v5, v11

    neg-float v11, v4

    mul-float v12, v11, v9

    mul-float v21, v5, v18

    add-float v21, v21, v12

    mul-float/2addr v9, v5

    mul-float v18, v18, v4

    add-float v18, v18, v9

    mul-float v9, v4, v14

    mul-float/2addr v14, v5

    mul-float/2addr v11, v10

    mul-float v12, v5, v13

    add-float/2addr v12, v11

    mul-float/2addr v5, v10

    mul-float/2addr v4, v13

    add-float/2addr v4, v5

    mul-float v18, v18, v7

    mul-float/2addr v9, v7

    mul-float/2addr v4, v7

    mul-float v21, v21, v1

    mul-float/2addr v14, v1

    mul-float/2addr v12, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v19, v19, v1

    mul-float/2addr v15, v1

    mul-float v20, v20, v1

    array-length v5, v2

    const/4 v7, 0x0

    const/16 v10, 0x10

    if-ge v5, v10, :cond_1

    goto :goto_0

    :cond_1
    aput v18, v2, v7

    const/4 v5, 0x1

    aput v9, v2, v5

    const/4 v5, 0x2

    aput v4, v2, v5

    const/4 v5, 0x3

    aput v8, v2, v5

    const/4 v5, 0x4

    aput v21, v2, v5

    const/4 v5, 0x5

    aput v14, v2, v5

    const/4 v5, 0x6

    aput v12, v2, v5

    const/4 v5, 0x7

    aput v8, v2, v5

    const/16 v5, 0x8

    aput v19, v2, v5

    const/16 v5, 0x9

    aput v15, v2, v5

    const/16 v5, 0xa

    aput v20, v2, v5

    const/16 v5, 0xb

    aput v8, v2, v5

    neg-float v5, v6

    mul-float v18, v18, v5

    mul-float v21, v21, v3

    sub-float v18, v18, v21

    add-float v18, v18, v22

    add-float v18, v18, v6

    const/16 v6, 0xc

    aput v18, v2, v6

    mul-float/2addr v9, v5

    mul-float/2addr v14, v3

    sub-float/2addr v9, v14

    add-float v9, v9, v16

    add-float/2addr v9, v3

    const/16 v6, 0xd

    aput v9, v2, v6

    mul-float/2addr v5, v4

    mul-float/2addr v3, v12

    sub-float/2addr v5, v3

    add-float v5, v5, v17

    const/16 v3, 0xe

    aput v5, v2, v3

    const/16 v3, 0xf

    aput v1, v2, v3

    :goto_0
    iput-boolean v7, v0, Lf2/r1;->B:Z

    invoke-static {v2}, Lm1/v;->r([F)Z

    move-result v1

    iput-boolean v1, v0, Lf2/r1;->D:Z

    :cond_2
    return-object v2
.end method

.method public final c(Ll1/a;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lf2/r1;->a()[F

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf2/r1;->b()[F

    move-result-object p2

    :goto_0
    iget-boolean p0, p0, Lf2/r1;->D:Z

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    iput p0, p1, Ll1/a;->a:F

    iput p0, p1, Ll1/a;->b:F

    iput p0, p1, Ll1/a;->c:F

    iput p0, p1, Ll1/a;->d:F

    return-void

    :cond_1
    invoke-static {p2, p1}, Lm1/z;->c([FLl1/a;)V

    :cond_2
    return-void
.end method

.method public final d(ZJ)J
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf2/r1;->a()[F

    move-result-object p1

    if-nez p1, :cond_1

    const-wide p0, 0x7f8000007f800000L    # 1.404448428688076E306

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lf2/r1;->b()[F

    move-result-object p1

    :cond_1
    iget-boolean p0, p0, Lf2/r1;->D:Z

    if-eqz p0, :cond_2

    return-wide p2

    :cond_2
    invoke-static {p2, p3, p1}, Lm1/z;->b(J[F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final e(J)V
    .locals 9

    iget-object v0, p0, Lf2/r1;->n:Lf2/y;

    iget-boolean v1, v0, Lf2/y;->w:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x3f800000    # -4.0f

    invoke-virtual {v0, v1}, Lf2/y;->N(F)V

    :cond_0
    iget-object p0, p0, Lf2/r1;->l:Lp1/b;

    iget-wide v1, p0, Lp1/b;->t:J

    invoke-static {v1, v2, p1, p2}, Lb3/j;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    iput-wide p1, p0, Lp1/b;->t:J

    iget-wide v1, p0, Lp1/b;->u:J

    iget-object p0, p0, Lp1/b;->a:Lp1/c;

    const/16 v3, 0x20

    shr-long v4, p1, v3

    long-to-int v4, v4

    const-wide v5, 0xffffffffL

    and-long/2addr p1, v5

    long-to-int p1, p1

    iget-object p2, p0, Lp1/c;->c:Landroid/graphics/RenderNode;

    shr-long v7, v1, v3

    long-to-int v3, v7

    add-int/2addr v3, v4

    and-long/2addr v5, v1

    long-to-int v5, v5

    add-int/2addr v5, p1

    invoke-virtual {p2, v4, p1, v3, v5}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    invoke-static {v1, v2}, Ly4/s;->E(J)J

    move-result-wide p1

    iput-wide p1, p0, Lp1/c;->d:J

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, v0, v0}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final f(J)V
    .locals 2

    iget-wide v0, p0, Lf2/r1;->q:J

    invoke-static {p1, p2, v0, v1}, Lb3/l;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf2/r1;->n:Lf2/y;

    iget-boolean v1, v0, Lf2/y;->w:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x3f800000    # -4.0f

    invoke-virtual {v0, v1}, Lf2/y;->N(F)V

    :cond_0
    iput-wide p1, p0, Lf2/r1;->q:J

    iget-boolean p1, p0, Lf2/r1;->u:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lf2/r1;->r:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-boolean p1, p0, Lf2/r1;->u:Z

    const/4 p2, 0x1

    if-eq p2, p1, :cond_1

    iput-boolean p2, p0, Lf2/r1;->u:Z

    invoke-virtual {v0, p0, p2}, Lf2/y;->x(Le2/p1;Z)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 11

    iget-boolean v0, p0, Lf2/r1;->u:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lf2/r1;->z:J

    sget-wide v2, Lm1/k0;->b:J

    invoke-static {v0, v1, v2, v3}, Lm1/k0;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf2/r1;->l:Lp1/b;

    iget-wide v0, v0, Lp1/b;->u:J

    iget-wide v2, p0, Lf2/r1;->q:J

    invoke-static {v0, v1, v2, v3}, Lb3/l;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf2/r1;->l:Lp1/b;

    iget-wide v1, p0, Lf2/r1;->z:J

    invoke-static {v1, v2}, Lm1/k0;->b(J)F

    move-result v1

    iget-wide v2, p0, Lf2/r1;->q:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-wide v2, p0, Lf2/r1;->z:J

    invoke-static {v2, v3}, Lm1/k0;->c(J)F

    move-result v2

    iget-wide v5, p0, Lf2/r1;->q:J

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v3, v5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v5, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v5, v4

    and-long/2addr v1, v7

    or-long/2addr v1, v5

    iget-wide v5, v0, Lp1/b;->v:J

    invoke-static {v5, v6, v1, v2}, Ll1/b;->b(JJ)Z

    move-result v3

    if-nez v3, :cond_1

    iput-wide v1, v0, Lp1/b;->v:J

    iget-object v0, v0, Lp1/b;->a:Lp1/c;

    iget-object v0, v0, Lp1/c;->c:Landroid/graphics/RenderNode;

    const-wide v5, 0x7fffffff7fffffffL

    and-long/2addr v5, v1

    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v3, v5, v9

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->resetPivot()Z

    goto :goto_0

    :cond_0
    shr-long v3, v1, v4

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/RenderNode;->setPivotX(F)Z

    and-long/2addr v1, v7

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setPivotY(F)Z

    :cond_1
    :goto_0
    iget-object v2, p0, Lf2/r1;->l:Lp1/b;

    iget-object v3, p0, Lf2/r1;->v:Lb3/c;

    iget-object v4, p0, Lf2/r1;->w:Lb3/m;

    iget-wide v5, p0, Lf2/r1;->q:J

    iget-object v7, p0, Lf2/r1;->F:Landroidx/fragment/app/t;

    invoke-virtual/range {v2 .. v7}, Lp1/b;->f(Lb3/c;Lb3/m;JLi9/c;)V

    iget-boolean v0, p0, Lf2/r1;->u:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf2/r1;->u:Z

    iget-object v1, p0, Lf2/r1;->n:Lf2/y;

    invoke-virtual {v1, p0, v0}, Lf2/y;->x(Le2/p1;Z)V

    :cond_2
    return-void
.end method

.method public final invalidate()V
    .locals 3

    iget-boolean v0, p0, Lf2/r1;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lf2/r1;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lf2/r1;->n:Lf2/y;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-boolean v1, p0, Lf2/r1;->u:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    iput-boolean v2, p0, Lf2/r1;->u:Z

    invoke-virtual {v0, p0, v2}, Lf2/y;->x(Le2/p1;Z)V

    :cond_0
    return-void
.end method
