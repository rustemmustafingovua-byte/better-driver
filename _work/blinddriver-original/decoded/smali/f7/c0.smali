.class public final Lf7/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lf7/c0;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lf7/c0;->b:I

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf7/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Lf7/c0;->a:I

    iput-object p3, p0, Lf7/c0;->c:Ljava/lang/Object;

    iput p1, p0, Lf7/c0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lj8/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf7/c0;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lf7/c0;->b:I

    .line 7
    iput-object p2, p0, Lf7/c0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld7/a;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf7/c0;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg7/s;->c(Ljava/lang/Object;)V

    iput-object p1, p0, Lf7/c0;->c:Ljava/lang/Object;

    iput p2, p0, Lf7/c0;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lf7/c0;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/c0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lf7/c0;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lf7/c0;->b:I

    .line 13
    iput-object p1, p0, Lf7/c0;->c:Ljava/lang/Object;

    return-void
.end method

.method public static g(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lf7/c0;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v4, v6, :cond_24

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "gradient"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-nez v8, :cond_2

    const-string v5, "selector"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v2, v3, v1}, Lk3/c;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    new-instance v1, Lf7/c0;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-direct {v1, v0, v9, v10}, Lf7/c0;-><init>(IILjava/lang/Object;)V

    return-object v1

    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": unsupported complex color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    const/4 v4, 0x0

    sget-object v7, Lh3/a;->b:[I

    if-nez v1, :cond_3

    invoke-virtual {v0, v3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3, v7, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    :goto_1
    const-string v8, "http://schemas.android.com/apk/res/android"

    const-string v11, "startX"

    invoke-interface {v2, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    const/16 v11, 0x8

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    move v14, v11

    goto :goto_2

    :cond_4
    move v14, v12

    :goto_2
    const-string v11, "startY"

    invoke-interface {v2, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    const/16 v11, 0x9

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    move v15, v11

    goto :goto_3

    :cond_5
    move v15, v12

    :goto_3
    const-string v11, "endX"

    invoke-interface {v2, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    const/16 v11, 0xa

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    move/from16 v16, v11

    goto :goto_4

    :cond_6
    move/from16 v16, v12

    :goto_4
    const-string v11, "endY"

    invoke-interface {v2, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    const/16 v11, 0xb

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    move/from16 v17, v11

    goto :goto_5

    :cond_7
    move/from16 v17, v12

    :goto_5
    const-string v11, "centerX"

    invoke-interface {v2, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v7, v9, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_6

    :cond_8
    move v11, v12

    :goto_6
    const-string v13, "centerY"

    invoke-interface {v2, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    const/4 v13, 0x4

    invoke-virtual {v7, v13, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto :goto_7

    :cond_9
    move v13, v12

    :goto_7
    const-string v10, "type"

    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v7, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    goto :goto_8

    :cond_a
    move v10, v4

    :goto_8
    const-string v6, "startColor"

    invoke-interface {v2, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v7, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    goto :goto_9

    :cond_b
    move v6, v4

    :goto_9
    const-string v9, "centerColor"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_c

    move/from16 v19, v5

    goto :goto_a

    :cond_c
    move/from16 v19, v4

    :goto_a
    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    const/4 v9, 0x7

    invoke-virtual {v7, v9, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    goto :goto_b

    :cond_d
    move v9, v4

    :goto_b
    const-string v12, "endColor"

    invoke-interface {v2, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    :goto_c
    move/from16 v21, v5

    goto :goto_d

    :cond_e
    move v12, v4

    goto :goto_c

    :goto_d
    const-string v5, "tileMode"

    invoke-interface {v2, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    const/4 v5, 0x6

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    goto :goto_e

    :cond_f
    move v5, v4

    :goto_e
    const-string v4, "gradientRadius"

    invoke-interface {v2, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    const/4 v4, 0x5

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    move v8, v4

    goto :goto_f

    :cond_10
    const/4 v8, 0x0

    :goto_f
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v22, v2

    const/16 v2, 0x14

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v23, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_10
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move/from16 v24, v14

    move/from16 v14, v21

    if-eq v2, v14, :cond_17

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    move/from16 v25, v15

    if-ge v14, v4, :cond_11

    const/4 v15, 0x3

    if-eq v2, v15, :cond_18

    :cond_11
    const/4 v15, 0x2

    if-eq v2, v15, :cond_13

    :cond_12
    :goto_11
    move/from16 v14, v24

    move/from16 v15, v25

    const/16 v21, 0x1

    goto :goto_10

    :cond_13
    if-gt v14, v4, :cond_12

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v14, "item"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_11

    :cond_14
    sget-object v2, Lh3/a;->c:[I

    if-nez v1, :cond_15

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v14, 0x0

    goto :goto_12

    :cond_15
    const/4 v14, 0x0

    invoke-virtual {v1, v3, v2, v14, v14}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    :goto_12
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v15, :cond_16

    if-eqz v21, :cond_16

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move/from16 v25, v15

    :cond_18
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    new-instance v0, Lk0/l;

    invoke-direct {v0, v8, v7}, Lk0/l;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_13

    :cond_19
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1a

    :goto_14
    const/4 v14, 0x1

    goto :goto_15

    :cond_1a
    if-eqz v19, :cond_1b

    new-instance v0, Lk0/l;

    invoke-direct {v0, v6, v9, v12}, Lk0/l;-><init>(III)V

    goto :goto_14

    :cond_1b
    new-instance v0, Lk0/l;

    invoke-direct {v0, v6, v12}, Lk0/l;-><init>(II)V

    goto :goto_14

    :goto_15
    if-eq v10, v14, :cond_1f

    const/4 v15, 0x2

    if-eq v10, v15, :cond_1e

    new-instance v13, Landroid/graphics/LinearGradient;

    iget-object v1, v0, Lk0/l;->m:Ljava/lang/Object;

    move-object/from16 v18, v1

    check-cast v18, [I

    iget-object v0, v0, Lk0/l;->n:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [F

    if-eq v5, v14, :cond_1d

    if-eq v5, v15, :cond_1c

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_16
    move-object/from16 v20, v0

    move/from16 v14, v24

    move/from16 v15, v25

    goto :goto_17

    :cond_1c
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_16

    :cond_1d
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_16

    :goto_17
    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_1a

    :cond_1e
    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, v0, Lk0/l;->m:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v0, v0, Lk0/l;->n:Ljava/lang/Object;

    check-cast v0, [F

    invoke-direct {v1, v11, v13, v2, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    move-object v13, v1

    goto :goto_1a

    :cond_1f
    const/16 v20, 0x0

    cmpg-float v1, v23, v20

    if-lez v1, :cond_22

    const/4 v15, 0x2

    new-instance v18, Landroid/graphics/RadialGradient;

    iget-object v1, v0, Lk0/l;->m:Ljava/lang/Object;

    move-object/from16 v22, v1

    check-cast v22, [I

    iget-object v0, v0, Lk0/l;->n:Ljava/lang/Object;

    check-cast v0, [F

    const/4 v14, 0x1

    if-eq v5, v14, :cond_21

    if-eq v5, v15, :cond_20

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_18
    move-object/from16 v24, v1

    move/from16 v19, v11

    move/from16 v20, v13

    move/from16 v21, v23

    move-object/from16 v23, v0

    goto :goto_19

    :cond_20
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_18

    :cond_21
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_18

    :goto_19
    invoke-direct/range {v18 .. v24}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v13, v18

    :goto_1a
    new-instance v0, Lf7/c0;

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-direct {v0, v14, v15, v13}, Lf7/c0;-><init>(IILjava/lang/Object;)V

    return-object v0

    :cond_22
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move-object/from16 v22, v2

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid gradient color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Lf7/c0;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lf7/c0;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, p1, v1, v2, v3}, Lr9/k;->e0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    invoke-virtual {p0, p1}, Lf7/c0;->m(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(J)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lf7/c0;->f(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lf7/c0;->b:I

    iget-object v1, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v1, [J

    array-length v2, v1

    if-lt v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lf7/c0;->c:Ljava/lang/Object;

    :cond_0
    aput-wide p1, v1, v0

    iget p1, p0, Lf7/c0;->b:I

    if-lt v0, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf7/c0;->b:I

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lf7/c0;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lf7/c0;->b:I

    if-ltz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Lq8/g;

    instance-of v1, v0, Lq8/e;

    if-nez v1, :cond_0

    iget-object v0, v0, Lq8/d;->a:Lq8/g;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lq8/d;->a:Lq8/g;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    instance-of v1, v0, Lq8/i;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lq8/d;->a:Lq8/g;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Closed one bracket too much"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lf7/c0;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lf7/c0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lf7/c0;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lf7/c0;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public d(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-ltz p1, :cond_1

    iget v1, p0, Lf7/c0;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v1, :cond_0

    iget p1, p0, Lf7/c0;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lf7/c0;->b:I

    return-object p1

    :cond_0
    iget p1, p0, Lf7/c0;->b:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput v1, p0, Lf7/c0;->b:I

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public e()Lq8/d;
    .locals 3

    iget v0, p0, Lf7/c0;->b:I

    if-gtz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Lq8/g;

    iget-object v1, v0, Lq8/d;->a:Lq8/g;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lf7/c0;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lq8/g;->d()V

    invoke-virtual {v0}, Lq8/g;->c()V

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Lq8/g;

    iget-object v0, v0, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Lq8/g;

    invoke-static {v0}, Lg6/c1;->m(Lq8/g;)V

    iget-object p0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast p0, Lq8/g;

    return-object p0

    :cond_1
    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Lq8/g;

    iget-object v0, v0, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq8/d;

    iget-object p0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast p0, Lq8/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "child"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v1, v0, Lq8/d;->a:Lq8/g;

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Closed one bracket too little"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(J)Z
    .locals 5

    iget v0, p0, Lf7/c0;->b:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v3, [J

    aget-wide v3, v3, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public h(II)V
    .locals 2

    add-int/2addr p2, p1

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, [C

    array-length v1, v0

    if-gt v1, p2, :cond_1

    mul-int/lit8 p1, p1, 0x2

    if-ge p2, p1, :cond_0

    move p2, p1

    :cond_0
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lf7/c0;->c:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public j(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "str"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lf7/c0;->b:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lr9/r;->R(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lf7/c0;->d(I)Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public k()V
    .locals 4

    sget-object v0, Lja/b;->n:Lja/b;

    iget-object p0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast p0, [C

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "array"

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget v1, v0, Lja/c;->l:I

    array-length v2, p0

    add-int/2addr v2, v1

    sget v3, Lja/a;->a:I

    if-ge v2, v3, :cond_0

    array-length v2, p0

    add-int/2addr v1, v2

    iput v1, v0, Lja/c;->l:I

    iget-object v1, v0, Lja/c;->m:Ljava/lang/Object;

    check-cast v1, Lu8/k;

    invoke-virtual {v1, p0}, Lu8/k;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public l(J)V
    .locals 4

    iget v0, p0, Lf7/c0;->b:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v2, [J

    aget-wide v2, v2, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    iget p1, p0, Lf7/c0;->b:I

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ge v1, p1, :cond_0

    iget-object p2, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast p2, [J

    add-int/lit8 v0, v1, 0x1

    aget-wide v2, p2, v0

    aput-wide v2, p2, v1

    move v1, v0

    goto :goto_1

    :cond_0
    iget p1, p0, Lf7/c0;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lf7/c0;->b:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public m(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :cond_0
    iget p0, p0, Lf7/c0;->b:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public n(Ljava/lang/String;)V
    .locals 5

    const-string v0, "text"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lf7/c0;->b:I

    invoke-virtual {p0, v1, v0}, Lf7/c0;->h(II)V

    iget-object v1, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v1, [C

    iget v2, p0, Lf7/c0;->b:I

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lf7/c0;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lf7/c0;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lf7/c0;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lf7/c0;->b:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x25ba

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lf7/c0;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v1, [C

    const/4 v2, 0x0

    iget p0, p0, Lf7/c0;->b:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
