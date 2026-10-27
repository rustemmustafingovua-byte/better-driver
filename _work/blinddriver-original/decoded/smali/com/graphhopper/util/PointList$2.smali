.class Lcom/graphhopper/util/PointList$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/util/PointList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/graphhopper/util/shapes/GHPoint3D;",
        ">;"
    }
.end annotation


# instance fields
.field counter:I

.field final synthetic this$0:Lcom/graphhopper/util/PointList;


# direct methods
.method public constructor <init>(Lcom/graphhopper/util/PointList;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/util/PointList$2;->this$0:Lcom/graphhopper/util/PointList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/graphhopper/util/PointList$2;->counter:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/util/PointList$2;->counter:I

    iget-object p0, p0, Lcom/graphhopper/util/PointList$2;->this$0:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public next()Lcom/graphhopper/util/shapes/GHPoint3D;
    .locals 2

    .line 2
    iget v0, p0, Lcom/graphhopper/util/PointList$2;->counter:I

    iget-object v1, p0, Lcom/graphhopper/util/PointList$2;->this$0:Lcom/graphhopper/util/PointList;

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/graphhopper/util/PointList$2;->this$0:Lcom/graphhopper/util/PointList;

    iget v1, p0, Lcom/graphhopper/util/PointList$2;->counter:I

    invoke-virtual {v0, v1}, Lcom/graphhopper/util/PointList;->get(I)Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/graphhopper/util/PointList$2;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphhopper/util/PointList$2;->counter:I

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList$2;->next()Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
