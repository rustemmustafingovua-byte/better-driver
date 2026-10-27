.class public Lcom/graphhopper/util/details/EnumDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum;",
        ">",
        "Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;"
    }
.end annotation


# instance fields
.field private final ev:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TE;>;"
        }
    .end annotation
.end field

.field private objVal:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/graphhopper/util/details/EnumDetails;->ev:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/details/EnumDetails;->objVal:Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/util/details/EnumDetails;->ev:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object p1

    iget-object v0, p0, Lcom/graphhopper/util/details/EnumDetails;->objVal:Ljava/lang/Enum;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/graphhopper/util/details/EnumDetails;->objVal:Ljava/lang/Enum;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
