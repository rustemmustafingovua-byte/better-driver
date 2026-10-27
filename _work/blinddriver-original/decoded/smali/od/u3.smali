.class public final synthetic Lod/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:J


# direct methods
.method public synthetic constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/u3;->l:Z

    iput-wide p2, p0, Lod/u3;->m:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lo1/d;

    const-string v2, "$this$Canvas"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ll1/e;->b(J)F

    move-result v10

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v7, v10, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v10, v2

    iget-boolean v2, v0, Lod/u3;->l:Z

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3dcccccd    # 0.1f

    if-eqz v2, :cond_0

    mul-float v5, v10, v4

    :goto_0
    move v12, v5

    goto :goto_1

    :cond_0
    mul-float v5, v10, v3

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_1

    mul-float/2addr v3, v10

    goto :goto_2

    :cond_1
    mul-float v3, v10, v4

    :goto_2
    if-eqz v2, :cond_2

    const v2, 0x3eeb851f    # 0.46f

    :goto_3
    mul-float/2addr v2, v10

    move v13, v2

    goto :goto_4

    :cond_2
    const v2, 0x3f0a3d71    # 0.54f

    goto :goto_3

    :goto_4
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    const/16 v14, 0x20

    shl-long/2addr v4, v14

    const-wide v15, 0xffffffffL

    and-long/2addr v2, v15

    or-long v3, v4, v2

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v5, v2

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v8, v2

    shl-long/2addr v5, v14

    and-long/2addr v8, v15

    or-long/2addr v5, v8

    iget-wide v8, v0, Lod/u3;->m:J

    move-object v0, v1

    move-wide v1, v8

    const/4 v8, 0x1

    const/16 v9, 0x1e0

    invoke-static/range {v0 .. v9}, Lo1/d;->u0(Lo1/d;JJJFII)V

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v3, v14

    and-long/2addr v5, v15

    or-long/2addr v3, v5

    const v5, 0x3e0f5c29    # 0.14f

    mul-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long/2addr v5, v14

    and-long/2addr v8, v15

    or-long/2addr v5, v8

    const/4 v8, 0x1

    const/16 v9, 0x1e0

    invoke-static/range {v0 .. v9}, Lo1/d;->u0(Lo1/d;JJJFII)V

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v3, v14

    and-long/2addr v5, v15

    or-long/2addr v3, v5

    const v5, 0x3f5c28f6    # 0.86f

    mul-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long/2addr v5, v14

    and-long/2addr v8, v15

    or-long/2addr v5, v8

    const/4 v8, 0x1

    const/16 v9, 0x1e0

    invoke-static/range {v0 .. v9}, Lo1/d;->u0(Lo1/d;JJJFII)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
