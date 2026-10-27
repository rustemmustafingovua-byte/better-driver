.class public Lcom/graphhopper/routing/util/OSMParsers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ignoredHighways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final relConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

.field private final relationTagParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/parsers/RelationTagParser;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictionTagParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/osm/RestrictionTagParser;",
            ">;"
        }
    .end annotation
.end field

.field private final wayTagParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/parsers/TagParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/graphhopper/routing/util/OSMParsers;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/parsers/TagParser;",
            ">;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/parsers/RelationTagParser;",
            ">;",
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/osm/RestrictionTagParser;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-direct {v0}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/OSMParsers;->relConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    .line 4
    iput-object p1, p0, Lcom/graphhopper/routing/util/OSMParsers;->ignoredHighways:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/graphhopper/routing/util/OSMParsers;->wayTagParsers:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/graphhopper/routing/util/OSMParsers;->relationTagParsers:Ljava/util/List;

    .line 7
    iput-object p4, p0, Lcom/graphhopper/routing/util/OSMParsers;->restrictionTagParsers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public acceptWay(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 2

    const-string v0, "highway"

    invoke-virtual {p1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/util/OSMParsers;->ignoredHighways:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    const-string p0, "route"

    invoke-virtual {p1, p0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const-string p0, "man_made"

    invoke-virtual {p1, p0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "pier"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const-string p0, "railway"

    invoke-virtual {p1, p0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "platform"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public addIgnoredHighway(Ljava/lang/String;)Lcom/graphhopper/routing/util/OSMParsers;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/util/OSMParsers;->ignoredHighways:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRelationTagParser(Ljava/util/function/Function;)Lcom/graphhopper/routing/util/OSMParsers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;",
            "Lcom/graphhopper/routing/util/parsers/RelationTagParser;",
            ">;)",
            "Lcom/graphhopper/routing/util/OSMParsers;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/routing/util/OSMParsers;->relationTagParsers:Ljava/util/List;

    iget-object v1, p0, Lcom/graphhopper/routing/util/OSMParsers;->relConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/util/parsers/RelationTagParser;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRestrictionTagParser(Lcom/graphhopper/reader/osm/RestrictionTagParser;)Lcom/graphhopper/routing/util/OSMParsers;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/util/OSMParsers;->restrictionTagParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addWayTagParser(Lcom/graphhopper/routing/util/parsers/TagParser;)Lcom/graphhopper/routing/util/OSMParsers;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/util/OSMParsers;->wayTagParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createRelationFlags()Lcom/graphhopper/storage/IntsRef;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/util/OSMParsers;->relConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->getRequiredInts()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    new-instance p0, Lcom/graphhopper/storage/IntsRef;

    invoke-direct {p0, v0}, Lcom/graphhopper/storage/IntsRef;-><init>(I)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "More than two ints are needed for relation flags, but OSMReader does not allow this"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIgnoredHighways()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/util/OSMParsers;->ignoredHighways:Ljava/util/List;

    return-object p0
.end method

.method public getRelationTagParsers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/parsers/RelationTagParser;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/util/OSMParsers;->relationTagParsers:Ljava/util/List;

    return-object p0
.end method

.method public getRestrictionTagParsers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/osm/RestrictionTagParser;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/util/OSMParsers;->restrictionTagParsers:Ljava/util/List;

    return-object p0
.end method

.method public getWayTagParsers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/parsers/TagParser;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/util/OSMParsers;->wayTagParsers:Ljava/util/List;

    return-object p0
.end method

.method public handleRelationTags(Lcom/graphhopper/reader/ReaderRelation;Lcom/graphhopper/storage/IntsRef;)Lcom/graphhopper/storage/IntsRef;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/util/OSMParsers;->relationTagParsers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/util/parsers/RelationTagParser;

    invoke-interface {v0, p2, p1}, Lcom/graphhopper/routing/util/parsers/RelationTagParser;->handleRelationTags(Lcom/graphhopper/storage/IntsRef;Lcom/graphhopper/reader/ReaderRelation;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/util/OSMParsers;->relationTagParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/util/parsers/RelationTagParser;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/graphhopper/routing/util/parsers/TagParser;->handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/util/OSMParsers;->wayTagParsers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/util/parsers/TagParser;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/graphhopper/routing/util/parsers/TagParser;->handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V

    goto :goto_1

    :cond_1
    return-void
.end method
