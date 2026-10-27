.class Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/index/InMemConstructionIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InMemTreeEntry"
.end annotation


# instance fields
.field subEntries:[Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;

    iput-object p1, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;->subEntries:[Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;

    return-void
.end method


# virtual methods
.method public getSubEntry(I)Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;->subEntries:[Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final isLeaf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setSubEntry(ILcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;->subEntries:[Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;

    aput-object p2, p0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "TREE"

    return-object p0
.end method
