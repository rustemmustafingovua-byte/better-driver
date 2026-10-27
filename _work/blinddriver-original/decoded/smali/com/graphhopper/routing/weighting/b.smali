.class public final synthetic Lcom/graphhopper/routing/weighting/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/graphhopper/routing/weighting/QueryGraphWeighting;

.field public final synthetic b:Lcom/graphhopper/util/EdgeExplorer;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;Lcom/graphhopper/util/EdgeExplorer;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/b;->a:Lcom/graphhopper/routing/weighting/QueryGraphWeighting;

    iput-object p2, p0, Lcom/graphhopper/routing/weighting/b;->b:Lcom/graphhopper/util/EdgeExplorer;

    iput p3, p0, Lcom/graphhopper/routing/weighting/b;->c:I

    iput p4, p0, Lcom/graphhopper/routing/weighting/b;->d:I

    iput-object p5, p0, Lcom/graphhopper/routing/weighting/b;->e:Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget v3, p0, Lcom/graphhopper/routing/weighting/b;->d:I

    iget-object v4, p0, Lcom/graphhopper/routing/weighting/b;->e:Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/b;->a:Lcom/graphhopper/routing/weighting/QueryGraphWeighting;

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/b;->b:Lcom/graphhopper/util/EdgeExplorer;

    iget v2, p0, Lcom/graphhopper/routing/weighting/b;->c:I

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->a(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;Lcom/graphhopper/util/EdgeExplorer;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V

    return-void
.end method
