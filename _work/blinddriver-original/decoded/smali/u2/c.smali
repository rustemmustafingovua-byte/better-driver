.class public final Lu2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf2/y;

.field public final b:Lg5/m;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lu2/x;

.field public k:Lp2/j0;

.field public l:Lu2/q;

.field public m:Li9/c;

.field public n:Ll1/c;

.field public o:Ll1/c;

.field public final p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public final q:[F

.field public final r:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lf2/y;Lg5/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu2/c;->a:Lf2/y;

    iput-object p2, p0, Lu2/c;->b:Lg5/m;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu2/c;->c:Ljava/lang/Object;

    sget-object p1, Lu2/b;->n:Lu2/b;

    iput-object p1, p0, Lu2/c;->m:Li9/c;

    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Lu2/c;->p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-static {}, Lm1/z;->a()[F

    move-result-object p1

    iput-object p1, p0, Lu2/c;->q:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lu2/c;->r:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lu2/c;->b:Lg5/m;

    iget-object v2, v1, Lg5/m;->n:Ljava/lang/Object;

    invoke-interface {v2}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Lg5/m;->m:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lu2/c;->m:Li9/c;

    new-instance v4, Lm1/z;

    iget-object v5, v0, Lu2/c;->q:[F

    invoke-direct {v4, v5}, Lm1/z;-><init>([F)V

    invoke-interface {v3, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lu2/c;->a:Lf2/y;

    invoke-virtual {v3, v5}, Lf2/y;->s([F)V

    iget-object v3, v0, Lu2/c;->r:Landroid/graphics/Matrix;

    invoke-static {v3, v5}, Lm1/v;->u(Landroid/graphics/Matrix;[F)V

    iget-object v4, v0, Lu2/c;->j:Lu2/x;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v5, v4, Lu2/x;->b:J

    iget-object v7, v0, Lu2/c;->l:Lu2/q;

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v8, v0, Lu2/c;->k:Lp2/j0;

    invoke-static {v8}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v9, v8, Lp2/j0;->b:Lp2/n;

    iget-object v10, v0, Lu2/c;->n:Ll1/c;

    invoke-static {v10}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v11, v10, Ll1/c;->d:F

    iget v12, v10, Ll1/c;->b:F

    iget-object v13, v0, Lu2/c;->o:Ll1/c;

    invoke-static {v13}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-boolean v14, v0, Lu2/c;->f:Z

    iget-boolean v15, v0, Lu2/c;->g:Z

    move-object/from16 v16, v2

    iget-boolean v2, v0, Lu2/c;->h:Z

    move/from16 v17, v2

    iget-boolean v2, v0, Lu2/c;->i:Z

    move/from16 v25, v2

    iget-object v2, v0, Lu2/c;->p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v3, v4, Lu2/x;->c:Lp2/l0;

    move-wide/from16 v18, v5

    invoke-static/range {v18 .. v19}, Lp2/l0;->f(J)I

    move-result v5

    invoke-static/range {v18 .. v19}, Lp2/l0;->e(J)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/16 v26, 0x1

    if-eqz v14, :cond_8

    if-gez v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v7, v5}, Lu2/q;->s(I)I

    move-result v5

    invoke-virtual {v8, v5}, Lp2/j0;->c(I)Ll1/c;

    move-result-object v14

    iget v6, v14, Ll1/c;->a:F

    move-object/from16 v27, v1

    iget-wide v0, v8, Lp2/j0;->c:J

    const/16 v18, 0x20

    shr-long v0, v0, v18

    long-to-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v6, v1, v0}, Lg6/c1;->e(FFF)F

    move-result v0

    iget v1, v14, Ll1/c;->b:F

    invoke-static {v10, v0, v1}, Lg6/c1;->j(Ll1/c;FF)Z

    move-result v1

    iget v6, v14, Ll1/c;->d:F

    invoke-static {v10, v0, v6}, Lg6/c1;->j(Ll1/c;FF)Z

    move-result v6

    invoke-virtual {v8, v5}, Lp2/j0;->a(I)La3/j;

    move-result-object v5

    move/from16 v19, v0

    sget-object v0, La3/j;->m:La3/j;

    if-ne v5, v0, :cond_2

    move/from16 v0, v26

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_4

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v5, v26

    :goto_2
    if-eqz v1, :cond_5

    if-nez v6, :cond_6

    :cond_5
    or-int/lit8 v5, v5, 0x2

    :cond_6
    if-eqz v0, :cond_7

    or-int/lit8 v5, v5, 0x4

    :cond_7
    move/from16 v23, v5

    iget v0, v14, Ll1/c;->b:F

    iget v1, v14, Ll1/c;->d:F

    move/from16 v22, v1

    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v23}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v0, v18

    goto :goto_4

    :cond_8
    :goto_3
    move-object/from16 v27, v1

    move-object v0, v2

    :goto_4
    if-eqz v15, :cond_12

    const/4 v1, -0x1

    if-eqz v3, :cond_9

    iget-wide v5, v3, Lp2/l0;->a:J

    invoke-static {v5, v6}, Lp2/l0;->f(J)I

    move-result v2

    goto :goto_5

    :cond_9
    move v2, v1

    :goto_5
    if-eqz v3, :cond_a

    iget-wide v5, v3, Lp2/l0;->a:J

    invoke-static {v5, v6}, Lp2/l0;->e(J)I

    move-result v1

    :cond_a
    if-ltz v2, :cond_12

    if-ge v2, v1, :cond_12

    iget-object v3, v4, Lu2/x;->a:Lp2/g;

    iget-object v3, v3, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-interface {v7, v2}, Lu2/q;->s(I)I

    move-result v3

    invoke-interface {v7, v1}, Lu2/q;->s(I)I

    move-result v4

    sub-int v5, v4, v3

    mul-int/lit8 v5, v5, 0x4

    new-array v5, v5, [F

    invoke-static {v3, v4}, Lp2/d0;->b(II)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15, v5}, Lp2/n;->a(J[F)V

    :goto_6
    if-ge v2, v1, :cond_12

    invoke-interface {v7, v2}, Lu2/q;->s(I)I

    move-result v4

    sub-int v6, v4, v3

    mul-int/lit8 v6, v6, 0x4

    aget v14, v5, v6

    add-int/lit8 v15, v6, 0x1

    aget v15, v5, v15

    add-int/lit8 v18, v6, 0x2

    move-object/from16 v19, v0

    aget v0, v5, v18

    add-int/lit8 v6, v6, 0x3

    aget v6, v5, v6

    move/from16 v28, v1

    iget v1, v10, Ll1/c;->a:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_b

    move/from16 v18, v26

    goto :goto_7

    :cond_b
    const/16 v18, 0x0

    :goto_7
    iget v1, v10, Ll1/c;->c:F

    cmpg-float v1, v14, v1

    if-gez v1, :cond_c

    move/from16 v1, v26

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    and-int v1, v18, v1

    cmpg-float v18, v12, v6

    if-gez v18, :cond_d

    move/from16 v18, v26

    goto :goto_9

    :cond_d
    const/16 v18, 0x0

    :goto_9
    and-int v1, v1, v18

    cmpg-float v18, v15, v11

    if-gez v18, :cond_e

    move/from16 v18, v26

    goto :goto_a

    :cond_e
    const/16 v18, 0x0

    :goto_a
    and-int v1, v1, v18

    invoke-static {v10, v14, v15}, Lg6/c1;->j(Ll1/c;FF)Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-static {v10, v0, v6}, Lg6/c1;->j(Ll1/c;FF)Z

    move-result v18

    if-nez v18, :cond_10

    :cond_f
    or-int/lit8 v1, v1, 0x2

    :cond_10
    invoke-virtual {v8, v4}, Lp2/j0;->a(I)La3/j;

    move-result-object v4

    move/from16 v22, v0

    sget-object v0, La3/j;->m:La3/j;

    if-ne v4, v0, :cond_11

    or-int/lit8 v1, v1, 0x4

    :cond_11
    move/from16 v24, v1

    move/from16 v23, v6

    move/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v18, v19

    move/from16 v19, v2

    invoke-virtual/range {v18 .. v24}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v0, v18

    add-int/lit8 v2, v19, 0x1

    move/from16 v1, v28

    goto :goto_6

    :cond_12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_13

    if-eqz v17, :cond_13

    invoke-static {}, Lb/b;->j()Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v2

    invoke-static {v13}, Lm1/v;->x(Ll1/c;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v2, v3}, Lb/b;->k(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v2

    invoke-static {v13}, Lm1/v;->x(Ll1/c;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v2, v3}, Lb/b;->z(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v2

    invoke-static {v2}, Lb/b;->l(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lb/b;->i(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_13
    const/16 v2, 0x22

    if-lt v1, v2, :cond_15

    if-eqz v25, :cond_15

    invoke-virtual {v10}, Ll1/c;->g()Z

    move-result v1

    if-nez v1, :cond_15

    iget v1, v9, Lp2/n;->f:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_14

    const/4 v1, 0x0

    :cond_14
    invoke-virtual {v9, v12}, Lp2/n;->e(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lg6/c1;->f(III)I

    move-result v2

    invoke-virtual {v9, v11}, Lp2/n;->e(F)I

    move-result v4

    invoke-static {v4, v3, v1}, Lg6/c1;->f(III)I

    move-result v1

    if-gt v2, v1, :cond_15

    :goto_b
    invoke-virtual {v8, v2}, Lp2/j0;->e(I)F

    move-result v3

    invoke-virtual {v9, v2}, Lp2/n;->f(I)F

    move-result v4

    invoke-virtual {v8, v2}, Lp2/j0;->f(I)F

    move-result v5

    invoke-virtual {v9, v2}, Lp2/n;->b(I)F

    move-result v6

    invoke-static {v0, v3, v4, v5, v6}, Lb5/a;->o(Landroid/view/inputmethod/CursorAnchorInfo$Builder;FFFF)V

    if-eq v2, v1, :cond_15

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v0

    invoke-interface/range {v16 .. v16}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v2, v27

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lu2/c;->e:Z

    return-void
.end method
