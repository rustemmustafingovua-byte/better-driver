.class public Lcom/graphhopper/jackson/Gpx$Trk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/jackson/Gpx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trk"
.end annotation

.annotation runtime Lr5/x;
    ignoreUnknown = true
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public trkseg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/jackson/Gpx$Trkseg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/jackson/Gpx$Trk;->trkseg:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/jackson/Gpx$Trkpt;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/jackson/Gpx$Trk;->lambda$getStartTime$1(Lcom/graphhopper/jackson/Gpx$Trkpt;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/graphhopper/jackson/Gpx$Trkseg;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/jackson/Gpx$Trk;->lambda$getStartTime$0(Lcom/graphhopper/jackson/Gpx$Trkseg;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getStartTime$0(Lcom/graphhopper/jackson/Gpx$Trkseg;)Ljava/util/stream/Stream;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/jackson/Gpx$Trkseg;->trkpt:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getStartTime$1(Lcom/graphhopper/jackson/Gpx$Trkpt;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/jackson/Gpx$Trkpt;->time:Ljava/util/Date;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getStartTime()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/jackson/Gpx$Trk;->trkseg:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/d;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/d;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/graphhopper/d;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
