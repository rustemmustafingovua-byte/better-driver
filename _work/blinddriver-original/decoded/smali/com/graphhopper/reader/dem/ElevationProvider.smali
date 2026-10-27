.class public interface abstract Lcom/graphhopper/reader/dem/ElevationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOOP:Lcom/graphhopper/reader/dem/ElevationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphhopper/reader/dem/ElevationProvider$1;

    invoke-direct {v0}, Lcom/graphhopper/reader/dem/ElevationProvider$1;-><init>()V

    sput-object v0, Lcom/graphhopper/reader/dem/ElevationProvider;->NOOP:Lcom/graphhopper/reader/dem/ElevationProvider;

    return-void
.end method


# virtual methods
.method public abstract canInterpolate()Z
.end method

.method public abstract getEle(DD)D
.end method

.method public getEle(Lcom/graphhopper/reader/ReaderNode;)D
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderNode;->getLat()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderNode;->getLon()D

    move-result-wide v2

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/graphhopper/reader/dem/ElevationProvider;->getEle(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public abstract release()V
.end method
