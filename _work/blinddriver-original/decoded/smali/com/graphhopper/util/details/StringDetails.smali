.class public Lcom/graphhopper/util/details/StringDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private currentVal:Ljava/lang/String;

.field private final ev:Lcom/graphhopper/routing/ev/StringEncodedValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/graphhopper/routing/ev/StringEncodedValue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/graphhopper/util/details/StringDetails;->ev:Lcom/graphhopper/routing/ev/StringEncodedValue;

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/details/StringDetails;->currentVal:Ljava/lang/String;

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/util/details/StringDetails;->ev:Lcom/graphhopper/routing/ev/StringEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/StringEncodedValue;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/graphhopper/util/details/StringDetails;->currentVal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/graphhopper/util/details/StringDetails;->currentVal:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
