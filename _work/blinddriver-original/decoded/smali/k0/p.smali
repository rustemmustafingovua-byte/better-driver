.class public final Lk0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk0/a;

.field public final b:Lk0/l;

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

.field public m:Ll1/c;

.field public n:Ll1/c;

.field public final o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public final p:[F

.field public final q:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lk0/a;Lk0/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/p;->a:Lk0/a;

    iput-object p2, p0, Lk0/p;->b:Lk0/l;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/p;->c:Ljava/lang/Object;

    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Lk0/p;->o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-static {}, Lm1/z;->a()[F

    move-result-object p1

    iput-object p1, p0, Lk0/p;->p:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lk0/p;->q:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lk0/p;->b:Lk0/l;

    invoke-virtual {v1}, Lk0/l;->g()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, v1, Lk0/l;->m:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lk0/p;->j:Lu2/x;

    if-eqz v2, :cond_19

    iget-object v2, v0, Lk0/p;->l:Lu2/q;

    if-eqz v2, :cond_19

    iget-object v2, v0, Lk0/p;->k:Lp2/j0;

    if-eqz v2, :cond_19

    iget-object v2, v0, Lk0/p;->m:Ll1/c;

    if-eqz v2, :cond_19

    iget-object v2, v0, Lk0/p;->n:Ll1/c;

    if-nez v2, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v2, v0, Lk0/p;->p:[F

    invoke-static {v2}, Lm1/z;->d([F)V

    iget-object v4, v0, Lk0/p;->a:Lk0/a;

    iget-object v4, v4, Lk0/a;->s:Lk0/n;

    iget-object v4, v4, Lk0/n;->C:Lr0/e1;

    invoke-virtual {v4}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc2/u;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lc2/u;->j()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v4, v2}, Lc2/u;->l([F)V

    :cond_3
    :goto_1
    iget-object v4, v0, Lk0/p;->n:Ll1/c;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v4, v4, Ll1/c;->a:F

    neg-float v4, v4

    iget-object v5, v0, Lk0/p;->n:Ll1/c;

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v5, v5, Ll1/c;->b:F

    neg-float v5, v5

    invoke-static {v2, v4, v5}, Lm1/z;->f([FFF)V

    iget-object v4, v0, Lk0/p;->q:Landroid/graphics/Matrix;

    invoke-static {v4, v2}, Lm1/v;->u(Landroid/graphics/Matrix;[F)V

    iget-object v2, v0, Lk0/p;->j:Lu2/x;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v5, v2, Lu2/x;->b:J

    iget-object v7, v0, Lk0/p;->l:Lu2/q;

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v8, v0, Lk0/p;->k:Lp2/j0;

    invoke-static {v8}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v9, v8, Lp2/j0;->b:Lp2/n;

    iget-object v10, v0, Lk0/p;->m:Ll1/c;

    invoke-static {v10}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v11, v10, Ll1/c;->d:F

    iget v12, v10, Ll1/c;->b:F

    iget-object v13, v0, Lk0/p;->n:Ll1/c;

    invoke-static {v13}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-boolean v14, v0, Lk0/p;->f:Z

    iget-boolean v15, v0, Lk0/p;->g:Z

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lk0/p;->h:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lk0/p;->i:Z

    move/from16 v25, v1

    iget-object v1, v0, Lk0/p;->o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v4, v2, Lu2/x;->c:Lp2/l0;

    move-wide/from16 v18, v5

    invoke-static/range {v18 .. v19}, Lp2/l0;->f(J)I

    move-result v5

    invoke-static/range {v18 .. v19}, Lp2/l0;->e(J)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/16 v26, 0x1

    if-eqz v14, :cond_b

    if-gez v5, :cond_4

    goto :goto_5

    :cond_4
    invoke-interface {v7, v5}, Lu2/q;->s(I)I

    move-result v5

    invoke-virtual {v8, v5}, Lp2/j0;->c(I)Ll1/c;

    move-result-object v14

    iget v6, v14, Ll1/c;->a:F

    move-object/from16 v18, v1

    iget-wide v0, v8, Lp2/j0;->c:J

    const/16 v19, 0x20

    shr-long v0, v0, v19

    long-to-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v6, v1, v0}, Lg6/c1;->e(FFF)F

    move-result v0

    iget v1, v14, Ll1/c;->b:F

    invoke-static {v10, v0, v1}, Lk0/o;->f(Ll1/c;FF)Z

    move-result v1

    iget v6, v14, Ll1/c;->d:F

    invoke-static {v10, v0, v6}, Lk0/o;->f(Ll1/c;FF)Z

    move-result v6

    invoke-virtual {v8, v5}, Lp2/j0;->a(I)La3/j;

    move-result-object v5

    move/from16 v19, v0

    sget-object v0, La3/j;->m:La3/j;

    if-ne v5, v0, :cond_5

    move/from16 v0, v26

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v1, :cond_7

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    move/from16 v5, v26

    :goto_4
    if-eqz v1, :cond_8

    if-nez v6, :cond_9

    :cond_8
    or-int/lit8 v5, v5, 0x2

    :cond_9
    if-eqz v0, :cond_a

    or-int/lit8 v5, v5, 0x4

    :cond_a
    move/from16 v23, v5

    iget v0, v14, Ll1/c;->b:F

    iget v1, v14, Ll1/c;->d:F

    move/from16 v22, v1

    move/from16 v20, v0

    move/from16 v21, v1

    invoke-virtual/range {v18 .. v23}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v0, v18

    goto :goto_6

    :cond_b
    :goto_5
    move-object v0, v1

    :goto_6
    if-eqz v15, :cond_15

    const/4 v1, -0x1

    if-eqz v4, :cond_c

    iget-wide v5, v4, Lp2/l0;->a:J

    invoke-static {v5, v6}, Lp2/l0;->f(J)I

    move-result v5

    goto :goto_7

    :cond_c
    move v5, v1

    :goto_7
    if-eqz v4, :cond_d

    iget-wide v14, v4, Lp2/l0;->a:J

    invoke-static {v14, v15}, Lp2/l0;->e(J)I

    move-result v1

    :cond_d
    if-ltz v5, :cond_15

    if-ge v5, v1, :cond_15

    iget-object v2, v2, Lu2/x;->a:Lp2/g;

    iget-object v2, v2, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-interface {v7, v5}, Lu2/q;->s(I)I

    move-result v2

    invoke-interface {v7, v1}, Lu2/q;->s(I)I

    move-result v4

    sub-int v6, v4, v2

    mul-int/lit8 v6, v6, 0x4

    new-array v6, v6, [F

    invoke-static {v2, v4}, Lp2/d0;->b(II)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15, v6}, Lp2/n;->a(J[F)V

    :goto_8
    if-ge v5, v1, :cond_15

    invoke-interface {v7, v5}, Lu2/q;->s(I)I

    move-result v4

    sub-int v14, v4, v2

    mul-int/lit8 v14, v14, 0x4

    aget v15, v6, v14

    add-int/lit8 v18, v14, 0x1

    move-object/from16 v19, v0

    aget v0, v6, v18

    add-int/lit8 v18, v14, 0x2

    move/from16 v27, v1

    aget v1, v6, v18

    add-int/lit8 v14, v14, 0x3

    aget v14, v6, v14

    move/from16 v28, v2

    iget v2, v10, Ll1/c;->a:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_e

    move/from16 v18, v26

    goto :goto_9

    :cond_e
    const/16 v18, 0x0

    :goto_9
    iget v2, v10, Ll1/c;->c:F

    cmpg-float v2, v15, v2

    if-gez v2, :cond_f

    move/from16 v2, v26

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    :goto_a
    and-int v2, v18, v2

    cmpg-float v18, v12, v14

    if-gez v18, :cond_10

    move/from16 v18, v26

    goto :goto_b

    :cond_10
    const/16 v18, 0x0

    :goto_b
    and-int v2, v2, v18

    cmpg-float v18, v0, v11

    if-gez v18, :cond_11

    move/from16 v18, v26

    goto :goto_c

    :cond_11
    const/16 v18, 0x0

    :goto_c
    and-int v2, v2, v18

    invoke-static {v10, v15, v0}, Lk0/o;->f(Ll1/c;FF)Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-static {v10, v1, v14}, Lk0/o;->f(Ll1/c;FF)Z

    move-result v18

    if-nez v18, :cond_13

    :cond_12
    or-int/lit8 v2, v2, 0x2

    :cond_13
    invoke-virtual {v8, v4}, Lp2/j0;->a(I)La3/j;

    move-result-object v4

    move/from16 v21, v0

    sget-object v0, La3/j;->m:La3/j;

    if-ne v4, v0, :cond_14

    or-int/lit8 v2, v2, 0x4

    :cond_14
    move/from16 v22, v1

    move/from16 v24, v2

    move/from16 v23, v14

    move/from16 v20, v15

    move-object/from16 v18, v19

    move/from16 v19, v5

    invoke-virtual/range {v18 .. v24}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-object/from16 v0, v18

    add-int/lit8 v5, v19, 0x1

    move/from16 v1, v27

    move/from16 v2, v28

    goto :goto_8

    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_16

    if-eqz v17, :cond_16

    invoke-static {}, Lb/b;->j()Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v2

    invoke-static {v13}, Lm1/v;->x(Ll1/c;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v2, v4}, Lb/b;->k(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v2

    invoke-static {v13}, Lm1/v;->x(Ll1/c;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v2, v4}, Lb/b;->z(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v2

    invoke-static {v2}, Lb/b;->l(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lb/b;->i(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_16
    const/16 v2, 0x22

    if-lt v1, v2, :cond_18

    if-eqz v25, :cond_18

    invoke-virtual {v10}, Ll1/c;->g()Z

    move-result v1

    if-nez v1, :cond_18

    iget v1, v9, Lp2/n;->f:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_17

    const/4 v1, 0x0

    :cond_17
    invoke-virtual {v9, v12}, Lp2/n;->e(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1}, Lg6/c1;->f(III)I

    move-result v2

    invoke-virtual {v9, v11}, Lp2/n;->e(F)I

    move-result v5

    invoke-static {v5, v4, v1}, Lg6/c1;->f(III)I

    move-result v1

    if-gt v2, v1, :cond_18

    :goto_d
    invoke-virtual {v8, v2}, Lp2/j0;->e(I)F

    move-result v4

    invoke-virtual {v9, v2}, Lp2/n;->f(I)F

    move-result v5

    invoke-virtual {v8, v2}, Lp2/j0;->f(I)F

    move-result v6

    invoke-virtual {v9, v2}, Lp2/n;->b(I)F

    move-result v7

    invoke-static {v0, v4, v5, v6, v7}, Lb5/a;->o(Landroid/view/inputmethod/CursorAnchorInfo$Builder;FFFF)V

    if-eq v2, v1, :cond_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_18
    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lk0/l;->g()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lk0/p;->e:Z

    :cond_19
    :goto_e
    return-void
.end method
