.class public Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ev/EncodedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializerConfig"
.end annotation


# instance fields
.field bitMask:I

.field dataIndex:I

.field nextShift:I

.field shift:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->dataIndex:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->shift:I

    iput v0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->nextShift:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->bitMask:I

    return-void
.end method

.method private getRequiredBits()I
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->dataIndex:I

    mul-int/lit8 v0, v0, 0x20

    iget p0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->nextShift:I

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public getRequiredBytes()I
    .locals 4

    invoke-direct {p0}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->getRequiredBits()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getRequiredInts()I
    .locals 4

    invoke-direct {p0}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->getRequiredBits()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public next(I)V
    .locals 4

    iget v0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->nextShift:I

    iput v0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->shift:I

    add-int/lit8 v1, v0, -0x1

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x20

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x20

    if-le v1, v0, :cond_0

    iget v0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->dataIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->dataIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->shift:I

    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    sub-long/2addr v2, v0

    long-to-int v0, v2

    iget v1, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->shift:I

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->bitMask:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->nextShift:I

    return-void
.end method
