.class public Lcom/graphhopper/isochrone/algorithm/Triangulator$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/isochrone/algorithm/Triangulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final seedEdges:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;",
            ">;"
        }
    .end annotation
.end field

.field public final triangulation:Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;


# direct methods
.method public constructor <init>(Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;",
            "Ljava/util/Collection<",
            "Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/Triangulator$Result;->triangulation:Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;

    iput-object p2, p0, Lcom/graphhopper/isochrone/algorithm/Triangulator$Result;->seedEdges:Ljava/util/Collection;

    return-void
.end method
