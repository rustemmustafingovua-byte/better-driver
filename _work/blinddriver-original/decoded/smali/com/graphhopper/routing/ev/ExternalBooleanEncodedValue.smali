.class public Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ev/BooleanEncodedValue;


# instance fields
.field private final bits:Lcom/carrotsearch/hppc/j;

.field private final name:Ljava/lang/String;

.field private final storeTwoDirections:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr5/i0;
            value = "name"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lr5/i0;
            value = "store_two_directions"
        .end annotation
    .end param
    .annotation runtime Lr5/k;
        mode = .enum Lr5/j;->m:Lr5/j;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->storeTwoDirections:Z

    new-instance p1, Lcom/carrotsearch/hppc/j;

    const-wide/16 v0, 0x40

    invoke-direct {p1, v0, v1}, Lcom/carrotsearch/hppc/j;-><init>(J)V

    iput-object p1, p0, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->bits:Lcom/carrotsearch/hppc/j;

    return-void
.end method

.method private getIndex(IZ)J
    .locals 2

    iget-boolean p0, p0, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->storeTwoDirections:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2

    int-to-long p0, p1

    mul-long/2addr p0, v0

    int-to-long v0, p2

    add-long/2addr p0, v0

    return-wide p0

    :cond_0
    int-to-long p0, p1

    return-wide p0
.end method


# virtual methods
.method public getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z
    .locals 2

    iget-object p3, p0, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->bits:Lcom/carrotsearch/hppc/j;

    invoke-direct {p0, p2, p1}, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->getIndex(IZ)J

    move-result-wide p0

    const/4 p2, 0x6

    shr-long v0, p0, p2

    long-to-int p2, v0

    iget-object p3, p3, Lcom/carrotsearch/hppc/j;->l:[J

    array-length v0, p3

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p0, p0

    and-int/lit8 p0, p0, 0x3f

    const-wide/16 v0, 0x1

    shl-long p0, v0, p0

    aget-wide p2, p3, p2

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->name:Ljava/lang/String;

    return-object p0
.end method

.method public init(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStoreTwoDirections()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->storeTwoDirections:Z

    return p0
.end method

.method public setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V
    .locals 0

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->bits:Lcom/carrotsearch/hppc/j;

    invoke-direct {p0, p2, p1}, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->getIndex(IZ)J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/carrotsearch/hppc/j;->h(J)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->bits:Lcom/carrotsearch/hppc/j;

    invoke-direct {p0, p2, p1}, Lcom/graphhopper/routing/ev/ExternalBooleanEncodedValue;->getIndex(IZ)J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lcom/carrotsearch/hppc/j;->f(J)V

    return-void
.end method
