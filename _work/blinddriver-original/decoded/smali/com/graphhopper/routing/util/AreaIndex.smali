.class public Lcom/graphhopper/routing/util/AreaIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/util/AreaIndex$Area;,
        Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/graphhopper/routing/util/AreaIndex$Area;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final gf:Lpb/m;

.field private final index:Lzb/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpb/m;

    invoke-direct {v0}, Lpb/m;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/AreaIndex;->gf:Lpb/m;

    new-instance v0, Lzb/d;

    invoke-direct {v0}, Lzb/d;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/AreaIndex;->index:Lzb/d;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/util/AreaIndex$Area;

    invoke-interface {v0}, Lcom/graphhopper/routing/util/AreaIndex$Area;->getBorders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpb/x;

    new-instance v3, Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;

    if-eqz v2, :cond_1

    new-instance v4, Lrb/d;

    invoke-direct {v4, v2}, Lrb/d;-><init>(Lpb/x;)V

    goto :goto_1

    :cond_1
    instance-of v4, v2, Lpb/r;

    if-eqz v4, :cond_2

    new-instance v4, Lrb/b;

    move-object v5, v2

    check-cast v5, Lpb/r;

    check-cast v5, Lpb/i;

    invoke-direct {v4, v5}, Lg5/c;-><init>(Lpb/i;)V

    const/4 v5, 0x0

    iput-object v5, v4, Lrb/b;->o:Lcc/a;

    goto :goto_1

    :cond_2
    instance-of v4, v2, Lpb/b0;

    if-eqz v4, :cond_3

    new-instance v4, Lrb/c;

    move-object v5, v2

    check-cast v5, Lpb/b0;

    check-cast v5, Lpb/i;

    invoke-direct {v4, v5}, Lg5/c;-><init>(Lpb/i;)V

    goto :goto_1

    :cond_3
    new-instance v4, Lg5/c;

    invoke-direct {v4, v2}, Lg5/c;-><init>(Lpb/i;)V

    :goto_1
    invoke-direct {v3, v0, v4}, Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;-><init>(Lcom/graphhopper/routing/util/AreaIndex$Area;Lrb/a;)V

    iget-object v4, p0, Lcom/graphhopper/routing/util/AreaIndex;->index:Lzb/d;

    invoke-virtual {v2}, Lpb/i;->z()Lpb/h;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lzb/d;->c(Lpb/h;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/graphhopper/routing/util/AreaIndex;->index:Lzb/d;

    invoke-virtual {p0}, Lzb/d;->a()V

    return-void
.end method

.method public static synthetic a(Lpb/w;Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/AreaIndex;->lambda$query$0(Lpb/w;Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;)Lcom/graphhopper/routing/util/AreaIndex$Area;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/util/AreaIndex;->lambda$query$1(Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;)Lcom/graphhopper/routing/util/AreaIndex$Area;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$query$0(Lpb/w;Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;->intersects(Lpb/w;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$query$1(Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;)Lcom/graphhopper/routing/util/AreaIndex$Area;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;->area:Lcom/graphhopper/routing/util/AreaIndex$Area;

    return-object p0
.end method


# virtual methods
.method public query(DD)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lpb/h;

    move-wide v3, p3

    move-wide v7, p1

    move-wide v5, p1

    move-wide v1, p3

    invoke-direct/range {v0 .. v8}, Lpb/h;-><init>(DDDD)V

    iget-object p1, p0, Lcom/graphhopper/routing/util/AreaIndex;->index:Lzb/d;

    invoke-virtual {p1, v0}, Lzb/d;->d(Lpb/h;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/graphhopper/routing/util/AreaIndex;->gf:Lpb/m;

    new-instance p2, Lpb/a;

    invoke-direct {p2, v1, v2, v5, v6}, Lpb/a;-><init>(DD)V

    invoke-virtual {p0, p2}, Lpb/m;->d(Lpb/a;)Lpb/w;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/graphhopper/routing/util/a;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0}, Lcom/graphhopper/routing/util/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/graphhopper/routing/util/b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/graphhopper/routing/util/b;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
