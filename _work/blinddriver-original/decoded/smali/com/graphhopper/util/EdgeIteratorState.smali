.class public interface abstract Lcom/graphhopper/util/EdgeIteratorState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REVERSE_STATE:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field public static final UNFAVORED_EDGE:Lcom/graphhopper/routing/ev/BooleanEncodedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphhopper/util/EdgeIteratorState$1;

    invoke-direct {v0}, Lcom/graphhopper/util/EdgeIteratorState$1;-><init>()V

    sput-object v0, Lcom/graphhopper/util/EdgeIteratorState;->UNFAVORED_EDGE:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    new-instance v0, Lcom/graphhopper/util/EdgeIteratorState$2;

    invoke-direct {v0}, Lcom/graphhopper/util/EdgeIteratorState$2;-><init>()V

    sput-object v0, Lcom/graphhopper/util/EdgeIteratorState;->REVERSE_STATE:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-void
.end method


# virtual methods
.method public abstract copyPropertiesFrom(Lcom/graphhopper/util/EdgeIteratorState;)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract detach(Z)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;
.end method

.method public abstract get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
.end method

.method public abstract get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I
.end method

.method public abstract get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract get(Lcom/graphhopper/routing/ev/StringEncodedValue;)Ljava/lang/String;
.end method

.method public abstract get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z
.end method

.method public abstract getAdjNode()I
.end method

.method public abstract getBaseNode()I
.end method

.method public abstract getDistance()D
.end method

.method public abstract getEdge()I
.end method

.method public abstract getEdgeKey()I
.end method

.method public abstract getFlags()Lcom/graphhopper/storage/IntsRef;
.end method

.method public abstract getKeyValues()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/search/KVStorage$KValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
.end method

.method public abstract getReverse(Lcom/graphhopper/routing/ev/IntEncodedValue;)I
.end method

.method public abstract getReverse(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getReverse(Lcom/graphhopper/routing/ev/StringEncodedValue;)Ljava/lang/String;
.end method

.method public abstract getReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z
.end method

.method public abstract getReverseEdgeKey()I
.end method

.method public abstract getValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;ZZ)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;DD)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract set(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;TT;)",
            "Lcom/graphhopper/util/EdgeIteratorState;"
        }
    .end annotation
.end method

.method public abstract set(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;TT;TT;)",
            "Lcom/graphhopper/util/EdgeIteratorState;"
        }
    .end annotation
.end method

.method public abstract set(Lcom/graphhopper/routing/ev/IntEncodedValue;I)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract set(Lcom/graphhopper/routing/ev/IntEncodedValue;II)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract set(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract set(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract setDistance(D)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract setFlags(Lcom/graphhopper/storage/IntsRef;)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract setKeyValues(Ljava/util/Map;)Lcom/graphhopper/util/EdgeIteratorState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/search/KVStorage$KValue;",
            ">;)",
            "Lcom/graphhopper/util/EdgeIteratorState;"
        }
    .end annotation
.end method

.method public abstract setReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract setReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract setReverse(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;TT;)",
            "Lcom/graphhopper/util/EdgeIteratorState;"
        }
    .end annotation
.end method

.method public abstract setReverse(Lcom/graphhopper/routing/ev/IntEncodedValue;I)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract setReverse(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract setWayGeometry(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/util/EdgeIteratorState;
.end method
