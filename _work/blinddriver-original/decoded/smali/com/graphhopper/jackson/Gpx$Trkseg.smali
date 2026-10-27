.class public Lcom/graphhopper/jackson/Gpx$Trkseg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/jackson/Gpx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trkseg"
.end annotation

.annotation runtime Lr5/x;
    ignoreUnknown = true
.end annotation


# instance fields
.field public trkpt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/jackson/Gpx$Trkpt;",
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

    iput-object v0, p0, Lcom/graphhopper/jackson/Gpx$Trkseg;->trkpt:Ljava/util/List;

    return-void
.end method
