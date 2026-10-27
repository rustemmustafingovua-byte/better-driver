.class public abstract Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# static fields
.field static final INTENDED:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final ONEWAYS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field protected final allowedValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final barriers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blockFords:Z

.field protected final restrictedValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final restrictionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "1"

    const-string v1, "-1"

    const-string v2, "yes"

    const-string v3, "true"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->ONEWAYS:Ljava/util/Collection;

    const-string v0, "official"

    const-string v1, "permissive"

    const-string v3, "designated"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->INTENDED:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    sget-object v3, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->INTENDED:Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->blockFords:Z

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    const-string p0, "destination"

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "no"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "restricted"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "military"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "emergency"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "private"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "permit"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blockFords(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->blockFords:Z

    return-void
.end method

.method public blockPrivate(Z)V
    .locals 2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    const-string v0, "private"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    const-string v1, "permit"

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no \'permit\' found in restrictedValues"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no \'private\' found in restrictedValues"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final getAccessEnc()Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRestrictionKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    return-object p0
.end method

.method public handleBarrierEdge(ILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/graphhopper/routing/ev/EdgeIntAccess;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/reader/ReaderNode;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/graphhopper/reader/ReaderNode;-><init>(JDDLjava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->isBarrier(Lcom/graphhopper/reader/ReaderNode;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->getAccessEnc()Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p0

    const/4 p3, 0x0

    invoke-interface {p0, p3, p1, p2, p3}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    :cond_0
    return-void
.end method

.method public abstract handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V

    return-void
.end method

.method public isBarrier(Lcom/graphhopper/reader/ReaderNode;)Z
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/graphhopper/reader/ReaderElement;->getFirstValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "locked"

    const-string v3, "yes"

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "barrier"

    iget-object v4, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    invoke-virtual {p1, v0, v4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->blockFords:Z

    if-eqz p0, :cond_4

    const-string p0, "ford"

    invoke-virtual {p1, p0, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public isBlockFords()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->blockFords:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
