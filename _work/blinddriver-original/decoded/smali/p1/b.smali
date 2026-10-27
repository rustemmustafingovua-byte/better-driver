.class public final Lp1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp1/c;

.field public b:Lb3/c;

.field public c:Lb3/m;

.field public d:Li9/c;

.field public final e:Landroidx/fragment/app/t;

.field public f:Landroid/graphics/Outline;

.field public g:Z

.field public h:J

.field public i:J

.field public j:F

.field public k:Lm1/v;

.field public l:Lm1/g;

.field public m:Lm1/g;

.field public n:Z

.field public o:Lo1/b;

.field public p:Lf6/v;

.field public q:I

.field public final r:Lf8/p2;

.field public s:Z

.field public t:J

.field public u:J

.field public v:J

.field public w:Z

.field public x:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "robolectric"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lp1/c;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/b;->a:Lp1/c;

    sget-object v0, Lo1/c;->a:Lb3/d;

    iput-object v0, p0, Lp1/b;->b:Lb3/c;

    sget-object v0, Lb3/m;->l:Lb3/m;

    iput-object v0, p0, Lp1/b;->c:Lb3/m;

    sget-object v0, Lp1/a;->l:Lp1/a;

    iput-object v0, p0, Lp1/b;->d:Li9/c;

    new-instance v0, Landroidx/fragment/app/t;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lp1/b;->e:Landroidx/fragment/app/t;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp1/b;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lp1/b;->h:J

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v2, p0, Lp1/b;->i:J

    new-instance v4, Lf8/p2;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lp1/b;->r:Lf8/p2;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lp1/c;->c(Z)V

    iput-wide v0, p0, Lp1/b;->t:J

    iput-wide v0, p0, Lp1/b;->u:J

    iput-wide v2, p0, Lp1/b;->v:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lp1/b;->a:Lp1/c;

    iget-object v2, v1, Lp1/c;->c:Landroid/graphics/RenderNode;

    iget-boolean v3, v0, Lp1/b;->g:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    iget-boolean v3, v0, Lp1/b;->w:Z

    if-nez v3, :cond_1

    iget v5, v1, Lp1/c;->m:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Lp1/c;->c(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iput-boolean v4, v1, Lp1/c;->g:Z

    invoke-virtual {v1}, Lp1/c;->a()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v5, v0, Lp1/b;->l:Lm1/g;

    const/4 v6, 0x1

    if-eqz v5, :cond_9

    iget-object v3, v0, Lp1/b;->x:Landroid/graphics/RectF;

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lp1/b;->x:Landroid/graphics/RectF;

    :cond_2
    instance-of v7, v5, Lm1/g;

    const-string v8, "Unable to obtain android.graphics.Path"

    if-eqz v7, :cond_8

    iget-object v9, v5, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v10, v0, Lp1/b;->f:Landroid/graphics/Outline;

    if-nez v10, :cond_3

    new-instance v10, Landroid/graphics/Outline;

    invoke-direct {v10}, Landroid/graphics/Outline;-><init>()V

    iput-object v10, v0, Lp1/b;->f:Landroid/graphics/Outline;

    :cond_3
    const/16 v11, 0x1e

    if-lt v9, v11, :cond_5

    if-eqz v7, :cond_4

    iget-object v7, v5, Lm1/g;->a:Landroid/graphics/Path;

    invoke-static {v10, v7}, Lc5/j;->p(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz v7, :cond_7

    iget-object v7, v5, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v7}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :goto_1
    invoke-virtual {v10}, Landroid/graphics/Outline;->canClip()Z

    move-result v7

    xor-int/2addr v7, v6

    iput-boolean v7, v0, Lp1/b;->n:Z

    iput-object v5, v0, Lp1/b;->l:Lm1/g;

    iget v5, v1, Lp1/c;->h:F

    invoke-virtual {v10, v5}, Landroid/graphics/Outline;->setAlpha(F)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    invoke-virtual {v2, v10}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iput-boolean v6, v1, Lp1/c;->g:Z

    invoke-virtual {v1}, Lp1/c;->a()V

    iget-boolean v3, v0, Lp1/b;->n:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lp1/b;->w:Z

    if-eqz v3, :cond_6

    invoke-virtual {v1, v4}, Lp1/c;->c(Z)V

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->discardDisplayList()V

    goto/16 :goto_3

    :cond_6
    iget-boolean v2, v0, Lp1/b;->w:Z

    invoke-virtual {v1, v2}, Lp1/c;->c(Z)V

    goto/16 :goto_3

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v1, v3}, Lp1/c;->c(Z)V

    iget-object v3, v0, Lp1/b;->f:Landroid/graphics/Outline;

    if-nez v3, :cond_a

    new-instance v3, Landroid/graphics/Outline;

    invoke-direct {v3}, Landroid/graphics/Outline;-><init>()V

    iput-object v3, v0, Lp1/b;->f:Landroid/graphics/Outline;

    :cond_a
    move-object v7, v3

    iget-wide v8, v0, Lp1/b;->u:J

    invoke-static {v8, v9}, Ly4/s;->E(J)J

    move-result-wide v8

    iget-wide v10, v0, Lp1/b;->h:J

    iget-wide v12, v0, Lp1/b;->i:J

    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v3, v12, v14

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    move-wide v8, v12

    :goto_2
    const/16 v3, 0x20

    shr-long v12, v10, v3

    long-to-int v5, v12

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    const-wide v13, 0xffffffffL

    and-long/2addr v10, v13

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    move-wide v15, v13

    shr-long v13, v8, v3

    long-to-int v3, v13

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    add-float/2addr v13, v5

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    and-long/2addr v8, v15

    long-to-int v13, v8

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    add-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v9, v11

    move v11, v8

    move v8, v12

    iget v12, v0, Lp1/b;->j:F

    move v10, v5

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    iget v5, v1, Lp1/c;->h:F

    invoke-virtual {v7, v5}, Landroid/graphics/Outline;->setAlpha(F)V

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    invoke-virtual {v2, v7}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iput-boolean v6, v1, Lp1/c;->g:Z

    invoke-virtual {v1}, Lp1/c;->a()V

    :cond_c
    :goto_3
    iput-boolean v4, v0, Lp1/b;->g:Z

    return-void
.end method

.method public final b()V
    .locals 15

    iget-boolean v0, p0, Lp1/b;->s:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lp1/b;->q:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lp1/b;->r:Lf8/p2;

    iget-object v1, v0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v1, Lp1/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lp1/b;->e()V

    const/4 v1, 0x0

    iput-object v1, v0, Lf8/p2;->b:Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v0, Lk/n0;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v2, v0, Lk/n0;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_4

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_2

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget-object v11, v1, v11

    check-cast v11, Lp1/b;

    invoke-virtual {v11}, Lp1/b;->e()V

    :cond_1
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-ne v8, v9, :cond_4

    :cond_3
    if-eq v5, v3, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lk/n0;->b()V

    :cond_5
    iget-object p0, p0, Lp1/b;->a:Lp1/c;

    iget-object p0, p0, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    :cond_6
    return-void
.end method

.method public final c(Lo1/d;)V
    .locals 13

    iget-object v0, p0, Lp1/b;->r:Lf8/p2;

    iget-object v1, v0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v1, Lp1/b;

    iput-object v1, v0, Lf8/p2;->c:Ljava/lang/Object;

    iget-object v1, v0, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v1, Lk/n0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lk/n0;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lf8/p2;->e:Ljava/lang/Object;

    check-cast v2, Lk/n0;

    if-nez v2, :cond_0

    sget-object v2, Lk/u0;->a:Lk/n0;

    new-instance v2, Lk/n0;

    invoke-direct {v2}, Lk/n0;-><init>()V

    iput-object v2, v0, Lf8/p2;->e:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, v1}, Lk/n0;->k(Lk/n0;)V

    invoke-virtual {v1}, Lk/n0;->b()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lf8/p2;->a:Z

    iget-object p0, p0, Lp1/b;->d:Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lf8/p2;->a:Z

    iget-object p1, v0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast p1, Lp1/b;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lp1/b;->e()V

    :cond_2
    iget-object p1, v0, Lf8/p2;->e:Ljava/lang/Object;

    check-cast p1, Lk/n0;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lk/n0;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v1, p1, Lk/n0;->a:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_6

    move v3, p0

    :goto_0
    aget-wide v4, v1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    sub-int v6, v3, v2

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, p0

    :goto_1
    if-ge v8, v6, :cond_4

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    aget-object v9, v0, v9

    check-cast v9, Lp1/b;

    invoke-virtual {v9}, Lp1/b;->e()V

    :cond_3
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    if-ne v6, v7, :cond_6

    :cond_5
    if-eq v3, v2, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lk/n0;->b()V

    :cond_7
    return-void
.end method

.method public final d()Lm1/v;
    .locals 14

    iget-object v0, p0, Lp1/b;->k:Lm1/v;

    iget-object v1, p0, Lp1/b;->l:Lm1/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Lm1/a0;

    invoke-direct {v0, v1}, Lm1/a0;-><init>(Lm1/g;)V

    iput-object v0, p0, Lp1/b;->k:Lm1/v;

    return-object v0

    :cond_1
    iget-wide v0, p0, Lp1/b;->u:J

    invoke-static {v0, v1}, Ly4/s;->E(J)J

    move-result-wide v0

    iget-wide v2, p0, Lp1/b;->h:J

    iget-wide v4, p0, Lp1/b;->i:J

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move-wide v0, v4

    :goto_0
    const/16 v4, 0x20

    shr-long v5, v2, v4

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const-wide v7, 0xffffffffL

    and-long/2addr v2, v7

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    shr-long v9, v0, v4

    long-to-int v3, v9

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v6

    and-long/2addr v0, v7

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    add-float v9, v0, v2

    iget v0, p0, Lp1/b;->j:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    new-instance v1, Lm1/c0;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v10, v5

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v12, v0

    shl-long v4, v10, v4

    and-long/2addr v7, v12

    or-long v10, v4, v7

    move v7, v2

    move v8, v3

    invoke-static/range {v6 .. v11}, Lr5/h1;->a(FFFFJ)Ll1/d;

    move-result-object v0

    invoke-direct {v1, v0}, Lm1/c0;-><init>(Ll1/d;)V

    goto :goto_1

    :cond_3
    move v7, v2

    move v8, v3

    new-instance v1, Lm1/b0;

    new-instance v0, Ll1/c;

    invoke-direct {v0, v6, v7, v8, v9}, Ll1/c;-><init>(FFFF)V

    invoke-direct {v1, v0}, Lm1/b0;-><init>(Ll1/c;)V

    :goto_1
    iput-object v1, p0, Lp1/b;->k:Lm1/v;

    return-object v1
.end method

.method public final e()V
    .locals 1

    iget v0, p0, Lp1/b;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lp1/b;->q:I

    invoke-virtual {p0}, Lp1/b;->b()V

    return-void
.end method

.method public final f(Lb3/c;Lb3/m;JLi9/c;)V
    .locals 9

    iget-wide v0, p0, Lp1/b;->u:J

    invoke-static {v0, v1, p3, p4}, Lb3/l;->a(JJ)Z

    move-result v0

    iget-object v1, p0, Lp1/b;->a:Lp1/c;

    if-nez v0, :cond_0

    iput-wide p3, p0, Lp1/b;->u:J

    iget-wide v2, p0, Lp1/b;->t:J

    const/16 v0, 0x20

    shr-long v4, v2, v0

    long-to-int v4, v4

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    long-to-int v2, v2

    iget-object v3, v1, Lp1/c;->c:Landroid/graphics/RenderNode;

    shr-long v7, p3, v0

    long-to-int v0, v7

    add-int/2addr v0, v4

    and-long/2addr v5, p3

    long-to-int v5, v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    invoke-static {p3, p4}, Ly4/s;->E(J)J

    move-result-wide p3

    iput-wide p3, v1, Lp1/c;->d:J

    iget-wide p3, p0, Lp1/b;->i:J

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p3, p3, v2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    iput-boolean p3, p0, Lp1/b;->g:Z

    invoke-virtual {p0}, Lp1/b;->a()V

    :cond_0
    iput-object p1, p0, Lp1/b;->b:Lb3/c;

    iput-object p2, p0, Lp1/b;->c:Lb3/m;

    iput-object p5, p0, Lp1/b;->d:Li9/c;

    iget-object p3, p0, Lp1/b;->e:Landroidx/fragment/app/t;

    iget-object p4, v1, Lp1/c;->b:Lo1/b;

    iget-object p5, v1, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-virtual {p5}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    :try_start_0
    iget-object v2, v1, Lp1/c;->a:Lb0/l1;

    iget-object v3, v2, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v3, Lm1/a;

    iget-object v4, v3, Lm1/a;->a:Landroid/graphics/Canvas;

    iput-object v0, v3, Lm1/a;->a:Landroid/graphics/Canvas;

    iget-object v0, p4, Lo1/b;->m:Lg5/m;

    invoke-virtual {v0, p1}, Lg5/m;->u(Lb3/c;)V

    invoke-virtual {v0, p2}, Lg5/m;->v(Lb3/m;)V

    iput-object p0, v0, Lg5/m;->n:Ljava/lang/Object;

    iget-wide p0, v1, Lp1/c;->d:J

    invoke-virtual {v0, p0, p1}, Lg5/m;->w(J)V

    invoke-virtual {v0, v3}, Lg5/m;->t(Lm1/o;)V

    invoke-virtual {p3, p4}, Landroidx/fragment/app/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v2, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lm1/a;

    iput-object v4, p0, Lm1/a;->a:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p5}, Landroid/graphics/RenderNode;->endRecording()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p5}, Landroid/graphics/RenderNode;->endRecording()V

    throw p0
.end method

.method public final g(JJF)V
    .locals 2

    iget-wide v0, p0, Lp1/b;->h:J

    invoke-static {v0, v1, p1, p2}, Ll1/b;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lp1/b;->i:J

    invoke-static {v0, v1, p3, p4}, Ll1/e;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lp1/b;->j:F

    cmpg-float v0, v0, p5

    if-nez v0, :cond_1

    iget-object v0, p0, Lp1/b;->l:Lm1/g;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp1/b;->k:Lm1/v;

    iput-object v0, p0, Lp1/b;->l:Lm1/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp1/b;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp1/b;->n:Z

    iput-wide p1, p0, Lp1/b;->h:J

    iput-wide p3, p0, Lp1/b;->i:J

    iput p5, p0, Lp1/b;->j:F

    invoke-virtual {p0}, Lp1/b;->a()V

    return-void
.end method
