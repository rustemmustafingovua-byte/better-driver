.class public abstract Lm1/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lm1/f0;

.field public static final b:Lm1/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm1/e0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm1/v;->b:Lm1/e0;

    return-void
.end method

.method public static final A(Landroid/graphics/Rect;)Ll1/c;
    .locals 4

    new-instance v0, Ll1/c;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Ll1/c;-><init>(FFFF)V

    return-object v0
.end method

.method public static final B(Landroid/graphics/RectF;)Ll1/c;
    .locals 4

    new-instance v0, Ll1/c;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, p0}, Ll1/c;-><init>(FFFF)V

    return-object v0
.end method

.method public static C(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Clear"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "Src"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "Dst"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "SrcOver"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "DstOver"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string p0, "SrcIn"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string p0, "DstIn"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string p0, "SrcOut"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string p0, "DstOut"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string p0, "SrcAtop"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string p0, "DstAtop"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string p0, "Xor"

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string p0, "Plus"

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string p0, "Modulate"

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string p0, "Screen"

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string p0, "Overlay"

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string p0, "Darken"

    return-object p0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string p0, "Lighten"

    return-object p0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    const-string p0, "ColorDodge"

    return-object p0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    const-string p0, "ColorBurn"

    return-object p0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    const-string p0, "HardLight"

    return-object p0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    const-string p0, "Softlight"

    return-object p0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    const-string p0, "Difference"

    return-object p0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    const-string p0, "Exclusion"

    return-object p0

    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    const-string p0, "Multiply"

    return-object p0

    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    const-string p0, "Hue"

    return-object p0

    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    const-string p0, "Saturation"

    return-object p0

    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    const-string p0, "Color"

    return-object p0

    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    const-string p0, "Luminosity"

    return-object p0

    :cond_1c
    const-string p0, "Unknown"

    return-object p0
.end method

.method public static final D(F[FI)I
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    sub-float p0, v0, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v1, 0x358cedba    # 1.05E-6f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_2

    const/high16 v0, 0x7fc00000    # Float.NaN

    :cond_2
    aput v0, p1, p2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final a(Lm1/e;)Lm1/a;
    .locals 2

    sget-object v0, Lm1/b;->a:Landroid/graphics/Canvas;

    new-instance v0, Lm1/a;

    invoke-direct {v0}, Lm1/a;-><init>()V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-static {p0}, Lm1/v;->j(Lm1/e;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lm1/a;->a:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public static final b(FFFFLn1/c;)J
    .locals 21

    move-object/from16 v0, p4

    invoke-virtual {v0}, Ln1/c;->c()Z

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    cmpg-float v0, p3, v6

    if-gez v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move/from16 v0, p3

    :goto_0
    cmpl-float v1, v0, v5

    if-lez v1, :cond_1

    move v0, v5

    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    cmpg-float v7, p0, v6

    if-gez v7, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move/from16 v7, p0

    :goto_1
    cmpl-float v8, v7, v5

    if-lez v8, :cond_3

    move v7, v5

    :cond_3
    mul-float/2addr v7, v1

    add-float/2addr v7, v4

    float-to-int v7, v7

    shl-int/lit8 v2, v7, 0x10

    or-int/2addr v0, v2

    cmpg-float v2, p1, v6

    if-gez v2, :cond_4

    move v2, v6

    goto :goto_2

    :cond_4
    move/from16 v2, p1

    :goto_2
    cmpl-float v7, v2, v5

    if-lez v7, :cond_5

    move v2, v5

    :cond_5
    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    cmpg-float v2, p2, v6

    if-gez v2, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v6, p2

    :goto_3
    cmpl-float v2, v6, v5

    if-lez v2, :cond_7

    goto :goto_4

    :cond_7
    move v5, v6

    :goto_4
    mul-float/2addr v5, v1

    add-float/2addr v5, v4

    float-to-int v1, v5

    or-int/2addr v0, v1

    int-to-long v0, v0

    shl-long/2addr v0, v3

    sget v2, Lm1/p;->h:I

    return-wide v0

    :cond_8
    iget-wide v7, v0, Ln1/c;->b:J

    sget v1, Ln1/b;->e:I

    shr-long/2addr v7, v3

    long-to-int v1, v7

    const/4 v7, 0x3

    if-ne v1, v7, :cond_9

    goto :goto_5

    :cond_9
    const-string v1, "Color only works with ColorSpaces with 3 components"

    invoke-static {v1}, Lm1/y;->a(Ljava/lang/String;)V

    :goto_5
    iget v1, v0, Ln1/c;->c:I

    const/4 v7, -0x1

    if-eq v1, v7, :cond_a

    goto :goto_6

    :cond_a
    const-string v7, "Unknown color space, please use a color space in ColorSpaces"

    invoke-static {v7}, Lm1/y;->a(Ljava/lang/String;)V

    :goto_6
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ln1/c;->b(I)F

    move-result v8

    invoke-virtual {v0, v7}, Ln1/c;->a(I)F

    move-result v9

    cmpg-float v10, p0, v8

    if-gez v10, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v8, p0

    :goto_7
    cmpl-float v10, v8, v9

    if-lez v10, :cond_c

    goto :goto_8

    :cond_c
    move v9, v8

    :goto_8
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    ushr-int/lit8 v9, v8, 0x1f

    ushr-int/lit8 v10, v8, 0x17

    const/16 v11, 0xff

    and-int/2addr v10, v11

    const v12, 0x7fffff

    and-int v13, v8, v12

    const/high16 v14, 0x800000

    const/16 v15, -0xa

    const/16 v16, 0x31

    const/16 v17, 0x200

    move/from16 v18, v2

    const/16 v2, 0x1f

    move/from16 v19, v3

    const/4 v3, 0x1

    if-ne v10, v11, :cond_e

    if-eqz v13, :cond_d

    move/from16 v8, v17

    goto :goto_9

    :cond_d
    move v8, v7

    :goto_9
    move v10, v2

    goto :goto_b

    :cond_e
    add-int/lit8 v10, v10, -0x70

    if-lt v10, v2, :cond_f

    move v8, v7

    move/from16 v10, v16

    goto :goto_b

    :cond_f
    if-gtz v10, :cond_12

    if-lt v10, v15, :cond_11

    or-int v8, v13, v14

    rsub-int/lit8 v10, v10, 0x1

    shr-int/2addr v8, v10

    and-int/lit16 v10, v8, 0x1000

    if-eqz v10, :cond_10

    add-int/lit16 v8, v8, 0x2000

    :cond_10
    shr-int/lit8 v8, v8, 0xd

    move v10, v7

    goto :goto_b

    :cond_11
    move v8, v7

    move v10, v8

    goto :goto_b

    :cond_12
    shr-int/lit8 v13, v13, 0xd

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_13

    shl-int/lit8 v8, v10, 0xa

    or-int/2addr v8, v13

    add-int/2addr v8, v3

    shl-int/lit8 v9, v9, 0xf

    or-int/2addr v8, v9

    :goto_a
    int-to-short v8, v8

    goto :goto_c

    :cond_13
    move v8, v13

    :goto_b
    shl-int/lit8 v9, v9, 0xf

    shl-int/lit8 v10, v10, 0xa

    or-int/2addr v9, v10

    or-int/2addr v8, v9

    goto :goto_a

    :goto_c
    invoke-virtual {v0, v3}, Ln1/c;->b(I)F

    move-result v9

    invoke-virtual {v0, v3}, Ln1/c;->a(I)F

    move-result v10

    cmpg-float v13, p1, v9

    if-gez v13, :cond_14

    goto :goto_d

    :cond_14
    move/from16 v9, p1

    :goto_d
    cmpl-float v13, v9, v10

    if-lez v13, :cond_15

    goto :goto_e

    :cond_15
    move v10, v9

    :goto_e
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    ushr-int/lit8 v10, v9, 0x1f

    ushr-int/lit8 v13, v9, 0x17

    and-int/2addr v13, v11

    and-int v20, v9, v12

    if-ne v13, v11, :cond_17

    if-eqz v20, :cond_16

    move/from16 v9, v17

    goto :goto_f

    :cond_16
    move v9, v7

    :goto_f
    move v13, v2

    goto :goto_11

    :cond_17
    add-int/lit8 v13, v13, -0x70

    if-lt v13, v2, :cond_18

    move v9, v7

    move/from16 v13, v16

    goto :goto_11

    :cond_18
    if-gtz v13, :cond_1b

    if-lt v13, v15, :cond_1a

    or-int v9, v20, v14

    rsub-int/lit8 v13, v13, 0x1

    shr-int/2addr v9, v13

    and-int/lit16 v13, v9, 0x1000

    if-eqz v13, :cond_19

    add-int/lit16 v9, v9, 0x2000

    :cond_19
    shr-int/lit8 v9, v9, 0xd

    move v13, v7

    goto :goto_11

    :cond_1a
    move v9, v7

    move v13, v9

    goto :goto_11

    :cond_1b
    shr-int/lit8 v20, v20, 0xd

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_1c

    shl-int/lit8 v9, v13, 0xa

    or-int v9, v9, v20

    add-int/2addr v9, v3

    shl-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    :goto_10
    int-to-short v9, v9

    goto :goto_12

    :cond_1c
    move/from16 v9, v20

    :goto_11
    shl-int/lit8 v10, v10, 0xf

    shl-int/lit8 v13, v13, 0xa

    or-int/2addr v10, v13

    or-int/2addr v9, v10

    goto :goto_10

    :goto_12
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ln1/c;->b(I)F

    move-result v13

    invoke-virtual {v0, v10}, Ln1/c;->a(I)F

    move-result v0

    cmpg-float v10, p2, v13

    if-gez v10, :cond_1d

    goto :goto_13

    :cond_1d
    move/from16 v13, p2

    :goto_13
    cmpl-float v10, v13, v0

    if-lez v10, :cond_1e

    goto :goto_14

    :cond_1e
    move v0, v13

    :goto_14
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    ushr-int/lit8 v10, v0, 0x1f

    ushr-int/lit8 v13, v0, 0x17

    and-int/2addr v13, v11

    and-int/2addr v12, v0

    if-ne v13, v11, :cond_20

    if-eqz v12, :cond_1f

    move/from16 v7, v17

    :cond_1f
    move v0, v7

    move v7, v2

    goto :goto_16

    :cond_20
    add-int/lit8 v13, v13, -0x70

    if-lt v13, v2, :cond_21

    move v0, v7

    move/from16 v7, v16

    goto :goto_16

    :cond_21
    if-gtz v13, :cond_24

    if-lt v13, v15, :cond_23

    or-int v0, v12, v14

    rsub-int/lit8 v2, v13, 0x1

    shr-int/2addr v0, v2

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_22

    add-int/lit16 v0, v0, 0x2000

    :cond_22
    shr-int/lit8 v0, v0, 0xd

    goto :goto_16

    :cond_23
    move v0, v7

    goto :goto_16

    :cond_24
    shr-int/lit8 v7, v12, 0xd

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_25

    shl-int/lit8 v0, v13, 0xa

    or-int/2addr v0, v7

    add-int/2addr v0, v3

    shl-int/lit8 v2, v10, 0xf

    or-int/2addr v0, v2

    :goto_15
    int-to-short v0, v0

    goto :goto_17

    :cond_25
    move v0, v7

    move v7, v13

    :goto_16
    shl-int/lit8 v2, v10, 0xf

    shl-int/lit8 v3, v7, 0xa

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    goto :goto_15

    :goto_17
    cmpg-float v2, p3, v6

    if-gez v2, :cond_26

    goto :goto_18

    :cond_26
    move/from16 v6, p3

    :goto_18
    cmpl-float v2, v6, v5

    if-lez v2, :cond_27

    goto :goto_19

    :cond_27
    move v5, v6

    :goto_19
    const v2, 0x447fc000    # 1023.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    int-to-long v3, v8

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    const/16 v7, 0x30

    shl-long/2addr v3, v7

    int-to-long v7, v9

    and-long/2addr v7, v5

    shl-long v7, v7, v19

    or-long/2addr v3, v7

    int-to-long v7, v0

    and-long/2addr v5, v7

    shl-long v5, v5, v18

    or-long/2addr v3, v5

    int-to-long v5, v2

    const-wide/16 v7, 0x3ff

    and-long/2addr v5, v7

    const/4 v0, 0x6

    shl-long/2addr v5, v0

    or-long v2, v3, v5

    int-to-long v0, v1

    const-wide/16 v4, 0x3f

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    sget v2, Lm1/p;->h:I

    return-wide v0
.end method

.method public static final c(I)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    sget p0, Lm1/p;->h:I

    return-wide v0
.end method

.method public static final d(J)J
    .locals 1

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    sget v0, Lm1/p;->h:I

    return-wide p0
.end method

.method public static e(III)J
    .locals 1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    or-int/2addr p0, p1

    invoke-static {p0}, Lm1/v;->c(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static f(III)Lm1/e;
    .locals 25

    sget-object v0, Ln1/d;->e:Ln1/q;

    invoke-static/range {p2 .. p2}, Lm1/v;->z(I)Landroid/graphics/Bitmap$Config;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {p2 .. p2}, Lm1/v;->z(I)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v0, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto/16 :goto_3

    :cond_0
    sget-object v2, Ln1/d;->q:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v2, Ln1/d;->r:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v2, Ln1/d;->o:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v2, Ln1/d;->j:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v2, Ln1/d;->i:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v2, Ln1/d;->t:Ln1/k;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v2, Ln1/d;->s:Ln1/k;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_7
    sget-object v2, Ln1/d;->k:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_8
    sget-object v2, Ln1/d;->l:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    sget-object v2, Ln1/d;->g:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    sget-object v2, Ln1/d;->h:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    sget-object v2, Ln1/d;->f:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    sget-object v2, Ln1/d;->m:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v0, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    sget-object v2, Ln1/d;->p:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v0, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    sget-object v2, Ln1/d;->n:Ln1/q;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x22

    const/4 v3, 0x0

    if-lt v1, v2, :cond_12

    sget-object v1, Ln1/d;->v:Ln1/q;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lk0/i;->b()Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    goto :goto_1

    :cond_10
    sget-object v1, Ln1/d;->w:Ln1/q;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lk0/i;->v()Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    goto :goto_1

    :cond_11
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_12

    :goto_2
    move-object v7, v1

    goto :goto_3

    :cond_12
    if-eqz v0, :cond_15

    iget-object v7, v0, Ln1/c;->a:Ljava/lang/String;

    iget-object v1, v0, Ln1/q;->d:Ln1/s;

    invoke-virtual {v1}, Ln1/s;->a()[F

    move-result-object v9

    iget-object v1, v0, Ln1/q;->g:Ln1/r;

    if-eqz v1, :cond_13

    new-instance v10, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v11, v1, Ln1/r;->b:D

    iget-wide v13, v1, Ln1/r;->c:D

    iget-wide v2, v1, Ln1/r;->d:D

    move-wide v15, v2

    iget-wide v2, v1, Ln1/r;->e:D

    move-wide/from16 v17, v2

    iget-wide v2, v1, Ln1/r;->f:D

    move-wide/from16 v19, v2

    iget-wide v2, v1, Ln1/r;->g:D

    move-wide/from16 v21, v2

    iget-wide v1, v1, Ln1/r;->a:D

    move-wide/from16 v23, v1

    invoke-direct/range {v10 .. v24}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    move-object v3, v10

    :cond_13
    if-eqz v3, :cond_14

    new-instance v1, Landroid/graphics/ColorSpace$Rgb;

    iget-object v0, v0, Ln1/q;->h:[F

    invoke-direct {v1, v7, v0, v9, v3}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    goto :goto_2

    :cond_14
    new-instance v6, Landroid/graphics/ColorSpace$Rgb;

    iget-object v8, v0, Ln1/q;->h:[F

    iget-object v1, v0, Ln1/q;->l:Ln1/p;

    new-instance v10, Lm1/r;

    const/4 v2, 0x0

    invoke-direct {v10, v1, v2}, Lm1/r;-><init>(Li9/c;I)V

    iget-object v1, v0, Ln1/q;->o:Ln1/p;

    new-instance v11, Lm1/r;

    const/4 v2, 0x1

    invoke-direct {v11, v1, v2}, Lm1/r;-><init>(Li9/c;I)V

    iget v12, v0, Ln1/q;->e:F

    iget v13, v0, Ln1/q;->f:F

    invoke-direct/range {v6 .. v13}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)V

    move-object v7, v6

    goto :goto_3

    :cond_15
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto/16 :goto_0

    :goto_3
    const/4 v2, 0x0

    const/4 v6, 0x1

    move/from16 v3, p0

    move/from16 v4, p1

    invoke-static/range {v2 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lm1/e;

    invoke-direct {v1, v0}, Lm1/e;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static final g()Lf6/v;
    .locals 3

    new-instance v0, Lf6/v;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct {v0, v1}, Lf6/v;-><init>(Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static final h(FF)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    sget v0, Lm1/k0;->c:I

    return-wide p0
.end method

.method public static final i(FFFFLn1/c;)J
    .locals 17

    move/from16 v0, p3

    invoke-virtual/range {p4 .. p4}, Ln1/c;->c()Z

    move-result v1

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v1, :cond_0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v5, p0, v1

    add-float/2addr v5, v4

    float-to-int v5, v5

    shl-int/lit8 v3, v5, 0x10

    or-int/2addr v0, v3

    mul-float v3, p1, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    mul-float v1, v1, p2

    add-float/2addr v1, v4

    float-to-int v1, v1

    or-int/2addr v0, v1

    int-to-long v0, v0

    shl-long/2addr v0, v2

    sget v2, Lm1/p;->h:I

    return-wide v0

    :cond_0
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    ushr-int/lit8 v5, v1, 0x1f

    ushr-int/lit8 v6, v1, 0x17

    const/16 v7, 0xff

    and-int/2addr v6, v7

    const v8, 0x7fffff

    and-int v9, v1, v8

    const/high16 v10, 0x800000

    const/16 v11, -0xa

    const/16 v12, 0x31

    const/16 v13, 0x200

    const/4 v14, 0x0

    const/16 v15, 0x1f

    if-ne v6, v7, :cond_2

    if-eqz v9, :cond_1

    move v1, v13

    goto :goto_0

    :cond_1
    move v1, v14

    :goto_0
    move v6, v15

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, -0x70

    if-lt v6, v15, :cond_3

    move v6, v12

    move v1, v14

    goto :goto_2

    :cond_3
    if-gtz v6, :cond_6

    if-lt v6, v11, :cond_5

    or-int v1, v9, v10

    rsub-int/lit8 v6, v6, 0x1

    shr-int/2addr v1, v6

    and-int/lit16 v6, v1, 0x1000

    if-eqz v6, :cond_4

    add-int/lit16 v1, v1, 0x2000

    :cond_4
    shr-int/lit8 v1, v1, 0xd

    move v6, v14

    goto :goto_2

    :cond_5
    move v1, v14

    move v6, v1

    goto :goto_2

    :cond_6
    shr-int/lit8 v9, v9, 0xd

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    shl-int/lit8 v1, v6, 0xa

    or-int/2addr v1, v9

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v5, v5, 0xf

    or-int/2addr v1, v5

    :goto_1
    int-to-short v1, v1

    goto :goto_3

    :cond_7
    move v1, v9

    :goto_2
    shl-int/lit8 v5, v5, 0xf

    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    or-int/2addr v1, v5

    goto :goto_1

    :goto_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    ushr-int/lit8 v6, v5, 0x1f

    ushr-int/lit8 v9, v5, 0x17

    and-int/2addr v9, v7

    and-int v16, v5, v8

    if-ne v9, v7, :cond_9

    if-eqz v16, :cond_8

    move v5, v13

    goto :goto_4

    :cond_8
    move v5, v14

    :goto_4
    move v9, v15

    goto :goto_6

    :cond_9
    add-int/lit8 v9, v9, -0x70

    if-lt v9, v15, :cond_a

    move v9, v12

    move v5, v14

    goto :goto_6

    :cond_a
    if-gtz v9, :cond_d

    if-lt v9, v11, :cond_c

    or-int v5, v16, v10

    rsub-int/lit8 v9, v9, 0x1

    shr-int/2addr v5, v9

    and-int/lit16 v9, v5, 0x1000

    if-eqz v9, :cond_b

    add-int/lit16 v5, v5, 0x2000

    :cond_b
    shr-int/lit8 v5, v5, 0xd

    move v9, v14

    goto :goto_6

    :cond_c
    move v5, v14

    move v9, v5

    goto :goto_6

    :cond_d
    shr-int/lit8 v16, v16, 0xd

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_e

    shl-int/lit8 v5, v9, 0xa

    or-int v5, v5, v16

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    :goto_5
    int-to-short v5, v5

    goto :goto_7

    :cond_e
    move/from16 v5, v16

    :goto_6
    shl-int/lit8 v6, v6, 0xf

    shl-int/lit8 v9, v9, 0xa

    or-int/2addr v6, v9

    or-int/2addr v5, v6

    goto :goto_5

    :goto_7
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    ushr-int/lit8 v9, v6, 0x1f

    move/from16 v16, v2

    ushr-int/lit8 v2, v6, 0x17

    and-int/2addr v2, v7

    and-int/2addr v8, v6

    if-ne v2, v7, :cond_10

    if-eqz v8, :cond_f

    goto :goto_8

    :cond_f
    move v13, v14

    :goto_8
    move v14, v13

    move v12, v15

    goto :goto_a

    :cond_10
    add-int/lit8 v2, v2, -0x70

    if-lt v2, v15, :cond_11

    goto :goto_a

    :cond_11
    if-gtz v2, :cond_14

    if-lt v2, v11, :cond_13

    or-int v6, v8, v10

    rsub-int/lit8 v2, v2, 0x1

    shr-int v2, v6, v2

    and-int/lit16 v6, v2, 0x1000

    if-eqz v6, :cond_12

    add-int/lit16 v2, v2, 0x2000

    :cond_12
    shr-int/lit8 v2, v2, 0xd

    move v12, v14

    move v14, v2

    goto :goto_a

    :cond_13
    move v12, v14

    goto :goto_a

    :cond_14
    shr-int/lit8 v14, v8, 0xd

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_15

    shl-int/lit8 v2, v2, 0xa

    or-int/2addr v2, v14

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v6, v9, 0xf

    or-int/2addr v2, v6

    :goto_9
    int-to-short v2, v2

    goto :goto_b

    :cond_15
    move v12, v2

    :goto_a
    shl-int/lit8 v2, v9, 0xf

    shl-int/lit8 v6, v12, 0xa

    or-int/2addr v2, v6

    or-int/2addr v2, v14

    goto :goto_9

    :goto_b
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v6, 0x447fc000    # 1023.0f

    mul-float/2addr v0, v6

    add-float/2addr v0, v4

    float-to-int v0, v0

    move-object/from16 v4, p4

    iget v4, v4, Ln1/c;->c:I

    int-to-long v6, v1

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    const/16 v1, 0x30

    shl-long/2addr v6, v1

    int-to-long v10, v5

    and-long/2addr v10, v8

    shl-long v10, v10, v16

    or-long v5, v6, v10

    int-to-long v1, v2

    and-long/2addr v1, v8

    shl-long/2addr v1, v3

    or-long/2addr v1, v5

    int-to-long v5, v0

    const-wide/16 v7, 0x3ff

    and-long/2addr v5, v7

    const/4 v0, 0x6

    shl-long/2addr v5, v0

    or-long v0, v1, v5

    int-to-long v2, v4

    const-wide/16 v4, 0x3f

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    sget v2, Lm1/p;->h:I

    return-wide v0
.end method

.method public static final j(Lm1/e;)Landroid/graphics/Bitmap;
    .locals 1

    instance-of v0, p0, Lm1/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm1/e;->a:Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unable to obtain android.graphics.Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final k(JJ)J
    .locals 9

    invoke-static {p2, p3}, Lm1/p;->f(J)Ln1/c;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lm1/p;->a(JLn1/c;)J

    move-result-wide p0

    invoke-static {p2, p3}, Lm1/p;->d(J)F

    move-result v0

    invoke-static {p0, p1}, Lm1/p;->d(J)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v3, v0, v2

    add-float/2addr v3, v1

    invoke-static {p0, p1}, Lm1/p;->h(J)F

    move-result v4

    invoke-static {p2, p3}, Lm1/p;->h(J)F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v7, v3, v6

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    mul-float/2addr v4, v1

    mul-float/2addr v5, v0

    mul-float/2addr v5, v2

    add-float/2addr v5, v4

    div-float/2addr v5, v3

    :goto_0
    invoke-static {p0, p1}, Lm1/p;->g(J)F

    move-result v4

    invoke-static {p2, p3}, Lm1/p;->g(J)F

    move-result v8

    if-nez v7, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    mul-float/2addr v4, v1

    mul-float/2addr v8, v0

    mul-float/2addr v8, v2

    add-float/2addr v8, v4

    div-float/2addr v8, v3

    :goto_1
    invoke-static {p0, p1}, Lm1/p;->e(J)F

    move-result p0

    invoke-static {p2, p3}, Lm1/p;->e(J)F

    move-result p1

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    mul-float/2addr p0, v1

    mul-float/2addr p1, v0

    mul-float/2addr p1, v2

    add-float/2addr p1, p0

    div-float v6, p1, v3

    :goto_2
    invoke-static {p2, p3}, Lm1/p;->f(J)Ln1/c;

    move-result-object p0

    invoke-static {v5, v8, v6, v3, p0}, Lm1/v;->i(FFFFLn1/c;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static l(Lo1/d;Lm1/v;J)V
    .locals 20

    move-object/from16 v0, p1

    instance-of v1, v0, Lm1/b0;

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    const/4 v7, 0x3

    if-eqz v1, :cond_0

    check-cast v0, Lm1/b0;

    iget-object v0, v0, Lm1/b0;->c:Ll1/c;

    iget v1, v0, Ll1/c;->a:F

    iget v5, v0, Ll1/c;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v8, v1

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v5, v1

    shl-long/2addr v8, v4

    and-long v1, v5, v2

    or-long v3, v8, v1

    iget v1, v0, Ll1/c;->c:F

    iget v2, v0, Ll1/c;->a:F

    sub-float/2addr v1, v2

    iget v2, v0, Ll1/c;->d:F

    iget v0, v0, Ll1/c;->b:F

    sub-float/2addr v2, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v5, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v8, 0xffffffffL

    and-long/2addr v5, v8

    or-long/2addr v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-interface/range {v0 .. v7}, Lo1/d;->e0(JJJI)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    move-wide/from16 v5, p2

    instance-of v8, v0, Lm1/c0;

    sget-object v9, Lo1/g;->a:Lo1/g;

    if-eqz v8, :cond_2

    check-cast v0, Lm1/c0;

    iget-object v8, v0, Lm1/c0;->d:Lm1/g;

    if-eqz v8, :cond_1

    invoke-interface {v1, v8, v5, v6, v9}, Lo1/d;->a0(Lm1/g;JLo1/e;)V

    return-void

    :cond_1
    iget-object v0, v0, Lm1/c0;->c:Ll1/d;

    iget-wide v10, v0, Ll1/d;->h:J

    shr-long/2addr v10, v4

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    iget v10, v0, Ll1/d;->a:F

    iget v11, v0, Ll1/d;->b:F

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v12, v10

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    shl-long/2addr v12, v4

    and-long/2addr v10, v2

    or-long/2addr v10, v12

    invoke-virtual {v0}, Ll1/d;->b()F

    move-result v12

    invoke-virtual {v0}, Ll1/d;->a()F

    move-result v0

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v14, v0

    shl-long/2addr v12, v4

    and-long/2addr v14, v2

    or-long/2addr v12, v14

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v14, v0

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    move-wide/from16 v16, v2

    int-to-long v2, v0

    shl-long/2addr v14, v4

    and-long v2, v2, v16

    or-long/2addr v2, v14

    move-wide/from16 v18, v10

    move v10, v7

    move-wide v7, v2

    move-wide/from16 v3, v18

    move-object v0, v1

    move-wide v1, v5

    move-wide v5, v12

    invoke-interface/range {v0 .. v10}, Lo1/d;->g(JJJJLo1/e;I)V

    return-void

    :cond_2
    instance-of v2, v0, Lm1/a0;

    if-eqz v2, :cond_3

    check-cast v0, Lm1/a0;

    iget-object v0, v0, Lm1/a0;->c:Lm1/g;

    invoke-interface {v1, v0, v5, v6, v9}, Lo1/d;->a0(Lm1/g;JLo1/e;)V

    return-void

    :cond_3
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static n()J
    .locals 2

    sget-wide v0, Lm1/p;->c:J

    return-wide v0
.end method

.method public static final o(Lf1/r;Li9/c;)Lf1/r;
    .locals 1

    new-instance v0, Lm1/k;

    invoke-direct {v0, p1}, Lm1/k;-><init>(Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Lf1/r;FFFFFJLm1/h0;ZJJI)Lf1/r;
    .locals 15

    new-instance v0, Lm1/u;

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lm1/u;-><init>(FFFFFJLm1/h0;ZJJI)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lf1/r;FFLm1/h0;I)Lf1/r;
    .locals 19

    move/from16 v0, p4

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move/from16 v7, p1

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move/from16 v9, p2

    :goto_3
    sget-wide v10, Lm1/k0;->b:J

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_4

    sget-object v1, Lm1/v;->b:Lm1/e0;

    move-object v12, v1

    goto :goto_4

    :cond_4
    move-object/from16 v12, p3

    :goto_4
    and-int/lit16 v1, v0, 0x1000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    move v13, v3

    goto :goto_5

    :cond_5
    move v13, v2

    :goto_5
    sget-wide v14, Lm1/w;->a:J

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    move/from16 v18, v3

    goto :goto_6

    :cond_6
    move/from16 v18, v2

    :goto_6
    const/4 v8, 0x0

    move-wide/from16 v16, v14

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v18}, Lm1/v;->p(Lf1/r;FFFFFJLm1/h0;ZJJI)Lf1/r;

    move-result-object v0

    return-object v0
.end method

.method public static final r([F)Z
    .locals 5

    array-length v0, p0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    aget v0, p0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    aget v3, p0, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x2

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x3

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x4

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x5

    aget v3, p0, v3

    cmpg-float v3, v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x6

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x7

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0x8

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0x9

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0xa

    aget v3, p0, v3

    cmpg-float v3, v3, v1

    if-nez v3, :cond_1

    const/16 v3, 0xb

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0xc

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0xd

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0xe

    aget v3, p0, v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0xf

    aget p0, p0, v3

    cmpg-float p0, p0, v1

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public static final s(JJF)J
    .locals 9

    sget-object v0, Ln1/d;->x:Ln1/l;

    invoke-static {p0, p1, v0}, Lm1/p;->a(JLn1/c;)J

    move-result-wide p0

    invoke-static {p2, p3, v0}, Lm1/p;->a(JLn1/c;)J

    move-result-wide v1

    invoke-static {p0, p1}, Lm1/p;->d(J)F

    move-result v3

    invoke-static {p0, p1}, Lm1/p;->h(J)F

    move-result v4

    invoke-static {p0, p1}, Lm1/p;->g(J)F

    move-result v5

    invoke-static {p0, p1}, Lm1/p;->e(J)F

    move-result p0

    invoke-static {v1, v2}, Lm1/p;->d(J)F

    move-result p1

    invoke-static {v1, v2}, Lm1/p;->h(J)F

    move-result v6

    invoke-static {v1, v2}, Lm1/p;->g(J)F

    move-result v7

    invoke-static {v1, v2}, Lm1/p;->e(J)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v8, p4, v2

    if-gez v8, :cond_0

    move p4, v2

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v8, p4, v2

    if-lez v8, :cond_1

    move p4, v2

    :cond_1
    invoke-static {v4, v6, p4}, Lg5/f;->C(FFF)F

    move-result v2

    invoke-static {v5, v7, p4}, Lg5/f;->C(FFF)F

    move-result v4

    invoke-static {p0, v1, p4}, Lg5/f;->C(FFF)F

    move-result p0

    invoke-static {v3, p1, p4}, Lg5/f;->C(FFF)F

    move-result p1

    invoke-static {v2, v4, p0, p1, v0}, Lm1/v;->i(FFFFLn1/c;)J

    move-result-wide p0

    invoke-static {p2, p3}, Lm1/p;->f(J)Ln1/c;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lm1/p;->a(JLn1/c;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final t(J)F
    .locals 7

    invoke-static {p0, p1}, Lm1/p;->f(J)Ln1/c;

    move-result-object v0

    iget-wide v1, v0, Ln1/c;->b:J

    sget-wide v3, Ln1/b;->a:J

    invoke-static {v1, v2, v3, v4}, Ln1/b;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The specified color must be encoded in an RGB color space. The supplied color space is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Ln1/c;->b:J

    invoke-static {v2, v3}, Ln1/b;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lm1/y;->a(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Ln1/q;

    iget-object v0, v0, Ln1/q;->p:Ln1/m;

    invoke-static {p0, p1}, Lm1/p;->h(J)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ln1/m;->g(D)D

    move-result-wide v1

    invoke-static {p0, p1}, Lm1/p;->g(J)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Ln1/m;->g(D)D

    move-result-wide v3

    invoke-static {p0, p1}, Lm1/p;->e(J)F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ln1/m;->g(D)D

    move-result-wide p0

    const-wide v5, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v1, v5

    const-wide v5, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v3, v5

    add-double/2addr v3, v1

    const-wide v0, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr p0, v0

    add-double/2addr p0, v3

    double-to-float p0, p0

    const/4 p1, 0x0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p0, p1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, p0, p1

    if-lez v0, :cond_2

    return p1

    :cond_2
    return p0
.end method

.method public static final u(Landroid/graphics/Matrix;[F)V
    .locals 21

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget v7, p1, v6

    const/4 v8, 0x4

    aget v9, p1, v8

    const/4 v10, 0x5

    aget v11, p1, v10

    const/4 v12, 0x6

    aget v13, p1, v12

    const/4 v14, 0x7

    aget v15, p1, v14

    const/16 v16, 0x8

    aget v17, p1, v16

    const/16 v18, 0xc

    aget v18, p1, v18

    const/16 v19, 0xd

    aget v19, p1, v19

    const/16 v20, 0xf

    aget v20, p1, v20

    aput v1, p1, v0

    aput v9, p1, v2

    aput v18, p1, v4

    aput v3, p1, v6

    aput v11, p1, v8

    aput v19, p1, v10

    aput v7, p1, v12

    aput v15, p1, v14

    aput v20, p1, v16

    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Matrix;->setValues([F)V

    aput v1, p1, v0

    aput v3, p1, v2

    aput v5, p1, v4

    aput v7, p1, v6

    aput v9, p1, v8

    aput v11, p1, v10

    aput v13, p1, v12

    aput v15, p1, v14

    aput v17, p1, v16

    return-void
.end method

.method public static final v(I)Landroid/graphics/BlendMode;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object p0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object p0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    sget-object p0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    sget-object p0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    sget-object p0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    sget-object p0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    sget-object p0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    sget-object p0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    sget-object p0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    sget-object p0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    sget-object p0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    sget-object p0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    sget-object p0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    sget-object p0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    sget-object p0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    sget-object p0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    sget-object p0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    return-object p0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    sget-object p0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    return-object p0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    sget-object p0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    return-object p0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    sget-object p0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    return-object p0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    sget-object p0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    return-object p0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    sget-object p0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    return-object p0

    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    sget-object p0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    return-object p0

    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    sget-object p0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    return-object p0

    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    sget-object p0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    return-object p0

    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    sget-object p0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    return-object p0

    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    sget-object p0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    return-object p0

    :cond_1c
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object p0
.end method

.method public static final w(Lb3/k;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lb3/k;->a:I

    iget v2, p0, Lb3/k;->b:I

    iget v3, p0, Lb3/k;->c:I

    iget p0, p0, Lb3/k;->d:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static final x(Ll1/c;)Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Ll1/c;->a:F

    iget v2, p0, Ll1/c;->b:F

    iget v3, p0, Ll1/c;->c:F

    iget p0, p0, Ll1/c;->d:F

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static final y(J)I
    .locals 1

    sget-object v0, Ln1/d;->a:[F

    sget-object v0, Ln1/d;->e:Ln1/q;

    invoke-static {p0, p1, v0}, Lm1/p;->a(JLn1/c;)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final z(I)Landroid/graphics/Bitmap$Config;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object p0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    sget-object p0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_4
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method


# virtual methods
.method public abstract m()Ll1/c;
.end method
