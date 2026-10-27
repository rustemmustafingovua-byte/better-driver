.class public abstract Lo0/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:I

.field public static final c:I

.field public static final d:F

.field public static final e:F

.field public static final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lq0/d;->c:F

    sput v0, Lo0/m2;->a:F

    const/4 v0, 0x1

    sput v0, Lo0/m2;->b:I

    sput v0, Lo0/m2;->c:I

    sget v0, Lq0/n;->b:F

    sput v0, Lo0/m2;->d:F

    sget v0, Lq0/n;->c:F

    sput v0, Lo0/m2;->e:F

    sget v0, Lq0/d;->b:F

    sput v0, Lo0/m2;->f:F

    return-void
.end method

.method public static final a(Lo1/d;IJFF)V
    .locals 13

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-ne p1, v0, :cond_0

    div-float v8, p4, v1

    invoke-interface {p0}, Lo1/d;->d()J

    move-result-wide v5

    shr-long/2addr v5, v4

    long-to-int p1, v5

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    sub-float/2addr p1, v8

    sub-float p1, p1, p5

    invoke-interface {p0}, Lo1/d;->d()J

    move-result-wide v5

    and-long/2addr v5, v2

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    div-float/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v5, p1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    shl-long v4, v5, v4

    and-long/2addr v0, v2

    or-long v9, v4, v0

    const/4 v11, 0x0

    const/16 v12, 0x78

    move-object v5, p0

    move-wide v6, p2

    invoke-static/range {v5 .. v12}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    return-void

    :cond_0
    invoke-interface {p0}, Lo1/d;->d()J

    move-result-wide v5

    shr-long/2addr v5, v4

    long-to-int p1, v5

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    sub-float p1, p1, p4

    sub-float p1, p1, p5

    invoke-interface {p0}, Lo1/d;->d()J

    move-result-wide v5

    and-long/2addr v5, v2

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float v0, v0, p4

    div-float/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v5, p1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    shl-long/2addr v5, v4

    and-long/2addr v0, v2

    or-long/2addr v0, v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v5, p1

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v7, p1

    shl-long v4, v5, v4

    and-long/2addr v2, v7

    or-long v5, v4, v2

    const/16 v7, 0x78

    move-wide v3, v0

    move-object v0, p0

    move-wide v1, p2

    invoke-static/range {v0 .. v7}, Lo1/d;->h(Lo1/d;JJJI)V

    return-void
.end method
