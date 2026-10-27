.class Lcom/graphhopper/util/EdgeIteratorState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ev/BooleanEncodedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/util/EdgeIteratorState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "unfavored"

    return-object p0
.end method

.method public init(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)I
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot happen for \'unfavored\' BooleanEncodedValue"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isStoreTwoDirections()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "state of \'unfavored\' cannot be modified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
