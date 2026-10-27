.class public final synthetic Lnd/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Ll1/c;

.field public final synthetic m:F

.field public final synthetic n:F

.field public final synthetic o:F


# direct methods
.method public synthetic constructor <init>(Ll1/c;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/q;->l:Ll1/c;

    iput p2, p0, Lnd/q;->m:F

    iput p3, p0, Lnd/q;->n:F

    iput p4, p0, Lnd/q;->o:F

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

    const-wide v2, 0xcc000000L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    const/16 v8, 0x7e

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v8}, Lo1/d;->h(Lo1/d;JJJI)V

    iget-object v2, v0, Lnd/q;->l:Ll1/c;

    if-eqz v2, :cond_0

    iget v3, v2, Ll1/c;->b:F

    iget v4, v2, Ll1/c;->a:F

    iget v5, v0, Lnd/q;->m:F

    sub-float v6, v4, v5

    sub-float v7, v3, v5

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v8, v6

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    const/16 v12, 0x20

    shl-long/2addr v8, v12

    const-wide v13, 0xffffffffL

    and-long/2addr v6, v13

    or-long/2addr v6, v8

    iget v8, v2, Ll1/c;->c:F

    sub-float/2addr v8, v4

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float/2addr v8, v4

    iget v2, v2, Ll1/c;->d:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v4

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v8, v2

    shl-long v2, v3, v12

    and-long v4, v8, v13

    or-long/2addr v2, v4

    move-wide v4, v6

    move-wide v6, v2

    sget-wide v2, Lm1/p;->b:J

    iget v15, v0, Lnd/q;->n:F

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    shl-long/2addr v8, v12

    and-long/2addr v10, v13

    or-long/2addr v8, v10

    const/4 v10, 0x0

    const/16 v11, 0x70

    invoke-static/range {v1 .. v11}, Lo1/d;->g0(Lo1/d;JJJJLo1/e;I)V

    sget-wide v2, Lm1/p;->c:J

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    shl-long/2addr v8, v12

    and-long/2addr v10, v13

    or-long/2addr v8, v10

    new-instance v10, Lo1/h;

    const/4 v12, 0x0

    const/16 v13, 0x1e

    const/4 v11, 0x0

    iget v14, v0, Lnd/q;->o:F

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lo1/h;-><init>(IIIFF)V

    const/16 v0, 0xe0

    move-object/from16 v16, v10

    move v10, v0

    move-object v0, v1

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-object/from16 v9, v16

    invoke-static/range {v0 .. v10}, Lo1/d;->g0(Lo1/d;JJJJLo1/e;I)V

    :cond_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
