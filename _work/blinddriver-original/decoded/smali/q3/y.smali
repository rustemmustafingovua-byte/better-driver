.class public final Lq3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final a:Lja/c;

.field public b:Lq3/x0;


# direct methods
.method public constructor <init>(Landroid/view/View;Lja/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq3/y;->a:Lja/c;

    sget-object p2, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lq3/n;->a(Landroid/view/View;)Lq3/x0;

    move-result-object p1

    if-eqz p1, :cond_5

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x24

    if-lt p2, v0, :cond_0

    new-instance p2, Lq3/k0;

    invoke-direct {p2, p1}, Lq3/k0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    if-lt p2, v0, :cond_1

    new-instance p2, Lq3/j0;

    invoke-direct {p2, p1}, Lq3/j0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    if-lt p2, v0, :cond_2

    new-instance p2, Lq3/i0;

    invoke-direct {p2, p1}, Lq3/i0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-lt p2, v0, :cond_3

    new-instance p2, Lq3/h0;

    invoke-direct {p2, p1}, Lq3/h0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x1e

    if-lt p2, v0, :cond_4

    new-instance p2, Lq3/g0;

    invoke-direct {p2, p1}, Lq3/g0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_4
    new-instance p2, Lq3/f0;

    invoke-direct {p2, p1}, Lq3/f0;-><init>(Lq3/x0;)V

    :goto_0
    invoke-virtual {p2}, Lq3/l0;->b()Lq3/x0;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lq3/y;->b:Lq3/x0;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p2}, Lq3/x0;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lq3/x0;

    move-result-object v1

    iput-object v1, v0, Lq3/y;->b:Lq3/x0;

    invoke-static/range {p1 .. p2}, Lq3/z;->j(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static/range {p1 .. p2}, Lq3/x0;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lq3/x0;

    move-result-object v3

    iget-object v1, v3, Lq3/x0;->a:Lq3/u0;

    iget-object v2, v0, Lq3/y;->b:Lq3/x0;

    if-nez v2, :cond_1

    sget-object v2, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-static {v6}, Lq3/n;->a(Landroid/view/View;)Lq3/x0;

    move-result-object v2

    iput-object v2, v0, Lq3/y;->b:Lq3/x0;

    :cond_1
    iget-object v2, v0, Lq3/y;->b:Lq3/x0;

    if-nez v2, :cond_2

    iput-object v3, v0, Lq3/y;->b:Lq3/x0;

    invoke-static/range {p1 .. p2}, Lq3/z;->j(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {v6}, Lq3/z;->k(Landroid/view/View;)Lja/c;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v2, Lja/c;->m:Ljava/lang/Object;

    check-cast v2, Lq3/x0;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {p1 .. p2}, Lq3/z;->j(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v7, 0x1

    new-array v2, v7, [I

    new-array v4, v7, [I

    iget-object v5, v0, Lq3/y;->b:Lq3/x0;

    move v8, v7

    :goto_0
    const/16 v9, 0x200

    if-gt v8, v9, :cond_a

    invoke-virtual {v1, v8}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v9

    iget-object v11, v5, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v11, v8}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v11

    iget v12, v9, Ll3/b;->a:I

    iget v13, v9, Ll3/b;->d:I

    iget v14, v9, Ll3/b;->c:I

    iget v9, v9, Ll3/b;->b:I

    iget v15, v11, Ll3/b;->a:I

    iget v7, v11, Ll3/b;->d:I

    const/16 v16, 0x0

    iget v10, v11, Ll3/b;->c:I

    iget v11, v11, Ll3/b;->b:I

    if-gt v12, v15, :cond_5

    if-gt v9, v11, :cond_5

    if-gt v14, v10, :cond_5

    if-le v13, v7, :cond_4

    goto :goto_1

    :cond_4
    move-object/from16 v17, v2

    move/from16 v2, v16

    goto :goto_2

    :cond_5
    :goto_1
    move-object/from16 v17, v2

    const/4 v2, 0x1

    :goto_2
    if-lt v12, v15, :cond_7

    if-lt v9, v11, :cond_7

    if-lt v14, v10, :cond_7

    if-ge v13, v7, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v7, v16

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-eq v2, v7, :cond_9

    if-eqz v2, :cond_8

    aget v2, v17, v16

    or-int/2addr v2, v8

    aput v2, v17, v16

    goto :goto_5

    :cond_8
    aget v2, v4, v16

    or-int/2addr v2, v8

    aput v2, v4, v16

    :cond_9
    :goto_5
    shl-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v17

    const/4 v7, 0x1

    goto :goto_0

    :cond_a
    move-object/from16 v17, v2

    const/16 v16, 0x0

    aget v2, v17, v16

    aget v4, v4, v16

    or-int v5, v2, v4

    if-nez v5, :cond_b

    iput-object v3, v0, Lq3/y;->b:Lq3/x0;

    invoke-static/range {p1 .. p2}, Lq3/z;->j(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v7, v0, Lq3/y;->b:Lq3/x0;

    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_c

    sget-object v2, Lq3/z;->e:Landroid/view/animation/PathInterpolator;

    goto :goto_6

    :cond_c
    and-int/lit8 v8, v4, 0x8

    if-eqz v8, :cond_d

    sget-object v2, Lq3/z;->f:La4/a;

    goto :goto_6

    :cond_d
    and-int/lit16 v2, v2, 0x207

    if-eqz v2, :cond_e

    sget-object v2, Lq3/z;->g:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_6

    :cond_e
    and-int/lit16 v2, v4, 0x207

    if-eqz v2, :cond_f

    sget-object v2, Lq3/z;->h:Landroid/view/animation/AccelerateInterpolator;

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    new-instance v4, Lq3/e0;

    and-int/lit8 v8, v5, 0x8

    if-eqz v8, :cond_10

    const-wide/16 v8, 0xa0

    goto :goto_7

    :cond_10
    const-wide/16 v8, 0xfa

    :goto_7
    invoke-direct {v4, v5, v2, v8, v9}, Lq3/e0;-><init>(ILandroid/view/animation/Interpolator;J)V

    iget-object v2, v4, Lq3/e0;->a:Lq3/d0;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lq3/d0;->e(F)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v8, v4, Lq3/e0;->a:Lq3/d0;

    invoke-virtual {v8}, Lq3/d0;->b()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v1, v5}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v1

    iget-object v2, v7, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v2, v5}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v2

    iget v9, v1, Ll3/b;->a:I

    iget v10, v2, Ll3/b;->a:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, v1, Ll3/b;->b:I

    iget v11, v2, Ll3/b;->b:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v1, Ll3/b;->c:I

    iget v14, v2, Ll3/b;->c:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    move/from16 v17, v5

    iget v5, v1, Ll3/b;->d:I

    move-object/from16 v18, v7

    iget v7, v2, Ll3/b;->d:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v9, v12, v15, v0}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object v0

    iget v1, v1, Ll3/b;->a:I

    iget v2, v2, Ll3/b;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v2, v9, v5}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object v1

    new-instance v7, Lg5/l;

    const/16 v2, 0xa

    invoke-direct {v7, v2, v0, v1}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v0, v16

    invoke-static {v6, v4, v3, v0}, Lq3/z;->g(Landroid/view/View;Lq3/e0;Lq3/x0;Z)V

    new-instance v1, Lq3/w;

    move-object v2, v4

    move/from16 v5, v17

    move-object/from16 v4, v18

    invoke-direct/range {v1 .. v6}, Lq3/w;-><init>(Lq3/e0;Lq3/x0;Lq3/x0;ILandroid/view/View;)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lq3/t;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v6, v1}, Lq3/t;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lq3/x;

    invoke-direct {v0, v6, v2, v7, v8}, Lq3/x;-><init>(Landroid/view/View;Lq3/e0;Lg5/l;Landroid/animation/ValueAnimator;)V

    invoke-static {v6, v0}, Lq3/g;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lq3/y;->b:Lq3/x0;

    invoke-static/range {p1 .. p2}, Lq3/z;->j(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
