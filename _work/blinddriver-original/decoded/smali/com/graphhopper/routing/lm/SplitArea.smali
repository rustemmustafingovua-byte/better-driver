.class public Lcom/graphhopper/routing/lm/SplitArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/AreaIndex$Area;


# instance fields
.field private final borders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpb/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpb/x;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/lm/SplitArea;->borders:Ljava/util/List;

    return-void
.end method

.method public static fromJsonFeature(Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/routing/lm/SplitArea;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getGeometry()Lpb/i;

    move-result-object v2

    invoke-virtual {v2}, Lpb/i;->E()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getGeometry()Lpb/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lpb/i;->A(I)Lpb/i;

    move-result-object v2

    instance-of v3, v2, Lpb/x;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeoJson features used to create split areas must be of type \'Polygon\', but was: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/graphhopper/routing/lm/SplitArea;

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/lm/SplitArea;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public getBorders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpb/x;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/lm/SplitArea;->borders:Ljava/util/List;

    return-object p0
.end method
