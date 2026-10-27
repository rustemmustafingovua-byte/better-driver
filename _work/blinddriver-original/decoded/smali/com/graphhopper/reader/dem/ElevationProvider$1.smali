.class Lcom/graphhopper/reader/dem/ElevationProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/reader/dem/ElevationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/reader/dem/ElevationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canInterpolate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEle(DD)D
    .locals 0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public release()V
    .locals 0

    return-void
.end method
