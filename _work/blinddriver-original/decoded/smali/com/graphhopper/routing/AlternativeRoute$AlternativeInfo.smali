.class public Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/AlternativeRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlternativeInfo"
.end annotation


# instance fields
.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Lcom/graphhopper/routing/Path;

.field private final shareEnd:Lcom/graphhopper/routing/SPTEntry;

.field private final shareStart:Lcom/graphhopper/routing/SPTEntry;

.field private final shareWeight:D

.field private final sortBy:D


# direct methods
.method public constructor <init>(DLcom/graphhopper/routing/Path;Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;DLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/graphhopper/routing/Path;",
            "Lcom/graphhopper/routing/SPTEntry;",
            "Lcom/graphhopper/routing/SPTEntry;",
            "D",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->names:Ljava/util/List;

    iput-wide p1, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->sortBy:D

    iput-object p3, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->path:Lcom/graphhopper/routing/Path;

    invoke-virtual {p3, p8}, Lcom/graphhopper/routing/Path;->setDescription(Ljava/util/List;)Lcom/graphhopper/routing/Path;

    iput-object p4, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->shareStart:Lcom/graphhopper/routing/SPTEntry;

    iput-object p5, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->shareEnd:Lcom/graphhopper/routing/SPTEntry;

    iput-wide p6, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->shareWeight:D

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;)Lcom/graphhopper/routing/Path;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->path:Lcom/graphhopper/routing/Path;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;)D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->sortBy:D

    return-wide v0
.end method


# virtual methods
.method public getPath()Lcom/graphhopper/routing/Path;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->path:Lcom/graphhopper/routing/Path;

    return-object p0
.end method

.method public getShareEnd()Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->shareEnd:Lcom/graphhopper/routing/SPTEntry;

    return-object p0
.end method

.method public getShareStart()Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->shareStart:Lcom/graphhopper/routing/SPTEntry;

    return-object p0
.end method

.method public getShareWeight()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->shareWeight:D

    return-wide v0
.end method

.method public getSortBy()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->sortBy:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->names:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->sortBy:D

    iget-wide v3, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->shareWeight:D

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->path:Lcom/graphhopper/routing/Path;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sortBy:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", shareWeight:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
