.class public Lcom/graphhopper/jackson/Gpx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/jackson/Gpx$Trkpt;,
        Lcom/graphhopper/jackson/Gpx$Trkseg;,
        Lcom/graphhopper/jackson/Gpx$Trk;
    }
.end annotation

.annotation runtime Lr5/x;
    ignoreUnknown = true
.end annotation


# instance fields
.field public trk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/jackson/Gpx$Trk;",
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

    iput-object v0, p0, Lcom/graphhopper/jackson/Gpx;->trk:Ljava/util/List;

    return-void
.end method
