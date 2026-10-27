.class public Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/BridgePathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BridePathEntry"
.end annotation


# instance fields
.field chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

.field weight:D


# direct methods
.method public constructor <init>(DLcom/graphhopper/routing/ch/PrepareCHEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->weight:D

    iput-object p3, p0, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->weight:D

    iget-object p0, p0, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "weight: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", chEntry: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
