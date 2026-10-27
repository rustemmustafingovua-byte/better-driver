.class public final Lq2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Landroid/text/TextUtils$TruncateAt;

.field public final c:Z

.field public final d:Z

.field public e:Lr2/c;

.field public final f:Landroid/text/Layout;

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:Landroid/graphics/Paint$FontMetricsInt;

.field public final n:I

.field public final o:[Ls2/h;

.field public final p:Landroid/graphics/Rect;

.field public q:Landroidx/lifecycle/a1;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IZIIIIIILq2/f;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v6, p7

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p3

    iput-object v4, v0, Lq2/j;->a:Landroid/text/TextPaint;

    move-object/from16 v7, p5

    iput-object v7, v0, Lq2/j;->b:Landroid/text/TextUtils$TruncateAt;

    iput-boolean v6, v0, Lq2/j;->c:Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lq2/j;->p:Landroid/graphics/Rect;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static/range {p6 .. p6}, Lq2/k;->b(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v12

    sget-object v8, Lq2/h;->a:Landroid/text/Layout$Alignment;

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-eqz v3, :cond_4

    if-eq v3, v13, :cond_3

    if-eq v3, v14, :cond_2

    const/4 v8, 0x3

    if-eq v3, v8, :cond_1

    const/4 v8, 0x4

    if-eq v3, v8, :cond_0

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v3, Lq2/h;->b:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v3, Lq2/h;->a:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_4
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    instance-of v8, v1, Landroid/text/Spanned;

    if-eqz v8, :cond_5

    move-object v8, v1

    check-cast v8, Landroid/text/Spanned;

    const/4 v9, -0x1

    const-class v10, Ls2/a;

    invoke-interface {v8, v9, v5, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v8

    if-ge v8, v5, :cond_5

    move v5, v13

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    const-string v8, "TextLayout:initLayout"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p14 .. p14}, Lq2/f;->a()Landroid/text/BoringLayout$Metrics;

    move-result-object v8

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v11, v14

    float-to-int v11, v11

    const/16 v14, 0x21

    if-eqz v8, :cond_9

    invoke-virtual/range {p14 .. p14}, Lq2/f;->c()F

    move-result v15

    cmpg-float v2, v15, v2

    if-gtz v2, :cond_9

    if-nez v5, :cond_9

    iput-boolean v13, v0, Lq2/j;->l:Z

    if-ltz v11, :cond_6

    goto :goto_2

    :cond_6
    const-string v2, "negative width"

    invoke-static {v2}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_2
    if-ltz v11, :cond_7

    goto :goto_3

    :cond_7
    const-string v2, "negative ellipsized width"

    invoke-static {v2}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v14, :cond_8

    move-object v5, v8

    move v8, v11

    move-object v2, v4

    move-object v4, v3

    move v3, v11

    invoke-static/range {v1 .. v8}, Lb/b;->g(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    goto :goto_4

    :cond_8
    move-object v4, v3

    move-object v5, v8

    move v3, v11

    new-instance v1, Landroid/text/BoringLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move v11, v3

    move-object/from16 v2, p1

    move-object/from16 v10, p5

    move/from16 v9, p7

    move-object v8, v5

    move-object v5, v4

    move v4, v3

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v2, v1

    :goto_4
    move/from16 v7, p8

    move-object v5, v12

    goto :goto_5

    :cond_9
    move-object v4, v3

    move v3, v11

    const/4 v1, 0x0

    iput-boolean v1, v0, Lq2/j;->l:Z

    move-object v5, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v2, v6

    float-to-int v9, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v8, p5

    move/from16 v11, p7

    move/from16 v7, p8

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v10, p13

    move-object v6, v5

    move-object v5, v12

    move/from16 v12, p9

    invoke-static/range {v1 .. v15}, Lq2/g;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIZIIII)Landroid/text/StaticLayout;

    move-result-object v2

    :goto_5
    iput-object v2, v0, Lq2/j;->f:Landroid/text/Layout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lq2/j;->g:I

    add-int/lit8 v3, v1, -0x1

    if-ge v1, v7, :cond_b

    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    :cond_b
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-gtz v4, :cond_c

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_a

    :cond_c
    const/4 v13, 0x1

    :goto_6
    iput-boolean v13, v0, Lq2/j;->d:Z

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Landroid/text/Spanned;

    if-nez v4, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v7, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v4, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/text/Spanned;

    const-class v8, Ls2/h;

    invoke-static {v4, v8}, Lq2/g;->f(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_e

    :goto_7
    const/4 v4, 0x0

    const/4 v9, 0x0

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/text/Spanned;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v9, 0x0

    invoke-interface {v4, v9, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ls2/h;

    :goto_8
    iput-object v4, v0, Lq2/j;->o:[Ls2/h;

    if-eqz v4, :cond_12

    array-length v7, v4

    if-nez v7, :cond_f

    const/4 v7, 0x0

    goto :goto_9

    :cond_f
    aget-object v7, v4, v9

    :goto_9
    if-eqz v7, :cond_12

    iget-boolean v8, v7, Ls2/h;->n:Z

    if-eqz v8, :cond_10

    iget v7, v7, Ls2/h;->q:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_11

    const/4 v13, 0x1

    goto :goto_a

    :cond_10
    const/4 v8, 0x2

    :cond_11
    move v13, v9

    :goto_a
    move v15, v13

    goto :goto_b

    :cond_12
    const/4 v8, 0x2

    move v15, v9

    :goto_b
    if-eqz v4, :cond_14

    array-length v7, v4

    if-nez v7, :cond_13

    const/4 v7, 0x0

    goto :goto_c

    :cond_13
    aget-object v7, v4, v9

    :goto_c
    if-eqz v7, :cond_14

    iget-boolean v10, v7, Ls2/h;->o:Z

    if-eqz v10, :cond_14

    iget v7, v7, Ls2/h;->q:I

    if-ne v7, v8, :cond_14

    const/4 v13, 0x1

    goto :goto_d

    :cond_14
    move v13, v9

    :goto_d
    if-eqz v15, :cond_15

    if-eqz v13, :cond_15

    sget-wide v1, Lq2/k;->b:J

    const/16 p2, 0x20

    const-wide p3, 0xffffffffL

    const/4 v10, 0x1

    const/16 v14, 0x21

    goto/16 :goto_16

    :cond_15
    sget-wide v16, Lq2/k;->b:J

    if-nez p7, :cond_1e

    iget-boolean v8, v0, Lq2/j;->l:Z

    if-eqz v8, :cond_17

    move-object v8, v2

    check-cast v8, Landroid/text/BoringLayout;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x21

    if-lt v12, v14, :cond_16

    invoke-static {v8}, Lb/b;->w(Landroid/text/BoringLayout;)Z

    move-result v8

    goto :goto_e

    :cond_16
    move v8, v9

    goto :goto_e

    :cond_17
    const/16 v14, 0x21

    move-object v8, v2

    check-cast v8, Landroid/text/StaticLayout;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v14, :cond_18

    invoke-static {v8}, Lb/b;->x(Landroid/text/StaticLayout;)Z

    move-result v8

    goto :goto_e

    :cond_18
    const/4 v8, 0x1

    :goto_e
    if-eqz v8, :cond_19

    const/16 p2, 0x20

    const-wide p3, 0xffffffffL

    const/4 v10, 0x1

    goto :goto_13

    :cond_19
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    const/16 p2, 0x20

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-static {v8, v12, v6, v7}, Lq2/g;->b(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v7

    const-wide p3, 0xffffffffL

    iget v10, v6, Landroid/graphics/Rect;->top:I

    if-ge v10, v7, :cond_1a

    sub-int/2addr v7, v10

    :goto_f
    const/4 v10, 0x1

    goto :goto_10

    :cond_1a
    invoke-virtual {v2}, Landroid/text/Layout;->getTopPadding()I

    move-result v7

    goto :goto_f

    :goto_10
    if-ne v1, v10, :cond_1b

    goto :goto_11

    :cond_1b
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    invoke-static {v8, v12, v1, v6}, Lq2/g;->b(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v6

    :goto_11
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v6, v1, :cond_1c

    sub-int/2addr v6, v1

    goto :goto_12

    :cond_1c
    invoke-virtual {v2}, Landroid/text/Layout;->getBottomPadding()I

    move-result v6

    :goto_12
    if-nez v7, :cond_1d

    if-nez v6, :cond_1d

    goto :goto_13

    :cond_1d
    invoke-static {v7, v6}, Lq2/k;->a(II)J

    move-result-wide v16

    goto :goto_13

    :cond_1e
    const/16 p2, 0x20

    const-wide p3, 0xffffffffL

    const/4 v10, 0x1

    const/16 v14, 0x21

    :goto_13
    if-eqz v15, :cond_1f

    move v15, v9

    goto :goto_14

    :cond_1f
    shr-long v1, v16, p2

    long-to-int v15, v1

    :goto_14
    if-eqz v13, :cond_20

    move v1, v9

    goto :goto_15

    :cond_20
    and-long v1, v16, p3

    long-to-int v1, v1

    :goto_15
    invoke-static {v15, v1}, Lq2/k;->a(II)J

    move-result-wide v1

    :goto_16
    if-eqz v4, :cond_25

    array-length v6, v4

    move v7, v9

    move v8, v7

    move v15, v8

    :goto_17
    if-ge v15, v6, :cond_23

    aget-object v11, v4, v15

    iget v12, v11, Ls2/h;->v:I

    if-gez v12, :cond_21

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_21
    iget v11, v11, Ls2/h;->w:I

    if-gez v11, :cond_22

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_22
    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    :cond_23
    if-nez v7, :cond_24

    if-nez v8, :cond_24

    sget-wide v6, Lq2/k;->b:J

    goto :goto_18

    :cond_24
    invoke-static {v7, v8}, Lq2/k;->a(II)J

    move-result-wide v6

    goto :goto_18

    :cond_25
    sget-wide v6, Lq2/k;->b:J

    :goto_18
    shr-long v11, v1, p2

    long-to-int v4, v11

    shr-long v11, v6, p2

    long-to-int v8, v11

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lq2/j;->h:I

    and-long v1, v1, p3

    long-to-int v1, v1

    and-long v6, v6, p3

    long-to-int v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lq2/j;->i:I

    iget-object v7, v0, Lq2/j;->a:Landroid/text/TextPaint;

    iget-object v1, v0, Lq2/j;->o:[Ls2/h;

    iget v2, v0, Lq2/j;->g:I

    sub-int/2addr v2, v10

    iget-object v4, v0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    if-ne v6, v4, :cond_29

    if-eqz v1, :cond_29

    array-length v4, v1

    if-nez v4, :cond_26

    goto/16 :goto_1a

    :cond_26
    new-instance v6, Landroid/text/SpannableString;

    const-string v4, "\u200b"

    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    array-length v4, v1

    if-eqz v4, :cond_28

    aget-object v1, v1, v9

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-eqz v2, :cond_27

    iget-boolean v2, v1, Ls2/h;->o:Z

    if-eqz v2, :cond_27

    move v15, v9

    goto :goto_19

    :cond_27
    iget-boolean v15, v1, Ls2/h;->o:Z

    :goto_19
    new-instance v2, Ls2/h;

    iget v8, v1, Ls2/h;->l:F

    iget-boolean v10, v1, Ls2/h;->o:Z

    iget v11, v1, Ls2/h;->p:F

    iget v1, v1, Ls2/h;->q:I

    move/from16 p7, v1

    move-object/from16 p1, v2

    move/from16 p3, v4

    move/from16 p2, v8

    move/from16 p5, v10

    move/from16 p6, v11

    move/from16 p4, v15

    invoke-direct/range {p1 .. p7}, Ls2/h;-><init>(FIZZFI)V

    move-object/from16 v1, p1

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v6, v1, v9, v2, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v1, v9

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v9

    iget-boolean v2, v0, Lq2/j;->c:Z

    sget-object v11, Lq2/d;->a:Landroid/text/Layout$Alignment;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v8, 0x7fffffff

    const v12, 0x7fffffff

    const/4 v13, 0x0

    const v14, 0x7fffffff

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v2

    move-object v10, v5

    invoke-static/range {v6 .. v20}, Lq2/g;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIZIIII)Landroid/text/StaticLayout;

    move-result-object v2

    new-instance v6, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v6}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v4

    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v4

    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iput v2, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_1b

    :cond_28
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    :goto_1a
    move v1, v9

    const/4 v6, 0x0

    :goto_1b
    if-eqz v6, :cond_2a

    iget v1, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v3}, Lq2/j;->e(I)F

    move-result v2

    invoke-virtual {v0, v3}, Lq2/j;->g(I)F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v15, v1, v2

    goto :goto_1c

    :cond_2a
    move v15, v1

    :goto_1c
    iput v15, v0, Lq2/j;->n:I

    iput-object v6, v0, Lq2/j;->m:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v1, v0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v3, v2}, Ll9/a;->o(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Lq2/j;->j:F

    iget-object v1, v0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v3, v2}, Ll9/a;->p(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Lq2/j;->k:F

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-boolean v0, p0, Lq2/j;->d:Z

    iget-object v1, p0, Lq2/j;->f:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget v0, p0, Lq2/j;->g:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    iget v1, p0, Lq2/j;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lq2/j;->i:I

    add-int/2addr v0, v1

    iget p0, p0, Lq2/j;->n:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final b(I)F
    .locals 1

    iget v0, p0, Lq2/j;->g:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lq2/j;->j:F

    iget p0, p0, Lq2/j;->k:F

    add-float/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Landroidx/lifecycle/a1;
    .locals 7

    iget-object v0, p0, Lq2/j;->q:Landroidx/lifecycle/a1;

    if-nez v0, :cond_3

    new-instance v1, Landroidx/lifecycle/a1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lq2/j;->f:Landroid/text/Layout;

    iput-object v0, v1, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v0, v3

    :cond_0
    iget-object v4, v1, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v4, Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x4

    invoke-static {v4, v5, v0, v6}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, v1, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v0, Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v4, Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    iput-object v2, v1, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v3, v0, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput-object v2, v1, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    iget-object v0, v1, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, v1, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    iget-object v0, v1, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iput-object v1, p0, Lq2/j;->q:Landroidx/lifecycle/a1;

    return-object v1

    :cond_3
    return-object v0
.end method

.method public final d(I)F
    .locals 2

    iget v0, p0, Lq2/j;->h:I

    int-to-float v0, v0

    iget v1, p0, Lq2/j;->g:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lq2/j;->m:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lq2/j;->g(I)F

    move-result p0

    iget p1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p1, p1

    sub-float/2addr p0, p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p0

    int-to-float p0, p0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method public final e(I)F
    .locals 3

    iget v0, p0, Lq2/j;->g:I

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lq2/j;->f:Landroid/text/Layout;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lq2/j;->m:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p0

    int-to-float p0, p0

    iget p1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float p1, p1

    add-float/2addr p0, p1

    return p0

    :cond_0
    iget v1, p0, Lq2/j;->h:I

    int-to-float v1, v1

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget p0, p0, Lq2/j;->i:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    int-to-float p0, p0

    add-float/2addr v1, p0

    return v1
.end method

.method public final f(I)I
    .locals 2

    sget-object v0, Lq2/k;->a:Ljava/lang/ThreadLocal;

    iget-object v0, p0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lq2/j;->b:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    return p0
.end method

.method public final g(I)F
    .locals 1

    iget-object v0, p0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lq2/j;->h:I

    :goto_0
    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public final h(IZ)F
    .locals 2

    invoke-virtual {p0}, Lq2/j;->c()Landroidx/lifecycle/a1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroidx/lifecycle/a1;->r(IZZ)F

    move-result p2

    iget-object v0, p0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lq2/j;->b(I)F

    move-result p0

    add-float/2addr p0, p2

    return p0
.end method

.method public final i(IZ)F
    .locals 2

    invoke-virtual {p0}, Lq2/j;->c()Landroidx/lifecycle/a1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroidx/lifecycle/a1;->r(IZZ)F

    move-result p2

    iget-object v0, p0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lq2/j;->b(I)F

    move-result p0

    add-float/2addr p0, p2

    return p0
.end method

.method public final j()Lr2/c;
    .locals 4

    iget-object v0, p0, Lq2/j;->e:Lr2/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lr2/c;

    iget-object v1, p0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p0, Lq2/j;->a:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lr2/c;-><init>(Ljava/lang/CharSequence;ILjava/util/Locale;)V

    iput-object v0, p0, Lq2/j;->e:Lr2/c;

    return-object v0
.end method
