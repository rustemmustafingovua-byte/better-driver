.class public Lcom/graphhopper/util/details/KVStringDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private curString:Ljava/lang/String;

.field private initial:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/graphhopper/util/details/KVStringDetails;->initial:Z

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/details/KVStringDetails;->curString:Ljava/lang/String;

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/graphhopper/util/details/KVStringDetails;->initial:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/graphhopper/util/details/KVStringDetails;->curString:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/graphhopper/util/details/KVStringDetails;->initial:Z

    return v1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/util/details/KVStringDetails;->curString:Ljava/lang/String;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/graphhopper/util/details/KVStringDetails;->curString:Ljava/lang/String;

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/graphhopper/util/details/KVStringDetails;->curString:Ljava/lang/String;

    return v1

    :cond_3
    return v2
.end method
