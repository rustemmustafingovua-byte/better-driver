.class public final Lx2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/r;


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Lp2/m0;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/List;

.field public final p:Lt2/d;

.field public final q:Lb3/c;

.field public final r:Lx2/d;

.field public final s:Ljava/lang/CharSequence;

.field public final t:Lq2/f;

.field public u:Lg5/m;

.field public final v:Z

.field public final w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lp2/m0;Ljava/util/List;Ljava/util/List;Lt2/d;Lb3/c;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    iput-object v4, v0, Lx2/c;->l:Ljava/lang/String;

    iput-object v1, v0, Lx2/c;->m:Lp2/m0;

    iput-object v2, v0, Lx2/c;->n:Ljava/util/List;

    move-object/from16 v4, p4

    iput-object v4, v0, Lx2/c;->o:Ljava/util/List;

    move-object/from16 v4, p5

    iput-object v4, v0, Lx2/c;->p:Lt2/d;

    iput-object v3, v0, Lx2/c;->q:Lb3/c;

    new-instance v4, Lx2/d;

    invoke-interface {v3}, Lb3/c;->a()F

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/text/TextPaint;-><init>(I)V

    iput v5, v4, Landroid/text/TextPaint;->density:F

    sget-object v5, La3/l;->b:La3/l;

    iput-object v5, v4, Lx2/d;->b:La3/l;

    const/4 v5, 0x3

    iput v5, v4, Lx2/d;->c:I

    sget-object v7, Lm1/g0;->d:Lm1/g0;

    iput-object v7, v4, Lx2/d;->d:Lm1/g0;

    iput-object v4, v0, Lx2/c;->r:Lx2/d;

    invoke-static {v1}, Lx2/i;->a(Lp2/m0;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    sget-object v7, Lx2/h;->a:Lq3/k;

    sget-object v7, Lx2/h;->a:Lq3/k;

    iget-object v9, v7, Lq3/k;->m:Ljava/lang/Object;

    check-cast v9, Lr0/r2;

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lx3/h;->d()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Lq3/k;->h()Lr0/r2;

    move-result-object v9

    iput-object v9, v7, Lq3/k;->m:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v9, Lx2/i;->a:Lx2/j;

    :goto_0
    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_1
    iput-boolean v7, v0, Lx2/c;->v:Z

    iget-object v7, v1, Lp2/m0;->b:Lp2/s;

    iget v7, v7, Lp2/s;->b:I

    iget-object v9, v1, Lp2/m0;->a:Lp2/e0;

    iget-object v9, v9, Lp2/e0;->k:Lw2/b;

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-ne v7, v10, :cond_4

    :cond_3
    :goto_2
    move v7, v11

    goto :goto_4

    :cond_4
    const/4 v10, 0x5

    if-ne v7, v10, :cond_6

    :cond_5
    move v7, v5

    goto :goto_4

    :cond_6
    if-ne v7, v6, :cond_7

    move v7, v8

    goto :goto_4

    :cond_7
    if-ne v7, v11, :cond_8

    move v7, v6

    goto :goto_4

    :cond_8
    if-ne v7, v5, :cond_9

    goto :goto_3

    :cond_9
    if-nez v7, :cond_8d

    :goto_3
    if-eqz v9, :cond_a

    iget-object v7, v9, Lw2/b;->l:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw2/a;

    iget-object v7, v7, Lw2/a;->a:Ljava/util/Locale;

    if-nez v7, :cond_b

    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v7

    if-eqz v7, :cond_3

    if-eq v7, v6, :cond_5

    goto :goto_2

    :goto_4
    iput v7, v0, Lx2/c;->w:I

    new-instance v7, Lld/b;

    invoke-direct {v7, v5, v0}, Lld/b;-><init>(ILjava/lang/Object;)V

    iget-object v9, v1, Lp2/m0;->b:Lp2/s;

    iget-object v9, v9, Lp2/s;->i:La3/s;

    if-nez v9, :cond_c

    sget-object v9, La3/s;->c:La3/s;

    :cond_c
    iget-boolean v10, v9, La3/s;->b:Z

    if-eqz v10, :cond_d

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v10

    or-int/lit16 v10, v10, 0x80

    goto :goto_5

    :cond_d
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v10

    and-int/lit16 v10, v10, -0x81

    :goto_5
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setFlags(I)V

    iget v9, v9, La3/s;->a:I

    if-ne v9, v6, :cond_e

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x40

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    :cond_e
    if-ne v9, v11, :cond_f

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    :cond_f
    if-ne v9, v5, :cond_10

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    :cond_10
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    :goto_6
    iget-object v1, v1, Lp2/m0;->a:Lp2/e0;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    move v9, v8

    :goto_7
    if-ge v9, v5, :cond_12

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lp2/e;

    iget-object v13, v13, Lp2/e;->a:Ljava/lang/Object;

    instance-of v13, v13, Lp2/e0;

    if-eqz v13, :cond_11

    goto :goto_8

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_12
    const/4 v12, 0x0

    :goto_8
    if-eqz v12, :cond_13

    move v2, v6

    goto :goto_9

    :cond_13
    move v2, v8

    :goto_9
    iget-wide v12, v1, Lp2/e0;->b:J

    iget-object v5, v1, Lp2/e0;->g:Ljava/lang/String;

    iget-object v9, v1, Lp2/e0;->k:Lw2/b;

    iget-object v14, v1, Lp2/e0;->a:La3/o;

    iget-object v15, v1, Lp2/e0;->j:La3/p;

    const/16 p2, 0x0

    iget-wide v10, v1, Lp2/e0;->h:J

    move-object/from16 p3, v9

    invoke-static {v12, v13}, Lb3/o;->b(J)J

    move-result-wide v8

    move/from16 p5, v6

    move-object/from16 v16, v7

    const-wide v6, 0x100000000L

    invoke-static {v8, v9, v6, v7}, Lb3/p;->a(JJ)Z

    move-result v17

    const-wide v6, 0x200000000L

    if-eqz v17, :cond_14

    invoke-interface {v3, v12, v13}, Lb3/c;->p0(J)F

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_a

    :cond_14
    invoke-static {v8, v9, v6, v7}, Lb3/p;->a(JJ)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    invoke-static {v12, v13}, Lb3/o;->c(J)F

    move-result v9

    mul-float/2addr v9, v8

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_15
    :goto_a
    iget-object v8, v1, Lp2/e0;->f:Lt2/p;

    if-nez v8, :cond_17

    iget-object v9, v1, Lp2/e0;->d:Lt2/i;

    if-nez v9, :cond_17

    iget-object v9, v1, Lp2/e0;->c:Lt2/k;

    if-eqz v9, :cond_16

    goto :goto_b

    :cond_16
    move/from16 v18, v2

    move-object/from16 v6, v16

    goto :goto_10

    :cond_17
    :goto_b
    iget-object v9, v1, Lp2/e0;->c:Lt2/k;

    if-nez v9, :cond_18

    sget-object v9, Lt2/k;->n:Lt2/k;

    :cond_18
    iget-object v12, v1, Lp2/e0;->d:Lt2/i;

    if-eqz v12, :cond_19

    iget v12, v12, Lt2/i;->a:I

    goto :goto_c

    :cond_19
    const/4 v12, 0x0

    :goto_c
    iget-object v13, v1, Lp2/e0;->e:Lt2/j;

    if-eqz v13, :cond_1a

    iget v13, v13, Lt2/j;->a:I

    :goto_d
    move-object/from16 v6, v16

    goto :goto_e

    :cond_1a
    const v13, 0xffff

    goto :goto_d

    :goto_e
    iget-object v7, v6, Lld/b;->m:Ljava/lang/Object;

    check-cast v7, Lx2/c;

    move/from16 v18, v2

    iget-object v2, v7, Lx2/c;->p:Lt2/d;

    check-cast v2, Lt2/e;

    invoke-virtual {v2, v8, v9, v12, v13}, Lt2/e;->b(Lt2/p;Lt2/k;II)Lt2/r;

    move-result-object v2

    instance-of v8, v2, Lt2/r;

    const-string v9, "null cannot be cast to non-null type android.graphics.Typeface"

    if-nez v8, :cond_1b

    new-instance v8, Lg5/m;

    iget-object v12, v7, Lx2/c;->u:Lg5/m;

    invoke-direct {v8, v2, v12}, Lg5/m;-><init>(Lt2/r;Lg5/m;)V

    iput-object v8, v7, Lx2/c;->u:Lg5/m;

    iget-object v2, v8, Lg5/m;->o:Ljava/lang/Object;

    invoke-static {v2, v9}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/Typeface;

    goto :goto_f

    :cond_1b
    iget-object v2, v2, Lt2/r;->l:Ljava/lang/Object;

    invoke-static {v2, v9}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/Typeface;

    :goto_f
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_10
    const/16 v2, 0xa

    if-eqz p3, :cond_1d

    sget-object v7, Lw2/b;->n:Lw2/b;

    sget-object v7, Lw2/c;->a:Lg5/m;

    invoke-virtual {v7}, Lg5/m;->i()Lw2/b;

    move-result-object v7

    move-object/from16 v8, p3

    invoke-virtual {v8, v7}, Lw2/b;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v8, v2}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v8, v8, Lw2/b;->l:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw2/a;

    iget-object v9, v9, Lw2/a;->a:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1c
    const/4 v9, 0x0

    new-array v8, v9, [Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/util/Locale;

    array-length v8, v7

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/util/Locale;

    new-instance v8, Landroid/os/LocaleList;

    invoke-direct {v8, v7}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_1d
    if-eqz v5, :cond_1e

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_1e
    if-eqz v15, :cond_1f

    sget-object v5, La3/p;->c:La3/p;

    invoke-virtual {v15, v5}, La3/p;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v5

    iget v7, v15, La3/p;->a:F

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v5

    iget v7, v15, La3/p;->b:F

    add-float/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_1f
    invoke-interface {v14}, La3/o;->a()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lx2/d;->d(J)V

    invoke-interface {v14}, La3/o;->b()Lm1/m;

    move-result-object v5

    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-interface {v14}, La3/o;->c()F

    move-result v9

    invoke-virtual {v4, v5, v7, v8, v9}, Lx2/d;->c(Lm1/m;JF)V

    iget-object v5, v1, Lp2/e0;->n:Lm1/g0;

    invoke-virtual {v4, v5}, Lx2/d;->f(Lm1/g0;)V

    iget-object v5, v1, Lp2/e0;->m:La3/l;

    invoke-virtual {v4, v5}, Lx2/d;->g(La3/l;)V

    iget-object v5, v1, Lp2/e0;->p:Lo1/e;

    invoke-virtual {v4, v5}, Lx2/d;->e(Lo1/e;)V

    invoke-static {v10, v11}, Lb3/o;->b(J)J

    move-result-wide v7

    const-wide v12, 0x100000000L

    invoke-static {v7, v8, v12, v13}, Lb3/p;->a(JJ)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_22

    invoke-static {v10, v11}, Lb3/o;->c(J)F

    move-result v5

    cmpg-float v5, v5, v7

    if-nez v5, :cond_20

    goto :goto_12

    :cond_20
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v8

    mul-float/2addr v8, v5

    invoke-interface {v3, v10, v11}, Lb3/c;->p0(J)F

    move-result v3

    cmpg-float v5, v8, v7

    if-nez v5, :cond_21

    goto :goto_13

    :cond_21
    div-float/2addr v3, v8

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_13

    :cond_22
    :goto_12
    invoke-static {v10, v11}, Lb3/o;->b(J)J

    move-result-wide v8

    const-wide v12, 0x200000000L

    invoke-static {v8, v9, v12, v13}, Lb3/p;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v10, v11}, Lb3/o;->c(J)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :cond_23
    :goto_13
    iget-wide v3, v1, Lp2/e0;->l:J

    iget-object v1, v1, Lp2/e0;->i:La3/a;

    if-eqz v18, :cond_25

    invoke-static {v10, v11}, Lb3/o;->b(J)J

    move-result-wide v8

    const-wide v12, 0x100000000L

    invoke-static {v8, v9, v12, v13}, Lb3/p;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {v10, v11}, Lb3/o;->c(J)F

    move-result v5

    cmpg-float v5, v5, v7

    if-nez v5, :cond_24

    goto :goto_14

    :cond_24
    move/from16 v5, p5

    goto :goto_15

    :cond_25
    :goto_14
    const/4 v5, 0x0

    :goto_15
    sget-wide v8, Lm1/p;->g:J

    invoke-static {v3, v4, v8, v9}, Lm1/p;->c(JJ)Z

    move-result v12

    if-nez v12, :cond_26

    sget-wide v12, Lm1/p;->f:J

    invoke-static {v3, v4, v12, v13}, Lm1/p;->c(JJ)Z

    move-result v12

    if-nez v12, :cond_26

    move/from16 v12, p5

    goto :goto_16

    :cond_26
    const/4 v12, 0x0

    :goto_16
    if-eqz v1, :cond_28

    iget v13, v1, La3/a;->a:F

    invoke-static {v13, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-nez v13, :cond_27

    goto :goto_17

    :cond_27
    move/from16 v13, p5

    goto :goto_18

    :cond_28
    :goto_17
    const/4 v13, 0x0

    :goto_18
    if-nez v5, :cond_29

    if-nez v12, :cond_29

    if-nez v13, :cond_29

    move-object/from16 v1, p2

    goto :goto_1d

    :cond_29
    if-eqz v5, :cond_2a

    :goto_19
    move-wide/from16 v28, v10

    goto :goto_1a

    :cond_2a
    sget-wide v10, Lb3/o;->c:J

    goto :goto_19

    :goto_1a
    if-eqz v12, :cond_2b

    move-wide/from16 v33, v3

    goto :goto_1b

    :cond_2b
    move-wide/from16 v33, v8

    :goto_1b
    if-eqz v13, :cond_2c

    move-object/from16 v30, v1

    goto :goto_1c

    :cond_2c
    move-object/from16 v30, p2

    :goto_1c
    new-instance v18, Lp2/e0;

    const/16 v36, 0x0

    const v37, 0xf67f

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v18 .. v37}, Lp2/e0;-><init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;I)V

    move-object/from16 v1, v18

    :goto_1d
    if-eqz v1, :cond_2e

    iget-object v3, v0, Lx2/c;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v3, :cond_2f

    if-nez v5, :cond_2d

    new-instance v8, Lp2/e;

    iget-object v9, v0, Lx2/c;->l:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9, v1}, Lp2/e;-><init>(IILjava/lang/Object;)V

    goto :goto_1f

    :cond_2d
    iget-object v8, v0, Lx2/c;->n:Ljava/util/List;

    add-int/lit8 v9, v5, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp2/e;

    :goto_1f
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2e
    iget-object v4, v0, Lx2/c;->n:Ljava/util/List;

    :cond_2f
    iget-object v9, v0, Lx2/c;->l:Ljava/lang/String;

    iget-object v1, v0, Lx2/c;->r:Lx2/d;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget-object v3, v0, Lx2/c;->m:Lp2/m0;

    iget-object v5, v0, Lx2/c;->o:Ljava/util/List;

    iget-object v15, v0, Lx2/c;->q:Lb3/c;

    iget-boolean v8, v0, Lx2/c;->v:Z

    sget-object v10, Lx2/b;->a:Lx2/a;

    const-class v10, Lx3/s;

    if-eqz v8, :cond_48

    invoke-static {}, Lx3/h;->d()Z

    move-result v8

    if-eqz v8, :cond_48

    iget-object v8, v3, Lp2/m0;->c:Lp2/w;

    if-eqz v8, :cond_30

    iget-object v8, v8, Lp2/w;->b:Lp2/u;

    if-eqz v8, :cond_30

    iget v8, v8, Lp2/u;->b:I

    new-instance v11, Lp2/j;

    invoke-direct {v11, v8}, Lp2/j;-><init>(I)V

    goto :goto_20

    :cond_30
    move-object/from16 v11, p2

    :goto_20
    if-nez v11, :cond_32

    :cond_31
    const/4 v8, 0x0

    goto :goto_21

    :cond_32
    iget v8, v11, Lp2/j;->a:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_31

    move/from16 v8, p5

    :goto_21
    invoke-static {}, Lx3/h;->a()Lx3/h;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Lx3/h;->c()I

    move-result v13

    move/from16 v14, p5

    if-ne v13, v14, :cond_33

    const/4 v13, 0x1

    goto :goto_22

    :cond_33
    const/4 v13, 0x0

    :goto_22
    if-eqz v13, :cond_47

    if-ltz v12, :cond_46

    if-ltz v12, :cond_34

    const/4 v13, 0x1

    goto :goto_23

    :cond_34
    const/4 v13, 0x0

    :goto_23
    if-eqz v13, :cond_45

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-ltz v13, :cond_35

    const/4 v13, 0x1

    goto :goto_24

    :cond_35
    const/4 v13, 0x0

    :goto_24
    if-eqz v13, :cond_44

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v12, v13, :cond_36

    const/4 v13, 0x1

    goto :goto_25

    :cond_36
    const/4 v13, 0x0

    :goto_25
    if-eqz v13, :cond_43

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_37

    if-nez v12, :cond_38

    :cond_37
    move/from16 p1, v7

    move-object v2, v10

    goto/16 :goto_2c

    :cond_38
    const/4 v14, 0x1

    if-eq v8, v14, :cond_39

    const/4 v13, 0x0

    goto :goto_26

    :cond_39
    const/4 v13, 0x1

    :goto_26
    iget-object v8, v11, Lx3/h;->e:Lx3/e;

    iget-object v8, v8, Lx3/e;->b:Lx2/k;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v9, Landroid/text/Spannable;

    if-eqz v11, :cond_3a

    new-instance v11, Lx3/t;

    move-object v14, v9

    check-cast v14, Landroid/text/Spannable;

    invoke-direct {v11, v14}, Lx3/t;-><init>(Landroid/text/Spannable;)V

    move/from16 p1, v7

    const/4 v7, 0x0

    goto :goto_29

    :cond_3a
    instance-of v11, v9, Landroid/text/Spanned;

    if-eqz v11, :cond_3c

    move-object v11, v9

    check-cast v11, Landroid/text/Spanned;

    add-int/lit8 v14, v12, 0x1

    move/from16 p1, v7

    const/4 v7, -0x1

    invoke-interface {v11, v7, v14, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    if-gt v7, v12, :cond_3b

    new-instance v11, Lx3/t;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput-boolean v7, v11, Lx3/t;->l:Z

    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v14, v11, Lx3/t;->m:Landroid/text/Spannable;

    goto :goto_29

    :cond_3b
    :goto_27
    const/4 v7, 0x0

    goto :goto_28

    :cond_3c
    move/from16 p1, v7

    goto :goto_27

    :goto_28
    move-object/from16 v11, p2

    :goto_29
    if-eqz v11, :cond_3f

    iget-object v14, v11, Lx3/t;->m:Landroid/text/Spannable;

    invoke-interface {v14, v7, v12, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lx3/s;

    if-eqz v14, :cond_3f

    array-length v7, v14

    if-lez v7, :cond_3f

    array-length v7, v14

    move-object/from16 v18, v9

    move v9, v12

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_2a
    if-ge v12, v7, :cond_3e

    move/from16 v19, v7

    aget-object v7, v14, v12

    move-object/from16 p6, v10

    iget-object v10, v11, Lx3/t;->m:Landroid/text/Spannable;

    invoke-interface {v10, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    move/from16 v20, v12

    iget-object v12, v11, Lx3/t;->m:Landroid/text/Spannable;

    invoke-interface {v12, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    if-eq v10, v9, :cond_3d

    invoke-virtual {v11, v7}, Lx3/t;->removeSpan(Ljava/lang/Object;)V

    :cond_3d
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v12, v20, 0x1

    move-object/from16 v10, p6

    move/from16 v7, v19

    goto :goto_2a

    :cond_3e
    move-object/from16 p6, v10

    move v10, v2

    move v12, v9

    goto :goto_2b

    :cond_3f
    move-object/from16 v18, v9

    move-object/from16 p6, v10

    const/4 v10, 0x0

    :goto_2b
    if-eq v10, v12, :cond_40

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v10, v2, :cond_41

    :cond_40
    move-object/from16 v2, p6

    move-object/from16 v9, v18

    goto :goto_2c

    :cond_41
    new-instance v14, Lg5/e;

    iget-object v2, v8, Lx2/k;->a:Ljava/lang/Object;

    check-cast v2, Lwa/e;

    const/16 v7, 0xe

    invoke-direct {v14, v7, v11, v2}, Lg5/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move v11, v12

    const v12, 0x7fffffff

    move-object/from16 v2, p6

    move-object/from16 v9, v18

    invoke-virtual/range {v8 .. v14}, Lx2/k;->c(Ljava/lang/CharSequence;IIIZLx3/m;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx3/t;

    if-eqz v7, :cond_42

    iget-object v7, v7, Lx3/t;->m:Landroid/text/Spannable;

    goto :goto_2d

    :cond_42
    :goto_2c
    move-object v7, v9

    :goto_2d
    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end should be < than charSequence length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start should be < than charSequence length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start should be <= than end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    move/from16 p1, v7

    move-object v2, v10

    move-object v7, v9

    :goto_2e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const-wide v12, 0xff00000000L

    if-eqz v8, :cond_49

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_49

    iget-object v8, v3, Lp2/m0;->b:Lp2/s;

    iget-object v8, v8, Lp2/s;->d:La3/q;

    sget-object v14, La3/q;->c:La3/q;

    invoke-static {v8, v14}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    iget-object v8, v3, Lp2/m0;->b:Lp2/s;

    const-wide/16 v18, 0x0

    iget-wide v10, v8, Lp2/s;->c:J

    and-long/2addr v10, v12

    cmp-long v8, v10, v18

    if-nez v8, :cond_4a

    goto/16 :goto_59

    :cond_49
    const-wide/16 v18, 0x0

    :cond_4a
    instance-of v8, v7, Landroid/text/Spannable;

    if-eqz v8, :cond_4b

    check-cast v7, Landroid/text/Spannable;

    move-object v10, v7

    goto :goto_2f

    :cond_4b
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v10, v8

    :goto_2f
    iget-object v7, v3, Lp2/m0;->a:Lp2/e0;

    iget-object v7, v7, Lp2/e0;->m:La3/l;

    sget-object v8, La3/l;->c:La3/l;

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x21

    if-eqz v7, :cond_4c

    sget-object v7, Lx2/b;->a:Lx2/a;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x0

    invoke-interface {v10, v7, v11, v9, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4c
    iget-object v7, v3, Lp2/m0;->c:Lp2/w;

    if-eqz v7, :cond_4d

    iget-object v7, v7, Lp2/w;->b:Lp2/u;

    if-eqz v7, :cond_4d

    iget-boolean v7, v7, Lp2/u;->a:Z

    goto :goto_30

    :cond_4d
    const/4 v7, 0x0

    :goto_30
    if-eqz v7, :cond_4f

    iget-object v7, v3, Lp2/m0;->b:Lp2/s;

    iget-object v9, v7, Lp2/s;->f:La3/i;

    if-nez v9, :cond_4f

    move-wide/from16 v20, v12

    iget-wide v12, v7, Lp2/s;->c:J

    invoke-static {v12, v13, v1, v15}, La/a;->x(JFLb3/c;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_4e

    new-instance v9, Ls2/g;

    invoke-direct {v9, v7}, Ls2/g;-><init>(F)V

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v11, 0x0

    invoke-interface {v10, v9, v11, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4e
    const/4 v11, 0x0

    goto :goto_36

    :cond_4f
    move-wide/from16 v20, v12

    iget-object v7, v3, Lp2/m0;->b:Lp2/s;

    iget-object v9, v7, Lp2/s;->f:La3/i;

    if-nez v9, :cond_50

    sget-object v9, La3/i;->d:La3/i;

    :cond_50
    iget-wide v11, v7, Lp2/s;->c:J

    invoke-static {v11, v12, v1, v15}, La/a;->x(JFLb3/c;)F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_4e

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_51

    goto :goto_31

    :cond_51
    invoke-static {v10}, Lr9/k;->h0(Ljava/lang/CharSequence;)C

    move-result v7

    const/16 v11, 0xa

    if-ne v7, v11, :cond_52

    :goto_31
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v14, 0x1

    add-int/2addr v7, v14

    :goto_32
    move/from16 v24, v7

    goto :goto_33

    :cond_52
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    goto :goto_32

    :goto_33
    new-instance v22, Ls2/h;

    iget v7, v9, La3/i;->b:I

    and-int/lit8 v11, v7, 0x1

    if-lez v11, :cond_53

    const/16 v25, 0x1

    goto :goto_34

    :cond_53
    const/16 v25, 0x0

    :goto_34
    and-int/lit8 v7, v7, 0x10

    if-lez v7, :cond_54

    const/16 v26, 0x1

    goto :goto_35

    :cond_54
    const/16 v26, 0x0

    :goto_35
    iget v7, v9, La3/i;->a:F

    iget v9, v9, La3/i;->c:I

    move/from16 v27, v7

    move/from16 v28, v9

    invoke-direct/range {v22 .. v28}, Ls2/h;-><init>(FIZZFI)V

    move-object/from16 v7, v22

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v11, 0x0

    invoke-interface {v10, v7, v11, v9, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_36
    iget-object v7, v3, Lp2/m0;->b:Lp2/s;

    iget-object v7, v7, Lp2/s;->d:La3/q;

    if-eqz v7, :cond_56

    iget-wide v12, v7, La3/q;->a:J

    iget-wide v8, v7, La3/q;->b:J

    move/from16 p6, v1

    invoke-static {v11}, La/a;->k(I)J

    move-result-wide v0

    invoke-static {v12, v13, v0, v1}, Lb3/o;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {v11}, La/a;->k(I)J

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Lb3/o;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_56

    :cond_55
    and-long v0, v12, v20

    cmp-long v0, v0, v18

    if-nez v0, :cond_57

    :cond_56
    :goto_37
    move-object/from16 v18, v5

    move-object v7, v6

    goto/16 :goto_3a

    :cond_57
    and-long v0, v8, v20

    cmp-long v0, v0, v18

    if-nez v0, :cond_58

    goto :goto_37

    :cond_58
    invoke-static {v12, v13}, Lb3/o;->b(J)J

    move-result-wide v0

    move-object/from16 v18, v5

    move-object v7, v6

    const-wide v5, 0x100000000L

    invoke-static {v0, v1, v5, v6}, Lb3/p;->a(JJ)Z

    move-result v11

    if-eqz v11, :cond_59

    invoke-interface {v15, v12, v13}, Lb3/c;->p0(J)F

    move-result v0

    const-wide v5, 0x200000000L

    goto :goto_38

    :cond_59
    const-wide v5, 0x200000000L

    invoke-static {v0, v1, v5, v6}, Lb3/p;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {v12, v13}, Lb3/o;->c(J)F

    move-result v0

    mul-float v0, v0, p6

    goto :goto_38

    :cond_5a
    move/from16 v0, p1

    :goto_38
    invoke-static {v8, v9}, Lb3/o;->b(J)J

    move-result-wide v11

    const-wide v13, 0x100000000L

    invoke-static {v11, v12, v13, v14}, Lb3/p;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v15, v8, v9}, Lb3/c;->p0(J)F

    move-result v1

    goto :goto_39

    :cond_5b
    invoke-static {v11, v12, v5, v6}, Lb3/p;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {v8, v9}, Lb3/o;->c(J)F

    move-result v1

    mul-float v1, v1, p6

    goto :goto_39

    :cond_5c
    move/from16 v1, p1

    :goto_39
    new-instance v5, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v0, v8

    float-to-int v0, v0

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v1, v8

    float-to-int v1, v1

    invoke-direct {v5, v0, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x21

    const/4 v11, 0x0

    invoke-interface {v10, v5, v11, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_3a
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_3b
    if-ge v5, v1, :cond_61

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp2/e;

    iget-object v8, v6, Lp2/e;->a:Ljava/lang/Object;

    instance-of v9, v8, Lp2/e0;

    if-eqz v9, :cond_60

    move-object v9, v8

    check-cast v9, Lp2/e0;

    iget-object v11, v9, Lp2/e0;->f:Lt2/p;

    if-nez v11, :cond_5e

    iget-object v11, v9, Lp2/e0;->d:Lt2/i;

    if-nez v11, :cond_5e

    iget-object v9, v9, Lp2/e0;->c:Lt2/k;

    if-eqz v9, :cond_5d

    goto :goto_3c

    :cond_5d
    const/4 v9, 0x0

    goto :goto_3d

    :cond_5e
    :goto_3c
    const/4 v9, 0x1

    :goto_3d
    if-nez v9, :cond_5f

    check-cast v8, Lp2/e0;

    iget-object v8, v8, Lp2/e0;->e:Lt2/j;

    if-eqz v8, :cond_60

    :cond_5f
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_61
    iget-object v1, v3, Lp2/m0;->a:Lp2/e0;

    iget-object v5, v1, Lp2/e0;->f:Lt2/p;

    if-nez v5, :cond_63

    iget-object v6, v1, Lp2/e0;->d:Lt2/i;

    if-nez v6, :cond_63

    iget-object v6, v1, Lp2/e0;->c:Lt2/k;

    if-eqz v6, :cond_62

    goto :goto_3e

    :cond_62
    const/4 v6, 0x0

    goto :goto_3f

    :cond_63
    :goto_3e
    const/4 v6, 0x1

    :goto_3f
    if-nez v6, :cond_65

    iget-object v6, v1, Lp2/e0;->e:Lt2/j;

    if-eqz v6, :cond_64

    goto :goto_40

    :cond_64
    move-object/from16 v1, p2

    goto :goto_41

    :cond_65
    :goto_40
    iget-object v6, v1, Lp2/e0;->c:Lt2/k;

    iget-object v8, v1, Lp2/e0;->d:Lt2/i;

    iget-object v1, v1, Lp2/e0;->e:Lt2/j;

    new-instance v19, Lp2/e0;

    const/16 v37, 0x0

    const v38, 0xffc3

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v26, v1

    move-object/from16 v27, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v8

    invoke-direct/range {v19 .. v38}, Lp2/e0;-><init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;I)V

    move-object/from16 v1, v19

    :goto_41
    new-instance v5, Lb0/l2;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v10, v7}, Lb0/l2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v14, 0x1

    if-gt v6, v14, :cond_67

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6f

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp2/e;

    iget-object v6, v6, Lp2/e;->a:Ljava/lang/Object;

    check-cast v6, Lp2/e0;

    if-nez v1, :cond_66

    goto :goto_42

    :cond_66
    invoke-virtual {v1, v6}, Lp2/e0;->c(Lp2/e0;)Lp2/e0;

    move-result-object v6

    :goto_42
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/e;

    iget v1, v1, Lp2/e;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/e;

    iget v0, v0, Lp2/e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v1, v0}, Lb0/l2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_49

    :cond_67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v7, v6, 0x2

    new-array v8, v7, [I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_43
    if-ge v11, v9, :cond_68

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lp2/e;

    iget v13, v12, Lp2/e;->b:I

    aput v13, v8, v11

    add-int v13, v11, v6

    iget v12, v12, Lp2/e;->c:I

    aput v12, v8, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    :cond_68
    const/4 v14, 0x1

    if-le v7, v14, :cond_69

    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    :cond_69
    if-eqz v7, :cond_8c

    const/4 v11, 0x0

    aget v6, v8, v11

    move v9, v6

    const/4 v6, 0x0

    :goto_44
    if-ge v6, v7, :cond_6f

    aget v11, v8, v6

    if-ne v11, v9, :cond_6a

    move-object/from16 p6, v0

    move-object/from16 v19, v1

    move/from16 v20, v6

    goto :goto_48

    :cond_6a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object v14, v1

    const/4 v13, 0x0

    :goto_45
    if-ge v13, v12, :cond_6d

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 p6, v0

    move-object/from16 v0, v19

    check-cast v0, Lp2/e;

    move-object/from16 v19, v1

    iget v1, v0, Lp2/e;->b:I

    move/from16 v20, v6

    iget v6, v0, Lp2/e;->c:I

    if-eq v1, v6, :cond_6c

    invoke-static {v9, v11, v1, v6}, Lp2/h;->b(IIII)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v0, v0, Lp2/e;->a:Ljava/lang/Object;

    check-cast v0, Lp2/e0;

    if-nez v14, :cond_6b

    :goto_46
    move-object v14, v0

    goto :goto_47

    :cond_6b
    invoke-virtual {v14, v0}, Lp2/e0;->c(Lp2/e0;)Lp2/e0;

    move-result-object v0

    goto :goto_46

    :cond_6c
    :goto_47
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    move/from16 v6, v20

    goto :goto_45

    :cond_6d
    move-object/from16 p6, v0

    move-object/from16 v19, v1

    move/from16 v20, v6

    if-eqz v14, :cond_6e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v14, v0, v1}, Lb0/l2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    move v9, v11

    :goto_48
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    goto :goto_44

    :cond_6f
    :goto_49
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_4a
    if-ge v9, v0, :cond_80

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/e;

    iget-object v6, v5, Lp2/e;->a:Ljava/lang/Object;

    instance-of v7, v6, Lp2/e0;

    if-eqz v7, :cond_70

    iget v14, v5, Lp2/e;->b:I

    iget v5, v5, Lp2/e;->c:I

    if-ltz v14, :cond_70

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v14, v7, :cond_70

    if-le v5, v14, :cond_70

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v5, v7, :cond_71

    :cond_70
    move/from16 v19, v0

    move/from16 v20, v1

    move-object v13, v15

    goto/16 :goto_51

    :cond_71
    check-cast v6, Lp2/e0;

    iget-object v7, v6, Lp2/e0;->i:La3/a;

    iget-object v8, v6, Lp2/e0;->a:La3/o;

    if-eqz v7, :cond_72

    iget v7, v7, La3/a;->a:F

    new-instance v11, Ls2/a;

    const/4 v12, 0x0

    invoke-direct {v11, v7, v12}, Ls2/a;-><init>(FI)V

    const/16 v7, 0x21

    invoke-interface {v10, v11, v14, v5, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_72
    invoke-interface {v8}, La3/o;->a()J

    move-result-wide v11

    invoke-static {v10, v11, v12, v14, v5}, La/a;->A(Landroid/text/Spannable;JII)V

    invoke-interface {v8}, La3/o;->b()Lm1/m;

    move-result-object v7

    invoke-interface {v8}, La3/o;->c()F

    move-result v8

    if-eqz v7, :cond_74

    instance-of v11, v7, Lm1/j0;

    if-eqz v11, :cond_73

    check-cast v7, Lm1/j0;

    iget-wide v7, v7, Lm1/j0;->a:J

    invoke-static {v10, v7, v8, v14, v5}, La/a;->A(Landroid/text/Spannable;JII)V

    goto :goto_4b

    :cond_73
    new-instance v11, Lz2/b;

    check-cast v7, Lm1/n;

    invoke-direct {v11, v7, v8}, Lz2/b;-><init>(Lm1/n;F)V

    const/16 v7, 0x21

    invoke-interface {v10, v11, v14, v5, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_74
    :goto_4b
    iget-object v7, v6, Lp2/e0;->m:La3/l;

    if-eqz v7, :cond_77

    iget v7, v7, La3/l;->a:I

    new-instance v8, Ls2/k;

    or-int/lit8 v11, v7, 0x1

    if-ne v11, v7, :cond_75

    const/4 v11, 0x1

    goto :goto_4c

    :cond_75
    const/4 v11, 0x0

    :goto_4c
    or-int/lit8 v12, v7, 0x2

    if-ne v12, v7, :cond_76

    const/4 v7, 0x1

    goto :goto_4d

    :cond_76
    const/4 v7, 0x0

    :goto_4d
    invoke-direct {v8, v11, v7}, Ls2/k;-><init>(ZZ)V

    const/16 v7, 0x21

    invoke-interface {v10, v8, v14, v5, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4e

    :cond_77
    const/16 v7, 0x21

    :goto_4e
    iget-wide v11, v6, Lp2/e0;->b:J

    move-object v13, v15

    move v15, v5

    invoke-static/range {v10 .. v15}, La/a;->B(Landroid/text/Spannable;JLb3/c;II)V

    iget-object v5, v6, Lp2/e0;->g:Ljava/lang/String;

    if-eqz v5, :cond_78

    new-instance v8, Ls2/b;

    const/4 v11, 0x0

    invoke-direct {v8, v11, v5}, Ls2/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {v10, v8, v14, v15, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_78
    iget-object v5, v6, Lp2/e0;->j:La3/p;

    if-eqz v5, :cond_79

    new-instance v8, Landroid/text/style/ScaleXSpan;

    iget v11, v5, La3/p;->a:F

    invoke-direct {v8, v11}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    invoke-interface {v10, v8, v14, v15, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Ls2/a;

    iget v5, v5, La3/p;->b:F

    const/4 v11, 0x1

    invoke-direct {v8, v5, v11}, Ls2/a;-><init>(FI)V

    invoke-interface {v10, v8, v14, v15, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4f

    :cond_79
    const/4 v11, 0x1

    :goto_4f
    iget-object v5, v6, Lp2/e0;->k:Lw2/b;

    invoke-static {v10, v5, v14, v15}, La/a;->C(Landroid/text/Spannable;Lw2/b;II)V

    iget-wide v7, v6, Lp2/e0;->l:J

    const-wide/16 v19, 0x10

    cmp-long v5, v7, v19

    if-eqz v5, :cond_7a

    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v7, v8}, Lm1/v;->y(J)I

    move-result v7

    invoke-direct {v5, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-interface {v10, v5, v14, v15, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_7a
    iget-object v5, v6, Lp2/e0;->n:Lm1/g0;

    if-eqz v5, :cond_7c

    iget-wide v7, v5, Lm1/g0;->b:J

    new-instance v12, Ls2/j;

    move-object/from16 p6, v12

    iget-wide v11, v5, Lm1/g0;->a:J

    invoke-static {v11, v12}, Lm1/v;->y(J)I

    move-result v11

    const/16 v12, 0x20

    move/from16 v19, v0

    move/from16 v20, v1

    shr-long v0, v7, v12

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v21, 0xffffffffL

    and-long v7, v7, v21

    long-to-int v1, v7

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget v5, v5, Lm1/g0;->c:F

    cmpg-float v7, v5, p1

    if-nez v7, :cond_7b

    const/4 v5, 0x1

    :cond_7b
    move-object/from16 v7, p6

    invoke-direct {v7, v11, v0, v1, v5}, Ls2/j;-><init>(IFFF)V

    const/16 v1, 0x21

    invoke-interface {v10, v7, v14, v15, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_50

    :cond_7c
    move/from16 v19, v0

    move/from16 v20, v1

    const/16 v1, 0x21

    :goto_50
    iget-object v0, v6, Lp2/e0;->p:Lo1/e;

    if-eqz v0, :cond_7d

    new-instance v5, Lz2/a;

    invoke-direct {v5, v0}, Lz2/a;-><init>(Lo1/e;)V

    invoke-interface {v10, v5, v14, v15, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_7d
    iget-wide v0, v6, Lp2/e0;->h:J

    invoke-static {v0, v1}, Lb3/o;->b(J)J

    move-result-wide v0

    const-wide v7, 0x100000000L

    invoke-static {v0, v1, v7, v8}, Lb3/p;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-wide v0, v6, Lp2/e0;->h:J

    invoke-static {v0, v1}, Lb3/o;->b(J)J

    move-result-wide v0

    const-wide v5, 0x200000000L

    invoke-static {v0, v1, v5, v6}, Lb3/p;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_7f

    :cond_7e
    const/4 v1, 0x1

    goto :goto_52

    :cond_7f
    :goto_51
    move/from16 v1, v20

    :goto_52
    add-int/lit8 v9, v9, 0x1

    move-object v15, v13

    move/from16 v0, v19

    goto/16 :goto_4a

    :cond_80
    move/from16 v20, v1

    move-object v13, v15

    if-eqz v20, :cond_85

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v9, 0x0

    :goto_53
    if-ge v9, v0, :cond_85

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/e;

    iget-object v5, v1, Lp2/e;->a:Ljava/lang/Object;

    check-cast v5, Lp2/b;

    instance-of v6, v5, Lp2/e0;

    if-eqz v6, :cond_81

    iget v6, v1, Lp2/e;->b:I

    iget v1, v1, Lp2/e;->c:I

    if-ltz v6, :cond_81

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_81

    if-le v1, v6, :cond_81

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v1, v7, :cond_82

    :cond_81
    const/16 v7, 0x21

    goto :goto_55

    :cond_82
    check-cast v5, Lp2/e0;

    iget-wide v7, v5, Lp2/e0;->h:J

    invoke-static {v7, v8}, Lb3/o;->b(J)J

    move-result-wide v11

    const-wide v14, 0x100000000L

    invoke-static {v11, v12, v14, v15}, Lb3/p;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_83

    new-instance v5, Ls2/f;

    invoke-interface {v13, v7, v8}, Lb3/c;->p0(J)F

    move-result v7

    invoke-direct {v5, v7}, Ls2/f;-><init>(F)V

    goto :goto_54

    :cond_83
    const-wide v14, 0x200000000L

    invoke-static {v11, v12, v14, v15}, Lb3/p;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_84

    new-instance v5, Ls2/e;

    invoke-static {v7, v8}, Lb3/o;->c(J)F

    move-result v7

    invoke-direct {v5, v7}, Ls2/e;-><init>(F)V

    goto :goto_54

    :cond_84
    move-object/from16 v5, p2

    :goto_54
    if-eqz v5, :cond_81

    const/16 v7, 0x21

    invoke-interface {v10, v5, v6, v1, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_55
    add-int/lit8 v9, v9, 0x1

    goto :goto_53

    :cond_85
    iget-object v0, v3, Lp2/m0;->b:Lp2/s;

    iget-object v0, v0, Lp2/s;->d:La3/q;

    if-eqz v0, :cond_87

    iget-wide v0, v0, La3/q;->a:J

    invoke-static {v0, v1}, Lb3/o;->b(J)J

    move-result-wide v5

    const-wide v14, 0x100000000L

    invoke-static {v5, v6, v14, v15}, Lb3/p;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v13, v0, v1}, Lb3/c;->p0(J)F

    goto :goto_56

    :cond_86
    const-wide v12, 0x200000000L

    invoke-static {v5, v6, v12, v13}, Lb3/p;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-static {v0, v1}, Lb3/o;->c(J)F

    :cond_87
    :goto_56
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v9, 0x0

    :goto_57
    if-ge v9, v0, :cond_88

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/e;

    iget-object v1, v1, Lp2/e;->a:Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_57

    :cond_88
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_8b

    move-object/from16 v0, v18

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/e;

    iget-object v1, v0, Lp2/e;->a:Ljava/lang/Object;

    if-nez v1, :cond_8a

    iget v1, v0, Lp2/e;->b:I

    iget v0, v0, Lp2/e;->c:I

    invoke-interface {v10, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    move v8, v11

    :goto_58
    if-ge v8, v1, :cond_89

    aget-object v2, v0, v8

    check-cast v2, Lx3/s;

    invoke-interface {v10, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_58

    :cond_89
    new-instance v0, Ls2/i;

    throw p2

    :cond_8a
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_8b
    move-object/from16 v0, p0

    move-object v7, v10

    :goto_59
    iput-object v7, v0, Lx2/c;->s:Ljava/lang/CharSequence;

    new-instance v1, Lq2/f;

    iget-object v2, v0, Lx2/c;->r:Lx2/d;

    iget v3, v0, Lx2/c;->w:I

    invoke-direct {v1, v7, v2, v3}, Lq2/f;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    iput-object v1, v0, Lx2/c;->t:Lq2/f;

    return-void

    :cond_8c
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid TextDirection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lx2/c;->u:Lg5/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg5/m;->o()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lx2/c;->v:Z

    if-nez v0, :cond_3

    iget-object p0, p0, Lx2/c;->m:Lp2/m0;

    invoke-static {p0}, Lx2/i;->a(Lp2/m0;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lx2/h;->a:Lq3/k;

    sget-object p0, Lx2/h;->a:Lq3/k;

    iget-object v0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast v0, Lr0/r2;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lx3/h;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lq3/k;->h()Lr0/r2;

    move-result-object v0

    iput-object v0, p0, Lq3/k;->m:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lx2/i;->a:Lx2/j;

    :goto_1
    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final c()F
    .locals 9

    iget-object p0, p0, Lx2/c;->t:Lq2/f;

    iget v0, p0, Lq2/f;->e:F

    iget-object v1, p0, Lq2/f;->b:Landroid/text/TextPaint;

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lq2/f;->e:F

    return p0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    new-instance v2, Lq2/c;

    iget-object v3, p0, Lq2/f;->a:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lq2/c;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    new-instance v2, Ljava/util/PriorityQueue;

    new-instance v3, Lcom/graphhopper/isochrone/algorithm/b;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/graphhopper/isochrone/algorithm/b;-><init>(I)V

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v6

    if-ge v6, v4, :cond_1

    new-instance v6, Lt8/j;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt8/j;

    if-eqz v6, :cond_2

    iget-object v7, v6, Lt8/j;->m:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget-object v6, v6, Lt8/j;->l:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    sub-int/2addr v7, v6

    sub-int v6, v3, v5

    if-ge v7, v6, :cond_2

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    new-instance v6, Lt8/j;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v5

    move v8, v5

    move v5, v3

    move v3, v8

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt8/j;

    iget-object v3, v2, Lt8/j;->l:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v2, v2, Lt8/j;->m:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lq2/f;->b()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt8/j;

    iget-object v4, v3, Lt8/j;->l:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v3, v3, Lt8/j;->m:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lq2/f;->b()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v4, v3, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_3
    iput v0, p0, Lq2/f;->e:F

    return v0

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final d()F
    .locals 0

    iget-object p0, p0, Lx2/c;->t:Lq2/f;

    invoke-virtual {p0}, Lq2/f;->c()F

    move-result p0

    return p0
.end method
