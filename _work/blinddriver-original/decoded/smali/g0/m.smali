.class public abstract Lg0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf3/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf3/a0;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lf3/a0;-><init>(I)V

    sput-object v0, Lg0/m;->a:Lf3/a0;

    return-void
.end method

.method public static final a(Le0/g;Le0/c;Lr0/q;I)V
    .locals 8

    const v0, 0x71816bae

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    and-int/lit8 v2, v0, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, -0x3c2b7b58

    invoke-virtual {p2, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {p2, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p2, v4}, Lr0/q;->q(Z)V

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v0, v0, 0xe

    if-eq v0, v1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    or-int v0, v3, v4

    invoke-virtual {p2, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_4

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne v1, v0, :cond_5

    :cond_4
    new-instance v1, Lb0/o;

    const/4 v0, 0x7

    invoke-direct {v1, p1, v2, p0, v0}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object v4, v1

    check-cast v4, Li9/c;

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lq/f;->b(Lf1/r;Lq/c;Li9/c;Lr0/q;II)V

    goto :goto_4

    :cond_6
    move-object v5, p2

    invoke-virtual {v5}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {v5}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lg0/k;

    invoke-direct {v0, p0, p1, p3}, Lg0/k;-><init>(Le0/g;Le0/c;I)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final b(IJLr0/q;I)V
    .locals 58

    move-wide/from16 v3, p1

    move-object/from16 v1, p3

    const v0, -0x49eca00d

    invoke-virtual {v1, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p4, 0x6

    const/4 v2, 0x4

    const/4 v5, 0x2

    move/from16 v6, p0

    if-nez v0, :cond_1

    invoke-virtual {v1, v6}, Lr0/q;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    or-int v0, p4, v0

    goto :goto_1

    :cond_1
    move/from16 v0, p4

    :goto_1
    and-int/lit8 v7, p4, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v1, v3, v4}, Lr0/q;->f(J)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v0, v7

    :cond_3
    move v7, v0

    and-int/lit8 v0, v7, 0x13

    const/16 v9, 0x12

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v0, v9, :cond_4

    move v0, v10

    goto :goto_3

    :cond_4
    move v0, v11

    :goto_3
    and-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v9, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v1, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    and-int/lit8 v13, v7, 0xe

    if-ne v13, v2, :cond_5

    move v13, v10

    goto :goto_4

    :cond_5
    move v13, v11

    :goto_4
    or-int/2addr v12, v13

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    const/4 v14, -0x1

    if-nez v12, :cond_6

    sget-object v12, Lr0/m;->a:Lr0/e;

    if-ne v13, v12, :cond_7

    :cond_6
    filled-new-array {v6}, [I

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v9, v11, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-ne v9, v14, :cond_8

    invoke-virtual {v1}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_4e

    new-instance v0, Lg0/j;

    const/4 v5, 0x1

    move/from16 v2, p4

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lg0/j;-><init>(IIJI)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    return-void

    :cond_8
    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v6, Lf2/o0;->c:Lr0/a0;

    invoke-virtual {v1, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    sget-object v12, Lf2/o0;->e:Lr0/s2;

    invoke-virtual {v1, v12}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lk2/d;

    monitor-enter v12

    :try_start_0
    iget-object v13, v12, Lk2/d;->a:Lk/x;

    invoke-virtual {v13, v9}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/TypedValue;

    if-nez v13, :cond_9

    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6, v9, v13, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v15, v12, Lk2/d;->a:Lk/x;

    invoke-virtual {v15, v9}, Lk/x;->d(I)I

    move-result v16

    const/16 v17, 0x20

    iget-object v8, v15, Lk/k;->c:[Ljava/lang/Object;

    aget-object v18, v8, v16

    iget-object v15, v15, Lk/k;->b:[I

    aput v9, v15, v16

    aput-object v13, v8, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_3a

    :cond_9
    const/16 v17, 0x20

    :goto_5
    monitor-exit v12

    iget-object v8, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    const/4 v12, 0x5

    if-eqz v8, :cond_46

    const-string v15, ".xml"

    invoke-static {v8, v15}, Lr9/k;->Y(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v15

    if-ne v15, v10, :cond_46

    const v8, -0x699b7fa2

    invoke-virtual {v1, v8}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    iget v13, v13, Landroid/util/TypedValue;->changingConfigurations:I

    sget-object v0, Lf2/o0;->d:Lr0/s2;

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lk2/c;

    new-instance v2, Lk2/b;

    invoke-direct {v2, v8, v9}, Lk2/b;-><init>(Landroid/content/res/Resources$Theme;I)V

    iget-object v0, v15, Lk2/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/a;

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_45

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_7
    if-eq v0, v5, :cond_b

    if-eq v0, v10, :cond_b

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_7

    :cond_b
    if-ne v0, v5, :cond_44

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v14, "vector"

    invoke-static {v0, v14}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    new-instance v10, Ls1/a;

    invoke-direct {v10, v9}, Ls1/a;-><init>(Landroid/content/res/XmlResourceParser;)V

    sget-object v0, Ls1/b;->a:[I

    if-nez v8, :cond_c

    invoke-virtual {v6, v14, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_8
    move-object/from16 v20, v0

    goto :goto_9

    :cond_c
    invoke-virtual {v8, v14, v0, v11, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_8

    :goto_9
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {v10, v0}, Ls1/a;->c(I)V

    const-string v0, "autoMirrored"

    const-string v5, "http://schemas.android.com/apk/res/android"

    invoke-interface {v9, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object/from16 v5, v20

    invoke-virtual {v5, v12, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v30, v0

    goto :goto_a

    :cond_d
    move-object/from16 v5, v20

    move/from16 v30, v11

    :goto_a
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {v10, v0}, Ls1/a;->c(I)V

    const-string v0, "viewportWidth"

    const/4 v12, 0x7

    const/4 v11, 0x0

    invoke-virtual {v10, v5, v0, v12, v11}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v25

    const-string v0, "viewportHeight"

    const/16 v12, 0x8

    invoke-virtual {v10, v5, v0, v12, v11}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v26

    cmpg-float v0, v25, v11

    if-lez v0, :cond_42

    cmpg-float v0, v26, v11

    if-lez v0, :cond_41

    const/4 v12, 0x3

    invoke-virtual {v5, v12, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {v10, v0}, Ls1/a;->c(I)V

    const/4 v12, 0x2

    invoke-virtual {v5, v12, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {v10, v0}, Ls1/a;->c(I)V

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v0, v0, Landroid/util/TypedValue;->type:I

    if-ne v0, v12, :cond_e

    sget-wide v27, Lm1/p;->g:J

    move/from16 v32, v7

    goto/16 :goto_d

    :cond_e
    const-string v0, "tint"

    const-string v12, "http://schemas.android.com/apk/res/android"

    invoke-interface {v9, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5, v11, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v11, v0, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_10

    const/16 v12, 0x1c

    if-lt v11, v12, :cond_f

    const/16 v12, 0x1f

    if-gt v11, v12, :cond_f

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move/from16 v32, v7

    goto :goto_c

    :cond_f
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v32, v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    sget-object v11, Lk3/c;->a:Ljava/lang/ThreadLocal;

    :try_start_1
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    invoke-static {v0, v7, v8}, Lk3/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    const-string v7, "CSLCompat"

    const-string v11, "Failed to inflate ColorStateList."

    invoke-static {v7, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    const/4 v0, 0x0

    goto :goto_c

    :cond_10
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to resolve attribute at index 1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move/from16 v32, v7

    goto :goto_b

    :goto_c
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    invoke-virtual {v10, v7}, Ls1/a;->c(I)V

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0}, Lm1/v;->c(I)J

    move-result-wide v27

    goto :goto_d

    :cond_12
    sget-wide v27, Lm1/p;->g:J

    goto :goto_d

    :cond_13
    move/from16 v32, v7

    sget-wide v27, Lm1/p;->g:J

    :goto_d
    const/4 v0, 0x6

    const/4 v7, -0x1

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v12

    invoke-virtual {v10, v12}, Ls1/a;->c(I)V

    const/16 v12, 0x9

    if-eq v11, v7, :cond_14

    const/4 v7, 0x3

    if-eq v11, v7, :cond_16

    const/4 v7, 0x5

    if-eq v11, v7, :cond_14

    if-eq v11, v12, :cond_15

    packed-switch v11, :pswitch_data_0

    :cond_14
    const/16 v29, 0x5

    goto :goto_e

    :pswitch_0
    const/16 v29, 0xc

    goto :goto_e

    :pswitch_1
    const/16 v7, 0xe

    move/from16 v29, v7

    goto :goto_e

    :pswitch_2
    const/16 v29, 0xd

    goto :goto_e

    :cond_15
    move/from16 v29, v12

    goto :goto_e

    :cond_16
    const/16 v29, 0x3

    :goto_e
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float v22, v22, v7

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float v24, v23, v7

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v23, v22

    new-instance v22, Lr1/e;

    const/16 v31, 0x1

    invoke-direct/range {v22 .. v31}, Lr1/e;-><init>(FFFFJIZI)V

    move-object/from16 v5, v22

    const/4 v7, 0x0

    :goto_f
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_40

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ge v11, v12, :cond_17

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_18

    const/4 v11, 0x1

    :goto_10
    move/from16 v27, v13

    goto/16 :goto_30

    :cond_17
    const/4 v12, 0x3

    :cond_18
    const-string v11, "group"

    sget-object v42, Lu8/r;->l:Lu8/r;

    const-string v23, ""

    iget-object v0, v10, Ls1/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v12, v10, Ls1/a;->c:Lq3/k;

    move/from16 v25, v7

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    move-object/from16 v26, v9

    const/4 v9, 0x2

    if-eq v7, v9, :cond_1d

    const/4 v9, 0x3

    if-eq v7, v9, :cond_1a

    :cond_19
    move/from16 v27, v13

    :goto_11
    const/16 v9, 0xd

    const/4 v11, 0x1

    const/4 v13, -0x1

    const/16 v18, 0x4

    const/16 v21, 0x2

    const/16 v22, 0x9

    goto/16 :goto_2e

    :cond_1a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    add-int/lit8 v7, v25, 0x1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v7, :cond_1c

    iget-object v9, v5, Lr1/e;->i:Ljava/util/ArrayList;

    iget-boolean v11, v5, Lr1/e;->k:Z

    if-eqz v11, :cond_1b

    const-string v11, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    invoke-static {v11}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v19, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr1/d;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr1/d;

    iget-object v9, v9, Lr1/d;->j:Ljava/util/ArrayList;

    new-instance v33, Lr1/g0;

    iget-object v12, v11, Lr1/d;->a:Ljava/lang/String;

    move/from16 v23, v0

    iget v0, v11, Lr1/d;->b:F

    move/from16 v35, v0

    iget v0, v11, Lr1/d;->c:F

    move/from16 v36, v0

    iget v0, v11, Lr1/d;->d:F

    move/from16 v37, v0

    iget v0, v11, Lr1/d;->e:F

    move/from16 v38, v0

    iget v0, v11, Lr1/d;->f:F

    move/from16 v39, v0

    iget v0, v11, Lr1/d;->g:F

    move/from16 v40, v0

    iget v0, v11, Lr1/d;->h:F

    move/from16 v41, v0

    iget-object v0, v11, Lr1/d;->i:Ljava/util/List;

    iget-object v11, v11, Lr1/d;->j:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v43, v11

    move-object/from16 v34, v12

    invoke-direct/range {v33 .. v43}, Lr1/g0;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v23, 0x1

    goto :goto_12

    :cond_1c
    move/from16 v27, v13

    const/4 v7, 0x0

    :goto_13
    const/16 v9, 0xd

    const/4 v11, 0x1

    const/4 v13, -0x1

    :goto_14
    const/16 v18, 0x4

    const/16 v21, 0x2

    const/16 v22, 0x9

    goto/16 :goto_2f

    :cond_1d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    move/from16 v27, v13

    const v13, -0x624e8b7e

    if-eq v9, v13, :cond_3a

    const v13, 0x346425

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v9, v13, :cond_23

    const v0, 0x5e0f67f

    if-eq v9, v0, :cond_1e

    :goto_15
    goto/16 :goto_11

    :cond_1e
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_16
    goto :goto_15

    :cond_1f
    sget-object v0, Ls1/b;->b:[I

    if-nez v8, :cond_20

    invoke-virtual {v6, v14, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_17

    :cond_20
    const/4 v12, 0x0

    invoke-virtual {v8, v14, v0, v12, v12}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_17
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v10, v4}, Ls1/a;->c(I)V

    const-string v4, "rotation"

    const/4 v7, 0x5

    const/4 v9, 0x0

    invoke-virtual {v10, v0, v4, v7, v9}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v35

    const/4 v11, 0x1

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v36

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v10, v4}, Ls1/a;->c(I)V

    const/4 v12, 0x2

    invoke-virtual {v0, v12, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v37

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v10, v4}, Ls1/a;->c(I)V

    const-string v4, "scaleX"

    const/4 v12, 0x3

    invoke-virtual {v10, v0, v4, v12, v3}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v38

    const-string v4, "scaleY"

    const/4 v7, 0x4

    invoke-virtual {v10, v0, v4, v7, v3}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v39

    const-string v3, "translateX"

    const/4 v4, 0x6

    invoke-virtual {v10, v0, v3, v4, v9}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v40

    const-string v3, "translateY"

    const/4 v4, 0x7

    invoke-virtual {v10, v0, v3, v4, v9}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v41

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v10, v4}, Ls1/a;->c(I)V

    if-nez v3, :cond_21

    move-object/from16 v34, v23

    goto :goto_18

    :cond_21
    move-object/from16 v34, v3

    :goto_18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Lr1/h0;->a:I

    iget-boolean v0, v5, Lr1/e;->k:Z

    if-eqz v0, :cond_22

    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_22
    new-instance v33, Lr1/d;

    const/16 v43, 0x200

    invoke-direct/range {v33 .. v43}, Lr1/d;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    move-object/from16 v0, v33

    iget-object v3, v5, Lr1/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v25

    goto/16 :goto_13

    :cond_23
    const-string v4, "path"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    goto/16 :goto_16

    :cond_24
    sget-object v4, Ls1/b;->c:[I

    if-nez v8, :cond_25

    invoke-virtual {v6, v14, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v7, 0x0

    goto :goto_19

    :cond_25
    const/4 v7, 0x0

    invoke-virtual {v8, v14, v4, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    :goto_19
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v9

    invoke-virtual {v10, v9}, Ls1/a;->c(I)V

    const-string v9, "pathData"

    const-string v11, "http://schemas.android.com/apk/res/android"

    invoke-interface {v0, v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    invoke-virtual {v10, v7}, Ls1/a;->c(I)V

    if-nez v0, :cond_26

    move-object/from16 v44, v23

    :goto_1a
    const/4 v9, 0x2

    goto :goto_1b

    :cond_26
    move-object/from16 v44, v0

    goto :goto_1a

    :goto_1b
    invoke-virtual {v4, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    invoke-virtual {v10, v7}, Ls1/a;->c(I)V

    if-nez v0, :cond_27

    sget v0, Lr1/h0;->a:I

    :goto_1c
    move-object/from16 v45, v42

    goto :goto_1d

    :cond_27
    invoke-static {v12, v0}, Lq3/k;->p(Lq3/k;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v42

    goto :goto_1c

    :goto_1d
    const-string v0, "fillColor"

    const/4 v11, 0x1

    invoke-virtual {v10, v4, v8, v0, v11}, Ls1/a;->a(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lf7/c0;

    move-result-object v0

    const-string v7, "fillAlpha"

    const/16 v9, 0xc

    invoke-virtual {v10, v4, v7, v9, v3}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v48

    const-string v7, "strokeLineCap"

    iget-object v11, v10, Ls1/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v11, v7}, Lk3/b;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_28

    const/4 v7, -0x1

    const/16 v11, 0x8

    goto :goto_1e

    :cond_28
    const/4 v7, -0x1

    const/16 v11, 0x8

    invoke-virtual {v4, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    move v7, v12

    :goto_1e
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v12

    invoke-virtual {v10, v12}, Ls1/a;->c(I)V

    if-eqz v7, :cond_29

    const/4 v12, 0x1

    if-eq v7, v12, :cond_2b

    const/4 v12, 0x2

    if-eq v7, v12, :cond_2a

    :cond_29
    const/16 v52, 0x0

    goto :goto_1f

    :cond_2a
    const/16 v52, 0x2

    goto :goto_1f

    :cond_2b
    const/16 v52, 0x1

    :goto_1f
    const-string v7, "strokeLineJoin"

    iget-object v12, v10, Ls1/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v12, v7}, Lk3/b;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2c

    const/4 v12, -0x1

    const/4 v13, -0x1

    goto :goto_20

    :cond_2c
    const/16 v7, 0x9

    const/4 v13, -0x1

    invoke-virtual {v4, v7, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    :goto_20
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    invoke-virtual {v10, v7}, Ls1/a;->c(I)V

    if-eqz v12, :cond_2f

    const/4 v7, 0x1

    if-eq v12, v7, :cond_2e

    const/4 v7, 0x2

    if-eq v12, v7, :cond_2d

    :goto_21
    const/16 v53, 0x0

    goto :goto_22

    :cond_2d
    move/from16 v53, v7

    goto :goto_22

    :cond_2e
    const/4 v7, 0x2

    const/16 v53, 0x1

    goto :goto_22

    :cond_2f
    const/4 v7, 0x2

    goto :goto_21

    :goto_22
    const-string v12, "strokeMiterLimit"

    const/16 v7, 0xa

    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v10, v4, v12, v7, v9}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v54

    const-string v7, "strokeColor"

    const/4 v9, 0x3

    invoke-virtual {v10, v4, v8, v7, v9}, Ls1/a;->a(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lf7/c0;

    move-result-object v7

    const-string v12, "strokeAlpha"

    const/16 v9, 0xb

    invoke-virtual {v10, v4, v12, v9, v3}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v50

    const-string v9, "strokeWidth"

    const/4 v12, 0x4

    invoke-virtual {v10, v4, v9, v12, v3}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v51

    const-string v9, "trimPathEnd"

    const/4 v11, 0x6

    invoke-virtual {v10, v4, v9, v11, v3}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v56

    const-string v3, "trimPathOffset"

    const/4 v9, 0x7

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v3, v9, v11}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v57

    const-string v3, "trimPathStart"

    const/4 v9, 0x5

    invoke-virtual {v10, v4, v3, v9, v11}, Ls1/a;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v55

    const-string v3, "fillType"

    iget-object v9, v10, Ls1/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v9, v3}, Lk3/b;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    const/16 v9, 0xd

    const/16 v18, 0x0

    goto :goto_23

    :cond_30
    const/4 v3, 0x0

    const/16 v9, 0xd

    invoke-virtual {v4, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    :goto_23
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {v10, v3}, Ls1/a;->c(I)V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, v0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Shader;

    iget v0, v0, Lf7/c0;->b:I

    if-eqz v3, :cond_31

    goto :goto_24

    :cond_31
    if-eqz v0, :cond_33

    :goto_24
    if-eqz v3, :cond_32

    new-instance v0, Lm1/n;

    invoke-direct {v0, v3}, Lm1/n;-><init>(Landroid/graphics/Shader;)V

    move-object/from16 v47, v0

    goto :goto_25

    :cond_32
    new-instance v3, Lm1/j0;

    invoke-static {v0}, Lm1/v;->c(I)J

    move-result-wide v11

    invoke-direct {v3, v11, v12}, Lm1/j0;-><init>(J)V

    move-object/from16 v47, v3

    goto :goto_25

    :cond_33
    const/16 v47, 0x0

    :goto_25
    iget-object v0, v7, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Shader;

    iget v3, v7, Lf7/c0;->b:I

    if-eqz v0, :cond_34

    goto :goto_26

    :cond_34
    if-eqz v3, :cond_36

    :goto_26
    if-eqz v0, :cond_35

    new-instance v3, Lm1/n;

    invoke-direct {v3, v0}, Lm1/n;-><init>(Landroid/graphics/Shader;)V

    move-object/from16 v49, v3

    goto :goto_27

    :cond_35
    new-instance v0, Lm1/j0;

    invoke-static {v3}, Lm1/v;->c(I)J

    move-result-wide v11

    invoke-direct {v0, v11, v12}, Lm1/j0;-><init>(J)V

    move-object/from16 v49, v0

    goto :goto_27

    :cond_36
    const/16 v49, 0x0

    :goto_27
    if-nez v18, :cond_37

    const/16 v46, 0x0

    goto :goto_28

    :cond_37
    const/16 v46, 0x1

    :goto_28
    iget-boolean v0, v5, Lr1/e;->k:Z

    if-eqz v0, :cond_38

    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_38
    iget-object v0, v5, Lr1/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr1/d;

    iget-object v0, v0, Lr1/d;->j:Ljava/util/ArrayList;

    new-instance v43, Lr1/k0;

    invoke-direct/range {v43 .. v57}, Lr1/k0;-><init>(Ljava/lang/String;Ljava/util/List;ILm1/m;FLm1/m;FFIIFFFF)V

    move-object/from16 v3, v43

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v25

    const/4 v11, 0x1

    goto/16 :goto_14

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No path data available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    const/16 v9, 0xd

    const/4 v13, -0x1

    const/16 v18, 0x4

    const/16 v21, 0x2

    const/16 v22, 0x9

    const-string v0, "clip-path"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v11, 0x1

    goto/16 :goto_2e

    :cond_3b
    sget-object v0, Ls1/b;->d:[I

    if-nez v8, :cond_3c

    invoke-virtual {v6, v14, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    goto :goto_29

    :cond_3c
    const/4 v3, 0x0

    invoke-virtual {v8, v14, v0, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v10, v4}, Ls1/a;->c(I)V

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {v10, v3}, Ls1/a;->c(I)V

    if-nez v4, :cond_3d

    move-object/from16 v44, v23

    :goto_2a
    const/4 v11, 0x1

    goto :goto_2b

    :cond_3d
    move-object/from16 v44, v4

    goto :goto_2a

    :goto_2b
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v10, v4}, Ls1/a;->c(I)V

    if-nez v3, :cond_3e

    sget v3, Lr1/h0;->a:I

    :goto_2c
    move-object/from16 v52, v42

    goto :goto_2d

    :cond_3e
    invoke-static {v12, v3}, Lq3/k;->p(Lq3/k;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v42

    goto :goto_2c

    :goto_2d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v0, v5, Lr1/e;->k:Z

    if-eqz v0, :cond_3f

    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_3f
    new-instance v43, Lr1/d;

    const/16 v53, 0x200

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/high16 v48, 0x3f800000    # 1.0f

    const/high16 v49, 0x3f800000    # 1.0f

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-direct/range {v43 .. v53}, Lr1/d;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    move-object/from16 v0, v43

    iget-object v3, v5, Lr1/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v25, 0x1

    goto :goto_2f

    :goto_2e
    move/from16 v7, v25

    :goto_2f
    invoke-interface/range {v26 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move/from16 v12, v22

    move-object/from16 v9, v26

    move/from16 v13, v27

    const/4 v0, 0x6

    goto/16 :goto_f

    :cond_40
    move v11, v12

    goto/16 :goto_10

    :goto_30
    iget v0, v10, Ls1/a;->b:I

    or-int v0, v27, v0

    new-instance v3, Lk2/a;

    invoke-virtual {v5}, Lr1/e;->a()Lr1/f;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lk2/a;-><init>(Lr1/f;I)V

    iget-object v0, v15, Lk2/c;->a:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    goto :goto_31

    :cond_41
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<VectorGraphic> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG, WEBP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    move/from16 v32, v7

    move v11, v10

    :goto_31
    iget-object v0, v0, Lk2/a;->a:Lr1/f;

    invoke-static {v0, v1}, Lr1/b;->d(Lr1/f;Lr0/q;)Lr1/j0;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lr0/q;->q(Z)V

    const/4 v2, 0x0

    :goto_32
    move-object v4, v0

    goto :goto_35

    :cond_46
    move/from16 v32, v7

    move v11, v10

    const v2, -0x69992078

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v1, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v9}, Lr0/q;->e(I)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v2

    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_47

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne v2, v0, :cond_48

    :cond_47
    const/4 v2, 0x0

    goto :goto_33

    :cond_48
    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_34

    :goto_33
    :try_start_2
    invoke-virtual {v6, v9, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-static {v0, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Lm1/e;

    invoke-direct {v3, v0}, Lm1/e;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v1, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_34
    check-cast v3, Lm1/e;

    new-instance v0, Lq1/a;

    iget-object v4, v3, Lm1/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v3, Lm1/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-long v6, v4

    shl-long v6, v6, v17

    int-to-long v4, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    or-long/2addr v4, v6

    invoke-direct {v0, v3, v4, v5}, Lq1/a;-><init>(Lm1/e;J)V

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lr0/q;->q(Z)V

    goto :goto_32

    :goto_35
    and-int/lit8 v0, v32, 0x70

    move/from16 v3, v17

    if-ne v0, v3, :cond_49

    move v10, v11

    goto :goto_36

    :cond_49
    const/4 v10, 0x0

    :goto_36
    invoke-virtual {v1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v10, :cond_4b

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v0, v3, :cond_4a

    goto :goto_37

    :cond_4a
    move-wide/from16 v9, p1

    goto :goto_39

    :cond_4b
    :goto_37
    const-wide/16 v5, 0x10

    cmp-long v0, p1, v5

    if-nez v0, :cond_4c

    move-wide/from16 v9, p1

    move-object v15, v2

    goto :goto_38

    :cond_4c
    new-instance v15, Lm1/j;

    move-wide/from16 v9, p1

    const/4 v7, 0x5

    invoke-direct {v15, v7, v9, v10}, Lm1/j;-><init>(IJ)V

    :goto_38
    invoke-virtual {v1, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v0, v15

    :goto_39
    move-object v7, v0

    check-cast v7, Lm1/j;

    sget-object v0, Lf1/o;->a:Lf1/o;

    sget v2, Lq/e;->j:F

    invoke-static {v0, v2}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v3

    sget-object v6, Lc2/h;->a:Lc2/x0;

    const/4 v5, 0x0

    const/16 v8, 0x16

    invoke-static/range {v3 .. v8}, Lj1/g;->g(Lf1/r;Lq1/b;Lf1/e;Lc2/x0;Lm1/j;I)Lf1/r;

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v0, v1, v12}, Lu/l;->a(Lf1/r;Lr0/q;I)V

    goto :goto_3b

    :catch_1
    move-exception v0

    new-instance v1, Landroidx/fragment/app/i0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error attempting to load resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_3a
    monitor-exit v12

    throw v0

    :cond_4d
    move-wide v9, v3

    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_3b
    invoke-virtual {v1}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_4e

    new-instance v0, Lg0/j;

    const/4 v5, 0x0

    move/from16 v1, p0

    move/from16 v2, p4

    move-wide v3, v9

    invoke-direct/range {v0 .. v5}, Lg0/j;-><init>(IIJI)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_4e
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Le0/g;Li0/e;Li9/a;Lr0/q;I)V
    .locals 13

    move-object/from16 v10, p3

    move/from16 v1, p4

    const v0, -0x799dedcc

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v1, 0x6

    const/4 v2, 0x4

    if-nez v0, :cond_2

    and-int/lit8 v0, v1, 0x8

    if-nez v0, :cond_0

    invoke-virtual {v10, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v10, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    and-int/lit8 v3, v1, 0x30

    const/16 v4, 0x20

    if-nez v3, :cond_5

    and-int/lit8 v3, v1, 0x40

    if-nez v3, :cond_3

    invoke-virtual {v10, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_3

    :cond_3
    invoke-virtual {v10, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_4

    :cond_4
    const/16 v3, 0x10

    :goto_4
    or-int/2addr v0, v3

    :cond_5
    and-int/lit16 v3, v1, 0x180

    if-nez v3, :cond_7

    invoke-virtual {v10, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x100

    goto :goto_5

    :cond_6
    const/16 v3, 0x80

    :goto_5
    or-int/2addr v0, v3

    :cond_7
    and-int/lit16 v3, v0, 0x93

    const/16 v6, 0x92

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v6, :cond_8

    move v3, v8

    goto :goto_6

    :cond_8
    move v3, v7

    :goto_6
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v10, v6, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_11

    and-int/lit8 v3, v0, 0x70

    if-eq v3, v4, :cond_a

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_9

    invoke-virtual {v10, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    move v3, v7

    goto :goto_8

    :cond_a
    :goto_7
    move v3, v8

    :goto_8
    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-nez v3, :cond_b

    if-ne v4, v6, :cond_c

    :cond_b
    new-instance v4, Lg0/o;

    new-instance v3, Lid/p;

    new-instance v9, Lb0/n;

    const/4 v11, 0x5

    invoke-direct {v9, v11, p1, p2}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v9}, Lid/p;-><init>(Li9/a;)V

    invoke-direct {v4, v3}, Lg0/o;-><init>(Lid/p;)V

    invoke-virtual {v10, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    check-cast v4, Lg0/o;

    and-int/lit8 v3, v0, 0xe

    if-eq v3, v2, :cond_d

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    invoke-virtual {v10, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move v7, v8

    :cond_e
    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v7, :cond_f

    if-ne v0, v6, :cond_10

    :cond_f
    new-instance v0, Lad/t;

    const/16 v2, 0xe

    invoke-direct {v0, v2, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_10
    move-object v7, v0

    check-cast v7, Li9/a;

    new-instance v0, Lg0/k;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, p0}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x4e63add6    # 9.5495514E8f

    invoke-static {v2, v0, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    const/16 v11, 0xd80

    const/4 v12, 0x0

    sget-object v8, Lg0/m;->a:Lf3/a0;

    move-object v6, v4

    invoke-static/range {v6 .. v12}, Lf3/k;->a(Lf3/z;Li9/a;Lf3/a0;Lz0/d;Lr0/q;II)V

    goto :goto_9

    :cond_11
    invoke-virtual/range {p3 .. p3}, Lr0/q;->W()V

    :goto_9
    invoke-virtual/range {p3 .. p3}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_12

    new-instance v0, Lb0/a3;

    const/4 v2, 0x3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_12
    return-void
.end method

.method public static final d(Lf1/r;Lz0/d;Lr0/q;I)V
    .locals 3

    const v0, 0x52f9d6eb

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Li0/g;->a:Lr0/a0;

    and-int/lit8 v2, v0, 0xe

    or-int/lit16 v2, v2, 0x1b0

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v2

    invoke-static {p0, v1, p1, p2, v0}, Lc6/o;->D(Lf1/r;Lr0/m1;Lz0/d;Lr0/q;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lg0/h;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p3, v1}, Lg0/h;-><init>(Lf1/r;Lz0/d;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method
