.class Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/util/AreaIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexedCustomArea"
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
.field final area:Lcom/graphhopper/routing/util/AreaIndex$Area;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final preparedGeometry:Lrb/a;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/util/AreaIndex$Area;Lrb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrb/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;->area:Lcom/graphhopper/routing/util/AreaIndex$Area;

    iput-object p2, p0, Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;->preparedGeometry:Lrb/a;

    return-void
.end method


# virtual methods
.method public intersects(Lpb/w;)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/AreaIndex$IndexedCustomArea;->preparedGeometry:Lrb/a;

    invoke-interface {p0, p1}, Lrb/a;->a(Lpb/i;)Z

    move-result p0

    return p0
.end method
