.class Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemLeafEntry;
.super Lcom/carrotsearch/hppc/x;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/index/InMemConstructionIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InMemLeafEntry"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getResults()Lcom/carrotsearch/hppc/x;
    .locals 0

    return-object p0
.end method

.method public final isLeaf()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/carrotsearch/hppc/x;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LEAF  "

    invoke-static {v0, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
