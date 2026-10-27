.class public Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/EdgeFilter;


# instance fields
.field private avoidBridge:Z

.field private avoidFerry:Z

.field private avoidFord:Z

.field private avoidMotorway:Z

.field private avoidTrunk:Z

.field private avoidTunnel:Z

.field private final filter:Lcom/graphhopper/routing/util/EdgeFilter;

.field private final rcEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadClass;",
            ">;"
        }
    .end annotation
.end field

.field private final reEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadEnvironment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/util/EdgeFilter;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/util/EdgeFilter;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadClass;",
            ">;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadEnvironment;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidMotorway:Z

    iput-object p1, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->filter:Lcom/graphhopper/routing/util/EdgeFilter;

    iput-object p3, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->reEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iput-object p2, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->rcEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "motorway"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iput-boolean p4, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidMotorway:Z

    goto :goto_0

    :cond_0
    const-string p3, "trunk"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iput-boolean p4, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidTrunk:Z

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/graphhopper/routing/ev/RoadEnvironment;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadEnvironment;

    move-result-object p3

    sget-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->TUNNEL:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-ne p3, v0, :cond_2

    iput-boolean p4, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidTunnel:Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->BRIDGE:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-ne p3, v0, :cond_3

    iput-boolean p4, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidBridge:Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->FERRY:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-ne p3, v0, :cond_4

    iput-boolean p4, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidFerry:Z

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->FORD:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-ne p3, v0, :cond_5

    iput-boolean p4, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidFord:Z

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot find snap_prevention: "

    invoke-static {p1, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method


# virtual methods
.method public accept(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->filter:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/util/EdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidMotorway:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->rcEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/graphhopper/routing/ev/RoadClass;->MOTORWAY:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq v0, v1, :cond_6

    :cond_0
    iget-boolean v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidTrunk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->rcEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/graphhopper/routing/ev/RoadClass;->TRUNK:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq v0, v1, :cond_6

    :cond_1
    iget-boolean v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidTunnel:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->reEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/graphhopper/routing/ev/RoadEnvironment;->TUNNEL:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-eq v0, v1, :cond_6

    :cond_2
    iget-boolean v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidBridge:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->reEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/graphhopper/routing/ev/RoadEnvironment;->BRIDGE:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-eq v0, v1, :cond_6

    :cond_3
    iget-boolean v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidFord:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->reEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/graphhopper/routing/ev/RoadEnvironment;->FORD:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-eq v0, v1, :cond_6

    :cond_4
    iget-boolean v0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->avoidFerry:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;->reEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/ev/RoadEnvironment;->FERRY:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-eq p0, p1, :cond_6

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
