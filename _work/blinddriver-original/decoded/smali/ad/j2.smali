.class public final Lad/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/i2;


# instance fields
.field public a:J

.field public b:D

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/i2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/j2;->Companion:Lad/i2;

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/lang/Double;
    .locals 4

    iget-wide v0, p0, Lad/j2;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x61a8

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    iget-wide p0, p0, Lad/j2;->b:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
