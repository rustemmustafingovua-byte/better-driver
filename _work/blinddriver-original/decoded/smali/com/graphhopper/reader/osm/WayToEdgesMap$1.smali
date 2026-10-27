.class Lcom/graphhopper/reader/osm/WayToEdgesMap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/reader/osm/WayToEdgesMap;->getEdges(J)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ln5/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/reader/osm/WayToEdgesMap;

.field final synthetic val$cursor:Ln5/a;

.field final synthetic val$offsetBegin:I

.field final synthetic val$offsetEnd:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/reader/osm/WayToEdgesMap;ILn5/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->this$0:Lcom/graphhopper/reader/osm/WayToEdgesMap;

    iput p2, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->val$offsetBegin:I

    iput-object p3, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->val$cursor:Ln5/a;

    iput p4, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->val$offsetEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->val$offsetBegin:I

    iget-object v1, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->val$cursor:Ln5/a;

    iget v1, v1, Ln5/a;->a:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->val$offsetEnd:I

    if-ge v0, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->next()Ln5/a;

    move-result-object p0

    return-object p0
.end method

.method public next()Ln5/a;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->val$cursor:Ln5/a;

    iget v1, v0, Ln5/a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ln5/a;->a:I

    .line 3
    iget-object v1, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->this$0:Lcom/graphhopper/reader/osm/WayToEdgesMap;

    invoke-static {v1}, Lcom/graphhopper/reader/osm/WayToEdgesMap;->a(Lcom/graphhopper/reader/osm/WayToEdgesMap;)Lcom/carrotsearch/hppc/x;

    move-result-object v1

    iget v2, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->val$offsetBegin:I

    iget-object v3, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->val$cursor:Ln5/a;

    iget v3, v3, Ln5/a;->a:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v1

    iput v1, v0, Ln5/a;->b:I

    .line 4
    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;->val$cursor:Ln5/a;

    return-object p0
.end method
