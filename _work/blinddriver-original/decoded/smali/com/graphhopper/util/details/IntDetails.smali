.class public Lcom/graphhopper/util/details/IntDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private final ev:Lcom/graphhopper/routing/ev/IntEncodedValue;

.field private intVal:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/graphhopper/routing/ev/IntEncodedValue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/graphhopper/util/details/IntDetails;->ev:Lcom/graphhopper/routing/ev/IntEncodedValue;

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/details/IntDetails;->intVal:Ljava/lang/Integer;

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/util/details/IntDetails;->ev:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I

    move-result p1

    iget-object v0, p0, Lcom/graphhopper/util/details/IntDetails;->intVal:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/details/IntDetails;->intVal:Ljava/lang/Integer;

    const/4 p0, 0x1

    return p0
.end method
