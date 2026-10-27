.class public final synthetic Lcom/graphhopper/routing/weighting/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/graphhopper/routing/weighting/QueryGraphWeighting;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V
    .locals 0

    iput p5, p0, Lcom/graphhopper/routing/weighting/a;->a:I

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/a;->b:Lcom/graphhopper/routing/weighting/QueryGraphWeighting;

    iput p2, p0, Lcom/graphhopper/routing/weighting/a;->c:I

    iput p3, p0, Lcom/graphhopper/routing/weighting/a;->d:I

    iput-object p4, p0, Lcom/graphhopper/routing/weighting/a;->e:Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/routing/weighting/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/graphhopper/routing/weighting/a;->d:I

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/a;->e:Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;

    iget-object v2, p0, Lcom/graphhopper/routing/weighting/a;->b:Lcom/graphhopper/routing/weighting/QueryGraphWeighting;

    iget p0, p0, Lcom/graphhopper/routing/weighting/a;->c:I

    invoke-static {v2, p0, v0, v1, p1}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->b(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V

    return-void

    :pswitch_0
    iget v0, p0, Lcom/graphhopper/routing/weighting/a;->d:I

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/a;->e:Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;

    iget-object v2, p0, Lcom/graphhopper/routing/weighting/a;->b:Lcom/graphhopper/routing/weighting/QueryGraphWeighting;

    iget p0, p0, Lcom/graphhopper/routing/weighting/a;->c:I

    invoke-static {v2, p0, v0, v1, p1}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->d(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V

    return-void

    :pswitch_1
    iget v0, p0, Lcom/graphhopper/routing/weighting/a;->d:I

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/a;->e:Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;

    iget-object v2, p0, Lcom/graphhopper/routing/weighting/a;->b:Lcom/graphhopper/routing/weighting/QueryGraphWeighting;

    iget p0, p0, Lcom/graphhopper/routing/weighting/a;->c:I

    invoke-static {v2, p0, v0, v1, p1}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->c(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
