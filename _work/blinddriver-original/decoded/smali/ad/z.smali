.class public final Lad/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/y;


# instance fields
.field public a:D

.field public b:J

.field public c:D

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/z;->Companion:Lad/y;

    return-void
.end method


# virtual methods
.method public final a(DJDZ)D
    .locals 8

    iget-boolean v0, p0, Lad/z;->d:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lad/z;->b:J

    sub-long/2addr p3, v0

    long-to-double p3, p3

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v2, p3, v0

    const-wide/16 v4, 0x0

    const-wide v6, 0x3ff999999999999aL    # 1.6

    invoke-static/range {v2 .. v7}, Lg6/c1;->d(DDD)D

    move-result-wide p3

    iget-wide v0, p0, Lad/z;->a:D

    iget-wide v2, p0, Lad/z;->c:D

    mul-double/2addr v2, p3

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    sub-double v0, p3, p1

    if-nez p7, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    cmpl-double p0, v2, v4

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 p3, 0x0

    cmpg-double p0, v0, p3

    if-gtz p0, :cond_2

    goto :goto_2

    :cond_2
    cmpg-double p0, p5, p3

    if-gez p0, :cond_3

    move-wide p5, p3

    :cond_3
    neg-double p3, p5

    const-wide p5, 0x3fd999999999999aL    # 0.4

    div-double/2addr p3, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p3

    const-wide/high16 p5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p5, p3

    mul-double/2addr p5, v0

    add-double/2addr p5, p1

    return-wide p5

    :cond_4
    :goto_1
    return-wide p3

    :cond_5
    :goto_2
    return-wide p1
.end method
