.class public Lcom/graphhopper/reader/ReaderRelation;
.super Lcom/graphhopper/reader/ReaderElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/reader/ReaderRelation$Member;
    }
.end annotation


# instance fields
.field protected members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/ReaderRelation$Member;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 3

    sget-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->RELATION:Lcom/graphhopper/reader/ReaderElement$Type;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/graphhopper/reader/ReaderElement;-><init>(JLcom/graphhopper/reader/ReaderElement$Type;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/graphhopper/reader/ReaderRelation$Member;)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/reader/ReaderRelation;->members:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/reader/ReaderRelation;->members:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/reader/ReaderRelation;->members:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMembers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/ReaderRelation$Member;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/reader/ReaderRelation;->members:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public isMetaRelation()Z
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/reader/ReaderRelation;->members:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/reader/ReaderRelation$Member;

    invoke-virtual {v0}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v0

    sget-object v1, Lcom/graphhopper/reader/ReaderElement$Type;->RELATION:Lcom/graphhopper/reader/ReaderElement$Type;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/reader/ReaderRelation;->members:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Relation ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " members)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
