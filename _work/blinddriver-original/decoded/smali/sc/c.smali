.class public abstract Lsc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz0/d;

.field public static final b:Lz0/d;

.field public static c:Li9/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, Lp2/x;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp2/x;-><init>(IB)V

    new-instance v1, Lz0/d;

    const v2, 0x446455c1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lz0/d;-><init>(IZLt8/e;)V

    sput-object v1, Lsc/c;->a:Lz0/d;

    new-instance v0, Lp2/x;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp2/x;-><init>(IB)V

    new-instance v1, Lz0/d;

    const v2, -0x7249baff

    invoke-direct {v1, v2, v3, v0}, Lz0/d;-><init>(IZLt8/e;)V

    sput-object v1, Lsc/c;->b:Lz0/d;

    new-instance v0, Lsc/s0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsc/s0;-><init>(I)V

    sput-object v0, Lsc/c;->c:Li9/e;

    return-void
.end method

.method public static final a(DI)Ljava/lang/String;
    .locals 9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NaN"

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    cmpl-double p0, p0, v1

    if-lez p0, :cond_1

    const-string p0, "Infinity"

    return-object p0

    :cond_1
    const-string p0, "-Infinity"

    return-object p0

    :cond_2
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    int-to-double v5, p2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-long v5, v5

    cmpg-double p0, p0, v1

    if-gez p0, :cond_3

    const-wide/16 p0, 0x0

    cmp-long p0, v5, p0

    if-eqz p0, :cond_3

    const-string p0, "-"

    goto :goto_0

    :cond_3
    const-string p0, ""

    :goto_0
    if-nez p2, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    double-to-long v0, v3

    div-long v2, v5, v0

    rem-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lr9/k;->k0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static final c(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    return-wide p0
.end method
