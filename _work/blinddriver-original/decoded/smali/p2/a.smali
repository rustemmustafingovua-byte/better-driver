.class public final Lp2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lx2/c;

.field public final b:I

.field public final c:J

.field public final d:Lq2/j;

.field public final e:Ljava/lang/CharSequence;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx2/c;IIJ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v4, p2

    move/from16 v11, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v10, v0, Lp2/a;->a:Lx2/c;

    iput v4, v0, Lp2/a;->b:I

    move-wide/from16 v12, p4

    iput-wide v12, v0, Lp2/a;->c:J

    invoke-static {v12, v13}, Lb3/a;->i(J)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v12, v13}, Lb3/a;->j(J)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-static {v1}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v14, 0x1

    if-lt v4, v14, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "maxLines should be greater than 0"

    invoke-static {v1}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v1, v10, Lx2/c;->m:Lp2/m0;

    iget-object v2, v10, Lx2/c;->s:Ljava/lang/CharSequence;

    const/4 v3, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-ne v11, v6, :cond_9

    iget-object v8, v1, Lp2/m0;->a:Lp2/e0;

    iget-wide v8, v8, Lp2/e0;->h:J

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, La/a;->k(I)J

    move-result-wide v6

    invoke-static {v8, v9, v6, v7}, Lb3/o;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v1, Lp2/m0;->a:Lp2/e0;

    iget-wide v6, v6, Lp2/e0;->h:J

    sget-wide v8, Lb3/o;->c:J

    invoke-static {v6, v7, v8, v9}, Lb3/o;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v1, Lp2/m0;->b:Lp2/s;

    iget v6, v6, Lp2/s;->a:I

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    if-ne v6, v3, :cond_3

    goto :goto_3

    :cond_3
    if-ne v6, v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    instance-of v6, v2, Landroid/text/Spannable;

    if-eqz v6, :cond_6

    move-object v6, v2

    check-cast v6, Landroid/text/Spannable;

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_7

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_7
    move-object v2, v6

    const-class v6, Ls2/c;

    invoke-static {v2, v6}, Lq2/g;->f(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v6, Ls2/c;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v14

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v14

    const/16 v9, 0x21

    invoke-interface {v2, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    :goto_3
    move-object v9, v2

    goto :goto_4

    :cond_9
    const/16 v17, 0x0

    goto :goto_3

    :goto_4
    iput-object v9, v0, Lp2/a;->e:Ljava/lang/CharSequence;

    iget-object v2, v1, Lp2/m0;->b:Lp2/s;

    iget-object v1, v1, Lp2/m0;->a:Lp2/e0;

    iget v6, v2, Lp2/s;->a:I

    const/4 v7, 0x3

    if-ne v6, v14, :cond_a

    move v8, v7

    goto :goto_6

    :cond_a
    const/4 v8, 0x2

    if-ne v6, v8, :cond_b

    move v8, v5

    goto :goto_6

    :cond_b
    if-ne v6, v7, :cond_c

    const/4 v8, 0x2

    goto :goto_6

    :cond_c
    if-ne v6, v3, :cond_d

    goto :goto_5

    :cond_d
    const/4 v8, 0x6

    if-ne v6, v8, :cond_e

    move v8, v14

    goto :goto_6

    :cond_e
    :goto_5
    move/from16 v8, v17

    :goto_6
    if-ne v6, v5, :cond_f

    move v6, v14

    goto :goto_7

    :cond_f
    move/from16 v6, v17

    :goto_7
    iget v15, v2, Lp2/s;->h:I

    const/16 v3, 0x20

    const/4 v5, 0x2

    if-ne v15, v5, :cond_11

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v15, v3, :cond_10

    move v15, v5

    goto :goto_8

    :cond_10
    const/4 v15, 0x4

    goto :goto_8

    :cond_11
    move/from16 v15, v17

    :goto_8
    iget v2, v2, Lp2/s;->g:I

    and-int/lit16 v3, v2, 0xff

    if-ne v3, v14, :cond_12

    goto :goto_9

    :cond_12
    if-ne v3, v5, :cond_13

    move v3, v2

    move v2, v6

    move v6, v14

    goto :goto_a

    :cond_13
    if-ne v3, v7, :cond_14

    move v3, v2

    move v2, v6

    const/4 v6, 0x2

    goto :goto_a

    :cond_14
    :goto_9
    move v3, v2

    move v2, v6

    move/from16 v6, v17

    :goto_a
    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v14, :cond_15

    goto :goto_b

    :cond_15
    const/4 v14, 0x2

    if-ne v5, v14, :cond_16

    move v5, v7

    const/4 v7, 0x1

    goto :goto_c

    :cond_16
    if-ne v5, v7, :cond_17

    move v5, v7

    const/4 v7, 0x2

    goto :goto_c

    :cond_17
    const/4 v14, 0x4

    if-ne v5, v14, :cond_18

    move v5, v7

    goto :goto_c

    :cond_18
    :goto_b
    move v5, v7

    move/from16 v7, v17

    :goto_c
    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    const/4 v14, 0x1

    if-ne v3, v14, :cond_19

    const/4 v14, 0x2

    goto :goto_d

    :cond_19
    const/4 v14, 0x2

    if-ne v3, v14, :cond_1a

    move-object v3, v1

    move v1, v8

    const/4 v8, 0x1

    goto :goto_e

    :cond_1a
    :goto_d
    move-object v3, v1

    move v1, v8

    move/from16 v8, v17

    :goto_e
    if-ne v11, v14, :cond_1b

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_f
    move v5, v15

    const/16 v18, 0x20

    move-object v15, v3

    move-object/from16 v3, v16

    goto :goto_10

    :cond_1b
    const/4 v5, 0x5

    if-ne v11, v5, :cond_1c

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_f

    :cond_1c
    const/4 v5, 0x4

    if-ne v11, v5, :cond_1d

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_f

    :cond_1d
    move v5, v15

    const/16 v18, 0x20

    move-object v15, v3

    const/4 v3, 0x0

    :goto_10
    invoke-virtual/range {v0 .. v9}, Lp2/a;->a(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Lq2/j;

    move-result-object v14

    iget-object v0, v14, Lq2/j;->f:Landroid/text/Layout;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v16, v1

    const/16 v1, 0x23

    if-ge v4, v1, :cond_1e

    iget-object v1, v10, Lx2/c;->r:Lx2/d;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-nez v1, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v1, v16

    const/4 v10, 0x2

    goto :goto_13

    :cond_1f
    const/4 v1, 0x4

    if-ne v11, v1, :cond_20

    :goto_11
    const/4 v1, 0x0

    goto :goto_12

    :cond_20
    const/4 v1, 0x5

    if-ne v11, v1, :cond_1e

    goto :goto_11

    :goto_12
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_1e

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-interface {v9, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-interface {v9, v0, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/CharSequence;

    aput-object v4, v9, v1

    const-string v1, "\u2026"

    const/16 v19, 0x1

    aput-object v1, v9, v19

    const/4 v10, 0x2

    aput-object v0, v9, v10

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v1, v16

    invoke-virtual/range {v0 .. v9}, Lp2/a;->a(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Lq2/j;

    move-result-object v14

    :goto_13
    iget v9, v14, Lq2/j;->g:I

    if-ne v11, v10, :cond_25

    invoke-virtual {v14}, Lq2/j;->a()I

    move-result v10

    invoke-static {v12, v13}, Lb3/a;->g(J)I

    move-result v11

    if-le v10, v11, :cond_25

    const/4 v10, 0x1

    if-le v4, v10, :cond_25

    invoke-static {v12, v13}, Lb3/a;->g(J)I

    move-result v4

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v9, :cond_22

    invoke-virtual {v14, v10}, Lq2/j;->e(I)F

    move-result v11

    int-to-float v12, v4

    cmpl-float v11, v11, v12

    if-lez v11, :cond_21

    goto :goto_15

    :cond_21
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_22
    move v10, v9

    :goto_15
    if-ltz v10, :cond_24

    iget v4, v0, Lp2/a;->b:I

    if-eq v10, v4, :cond_24

    const/4 v4, 0x1

    if-ge v10, v4, :cond_23

    const/4 v4, 0x1

    goto :goto_16

    :cond_23
    move v4, v10

    :goto_16
    iget-object v9, v0, Lp2/a;->e:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v9}, Lp2/a;->a(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Lq2/j;

    move-result-object v14

    :cond_24
    iput-object v14, v0, Lp2/a;->d:Lq2/j;

    goto :goto_17

    :cond_25
    iput-object v14, v0, Lp2/a;->d:Lq2/j;

    :goto_17
    iget-object v1, v0, Lp2/a;->a:Lx2/c;

    iget-object v1, v1, Lx2/c;->r:Lx2/d;

    iget-object v2, v15, Lp2/e0;->a:La3/o;

    invoke-interface {v2}, La3/o;->b()Lm1/m;

    move-result-object v2

    invoke-virtual {v0}, Lp2/a;->d()F

    move-result v3

    invoke-virtual {v0}, Lp2/a;->b()F

    move-result v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    shl-long v5, v5, v18

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    or-long/2addr v3, v5

    iget-object v5, v15, Lp2/e0;->a:La3/o;

    invoke-interface {v5}, La3/o;->c()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lx2/d;->c(Lm1/m;JF)V

    iget-object v1, v0, Lp2/a;->d:Lq2/j;

    iget-object v1, v1, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spanned;

    if-nez v2, :cond_27

    :cond_26
    const/4 v1, 0x0

    goto :goto_18

    :cond_27
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/text/Spanned;

    const/4 v4, -0x1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Lz2/b;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v4, v2, :cond_26

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/text/Spanned;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lz2/b;

    :goto_18
    if-eqz v1, :cond_28

    array-length v2, v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    invoke-virtual {v0}, Lp2/a;->d()F

    move-result v5

    invoke-virtual {v0}, Lp2/a;->b()F

    move-result v6

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v9, v5

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    shl-long v9, v9, v18

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    iget-object v4, v4, Lz2/b;->n:Lr0/e1;

    new-instance v9, Ll1/e;

    invoke-direct {v9, v5, v6}, Ll1/e;-><init>(J)V

    invoke-virtual {v4, v9}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_28
    iget-object v1, v0, Lp2/a;->e:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/text/Spanned;

    if-nez v2, :cond_29

    sget-object v1, Lu8/r;->l:Lu8/r;

    goto/16 :goto_22

    :cond_29
    move-object v2, v1

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v3, Ls2/i;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v1

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v4, :cond_34

    aget-object v5, v1, v7

    check-cast v5, Ls2/i;

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, v0, Lp2/a;->d:Lq2/j;

    iget-object v9, v9, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v9, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    iget v10, v0, Lp2/a;->b:I

    if-lt v9, v10, :cond_2a

    const/4 v10, 0x1

    goto :goto_1b

    :cond_2a
    const/4 v10, 0x0

    :goto_1b
    iget-object v11, v0, Lp2/a;->d:Lq2/j;

    iget-object v11, v11, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v11

    if-lez v11, :cond_2b

    iget-object v11, v0, Lp2/a;->d:Lq2/j;

    iget-object v11, v11, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    iget-object v12, v0, Lp2/a;->d:Lq2/j;

    iget-object v12, v12, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v12, v9}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v12

    add-int/2addr v12, v11

    if-le v8, v12, :cond_2b

    const/4 v11, 0x1

    goto :goto_1c

    :cond_2b
    const/4 v11, 0x0

    :goto_1c
    iget-object v12, v0, Lp2/a;->d:Lq2/j;

    invoke-virtual {v12, v9}, Lq2/j;->f(I)I

    move-result v12

    if-le v8, v12, :cond_2c

    const/4 v8, 0x1

    goto :goto_1d

    :cond_2c
    const/4 v8, 0x0

    :goto_1d
    if-nez v11, :cond_2d

    if-nez v8, :cond_2d

    if-eqz v10, :cond_2e

    :cond_2d
    const/4 v11, 0x0

    const/4 v14, 0x1

    goto :goto_20

    :cond_2e
    iget-object v8, v0, Lp2/a;->d:Lq2/j;

    iget-object v8, v8, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v8

    if-eqz v8, :cond_2f

    sget-object v8, La3/j;->m:La3/j;

    goto :goto_1e

    :cond_2f
    sget-object v8, La3/j;->l:La3/j;

    :goto_1e
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const-string v10, "PlaceholderSpan is not laid out yet."

    if-eqz v8, :cond_32

    const/4 v14, 0x1

    if-ne v8, v14, :cond_31

    iget-object v8, v0, Lp2/a;->d:Lq2/j;

    const/4 v11, 0x0

    invoke-virtual {v8, v6, v11}, Lq2/j;->h(IZ)F

    move-result v6

    iget-boolean v8, v5, Ls2/i;->o:Z

    if-nez v8, :cond_30

    invoke-static {v10}, Lv2/a;->b(Ljava/lang/String;)V

    :cond_30
    iget v8, v5, Ls2/i;->m:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    const/4 v11, 0x0

    goto :goto_1f

    :cond_31
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_32
    const/4 v14, 0x1

    iget-object v8, v0, Lp2/a;->d:Lq2/j;

    const/4 v11, 0x0

    invoke-virtual {v8, v6, v11}, Lq2/j;->h(IZ)F

    move-result v6

    :goto_1f
    iget-boolean v8, v5, Ls2/i;->o:Z

    if-nez v8, :cond_33

    invoke-static {v10}, Lv2/a;->b(Ljava/lang/String;)V

    :cond_33
    iget v8, v5, Ls2/i;->m:I

    int-to-float v8, v8

    add-float/2addr v8, v6

    iget-object v10, v0, Lp2/a;->d:Lq2/j;

    invoke-virtual {v10, v9}, Lq2/j;->d(I)F

    move-result v9

    invoke-virtual {v5}, Ls2/i;->b()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {v5}, Ls2/i;->b()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v9

    new-instance v10, Ll1/c;

    invoke-direct {v10, v6, v9, v8, v5}, Ll1/c;-><init>(FFFF)V

    goto :goto_21

    :goto_20
    const/4 v10, 0x0

    :goto_21
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1a

    :cond_34
    move-object v1, v3

    :goto_22
    iput-object v1, v0, Lp2/a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Lq2/j;
    .locals 15

    invoke-virtual {p0}, Lp2/a;->d()F

    move-result v2

    iget-object p0, p0, Lp2/a;->a:Lx2/c;

    iget-object v3, p0, Lx2/c;->r:Lx2/d;

    iget v6, p0, Lx2/c;->w:I

    iget-object v14, p0, Lx2/c;->t:Lq2/f;

    iget-object p0, p0, Lx2/c;->m:Lp2/m0;

    sget-object v0, Lx2/b;->a:Lx2/a;

    iget-object p0, p0, Lp2/m0;->c:Lp2/w;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lp2/w;->b:Lp2/u;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lp2/u;->a:Z

    :goto_0
    move v7, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Lq2/j;

    move/from16 v4, p1

    move/from16 v13, p2

    move-object/from16 v5, p3

    move/from16 v8, p4

    move/from16 v12, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v1, p9

    invoke-direct/range {v0 .. v14}, Lq2/j;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IZIIIIIILq2/f;)V

    return-object v0
.end method

.method public final b()F
    .locals 0

    iget-object p0, p0, Lp2/a;->d:Lq2/j;

    invoke-virtual {p0}, Lq2/j;->a()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final c(Ll1/c;ILc2/c0;)J
    .locals 10

    invoke-static {p1}, Lm1/v;->x(Ll1/c;)Landroid/graphics/RectF;

    move-result-object v4

    const/4 p1, 0x1

    const/4 v8, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    move p2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v8

    :goto_1
    new-instance v6, Lod/y6;

    const/4 v0, 0x3

    invoke-direct {v6, v0, p3}, Lod/y6;-><init>(ILjava/lang/Object;)V

    iget-object v0, p0, Lp2/a;->d:Lq2/j;

    iget-object p0, v0, Lq2/j;->a:Landroid/text/TextPaint;

    iget-object v1, v0, Lq2/j;->f:Landroid/text/Layout;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt p3, v2, :cond_3

    if-ne p2, p1, :cond_2

    new-instance p0, Lg5/s;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0}, Lq2/j;->j()Lr2/c;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lg5/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lr2/a;

    invoke-direct {p2, p0}, Lr2/a;-><init>(Lg5/s;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lk0/i;->s()V

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2, p0}, Lk0/i;->g(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/GraphemeClusterSegmentFinder;

    move-result-object p0

    invoke-static {p0}, Lk0/i;->h(Ljava/lang/Object;)Landroid/text/SegmentFinder;

    move-result-object p2

    :goto_2
    new-instance p0, Lq2/a;

    invoke-direct {p0, v6}, Lq2/a;-><init>(Lod/y6;)V

    invoke-static {v1, v4, p2, p0}, Lk0/i;->u(Landroid/text/Layout;Landroid/graphics/RectF;Landroid/text/SegmentFinder;Lq2/a;)[I

    move-result-object p0

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v0}, Lq2/j;->c()Landroidx/lifecycle/a1;

    move-result-object v2

    if-ne p2, p1, :cond_4

    new-instance p0, Lg5/s;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0}, Lq2/j;->j()Lr2/c;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lg5/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, p0

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    new-instance p3, Lg5/l;

    const/16 v3, 0xb

    invoke-direct {p3, v3, p2, p0}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v5, p3

    :goto_3
    iget p0, v4, Landroid/graphics/RectF;->top:F

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    iget p2, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p0}, Lq2/j;->e(I)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_5

    add-int/lit8 p0, p0, 0x1

    iget p2, v0, Lq2/j;->g:I

    if-lt p0, p2, :cond_5

    goto :goto_6

    :cond_5
    move v3, p0

    iget p0, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    if-nez p0, :cond_6

    iget p2, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v8}, Lq2/j;->g(I)F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_6

    goto :goto_6

    :cond_6
    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lq2/g;->e(Lq2/j;Landroid/text/Layout;Landroidx/lifecycle/a1;ILandroid/graphics/RectF;Lr2/b;Lod/y6;Z)I

    move-result p2

    :goto_4
    move p3, v3

    const/4 v9, -0x1

    if-ne p2, v9, :cond_7

    if-ge p3, p0, :cond_7

    add-int/lit8 v3, p3, 0x1

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lq2/g;->e(Lq2/j;Landroid/text/Layout;Landroidx/lifecycle/a1;ILandroid/graphics/RectF;Lr2/b;Lod/y6;Z)I

    move-result p2

    goto :goto_4

    :cond_7
    if-ne p2, v9, :cond_8

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    move v3, p0

    invoke-static/range {v0 .. v7}, Lq2/g;->e(Lq2/j;Landroid/text/Layout;Landroidx/lifecycle/a1;ILandroid/graphics/RectF;Lr2/b;Lod/y6;Z)I

    move-result p0

    :goto_5
    if-ne p0, v9, :cond_9

    if-ge p3, v3, :cond_9

    add-int/lit8 v3, v3, -0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lq2/g;->e(Lq2/j;Landroid/text/Layout;Landroidx/lifecycle/a1;ILandroid/graphics/RectF;Lr2/b;Lod/y6;Z)I

    move-result p0

    goto :goto_5

    :cond_9
    if-ne p0, v9, :cond_a

    :goto_6
    const/4 p0, 0x0

    goto :goto_7

    :cond_a
    add-int/2addr p2, p1

    invoke-interface {v5, p2}, Lr2/b;->m(I)I

    move-result p2

    sub-int/2addr p0, p1

    invoke-interface {v5, p0}, Lr2/b;->n(I)I

    move-result p0

    filled-new-array {p2, p0}, [I

    move-result-object p0

    :goto_7
    if-nez p0, :cond_b

    sget-wide p0, Lp2/l0;->b:J

    return-wide p0

    :cond_b
    aget p2, p0, v8

    aget p0, p0, p1

    invoke-static {p2, p0}, Lp2/d0;->b(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final d()F
    .locals 2

    iget-wide v0, p0, Lp2/a;->c:J

    invoke-static {v0, v1}, Lb3/a;->h(J)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final e(Lm1/o;)V
    .locals 5

    invoke-static {p1}, Lm1/b;->a(Lm1/o;)Landroid/graphics/Canvas;

    move-result-object p1

    iget-object v0, p0, Lp2/a;->d:Lq2/j;

    iget-boolean v1, v0, Lq2/j;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lp2/a;->d()F

    move-result v1

    invoke-virtual {p0}, Lp2/a;->b()F

    move-result p0

    invoke-virtual {p1, v2, v2, v1, p0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_0
    iget p0, v0, Lq2/j;->h:I

    iget-object v1, v0, Lq2/j;->p:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    int-to-float v1, p0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    sget-object v1, Lq2/k;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lq2/i;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    check-cast v3, Lq2/i;

    iput-object p1, v3, Lq2/i;->a:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, v0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v3, Lq2/i;->a:Landroid/graphics/Canvas;

    if-eqz p0, :cond_4

    const/4 v1, -0x1

    int-to-float v1, v1

    int-to-float p0, p0

    mul-float/2addr v1, p0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    :goto_0
    iget-boolean p0, v0, Lq2/j;->d:Z

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    iput-object v1, v3, Lq2/i;->a:Landroid/graphics/Canvas;

    throw p0
.end method

.method public final f(Lm1/o;JLm1/g0;La3/l;Lo1/e;)V
    .locals 2

    iget-object v0, p0, Lp2/a;->a:Lx2/c;

    iget-object v0, v0, Lx2/c;->r:Lx2/d;

    iget v1, v0, Lx2/d;->c:I

    invoke-virtual {v0, p2, p3}, Lx2/d;->d(J)V

    invoke-virtual {v0, p4}, Lx2/d;->f(Lm1/g0;)V

    invoke-virtual {v0, p5}, Lx2/d;->g(La3/l;)V

    invoke-virtual {v0, p6}, Lx2/d;->e(Lo1/e;)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Lx2/d;->b(I)V

    invoke-virtual {p0, p1}, Lp2/a;->e(Lm1/o;)V

    invoke-virtual {v0, v1}, Lx2/d;->b(I)V

    return-void
.end method

.method public final g(Lm1/o;Lm1/m;FLm1/g0;La3/l;Lo1/e;)V
    .locals 8

    iget-object v0, p0, Lp2/a;->a:Lx2/c;

    iget-object v0, v0, Lx2/c;->r:Lx2/d;

    iget v1, v0, Lx2/d;->c:I

    invoke-virtual {p0}, Lp2/a;->d()F

    move-result v2

    invoke-virtual {p0}, Lp2/a;->b()F

    move-result v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    invoke-virtual {v0, p2, v2, v3, p3}, Lx2/d;->c(Lm1/m;JF)V

    invoke-virtual {v0, p4}, Lx2/d;->f(Lm1/g0;)V

    invoke-virtual {v0, p5}, Lx2/d;->g(La3/l;)V

    invoke-virtual {v0, p6}, Lx2/d;->e(Lo1/e;)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Lx2/d;->b(I)V

    invoke-virtual {p0, p1}, Lp2/a;->e(Lm1/o;)V

    invoke-virtual {v0, v1}, Lx2/d;->b(I)V

    return-void
.end method
