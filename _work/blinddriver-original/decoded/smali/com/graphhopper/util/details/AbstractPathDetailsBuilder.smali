.class public abstract Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/details/PathDetailsBuilder;


# instance fields
.field private currentDetail:Lcom/graphhopper/util/details/PathDetail;

.field private isOpen:Z

.field private final name:Ljava/lang/String;

.field private final pathDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->isOpen:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->pathDetails:Ljava/util/List;

    iput-object p1, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetail;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/coll/MapEntry;

    invoke-virtual {p0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->pathDetails:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/graphhopper/coll/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public endInterval(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->isOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->currentDetail:Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {v0, p1}, Lcom/graphhopper/util/details/PathDetail;->setLast(I)V

    iget-object p1, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->pathDetails:Ljava/util/List;

    iget-object v0, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->currentDetail:Lcom/graphhopper/util/details/PathDetail;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->isOpen:Z

    return-void
.end method

.method public abstract getCurrentValue()Ljava/lang/Object;
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public startInterval(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->isOpen:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/graphhopper/util/details/PathDetail;

    invoke-direct {v1, v0}, Lcom/graphhopper/util/details/PathDetail;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->currentDetail:Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {v1, p1}, Lcom/graphhopper/util/details/PathDetail;->setFirst(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->isOpen:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->currentDetail:Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {p0}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PathDetailsBuilder is already in an open state with value: "

    const-string v2, " trying to open a new one with value: "

    invoke-static {v1, p0, v2, v0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
