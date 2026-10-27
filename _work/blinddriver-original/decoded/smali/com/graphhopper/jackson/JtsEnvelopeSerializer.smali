.class Lcom/graphhopper/jackson/JtsEnvelopeSerializer;
.super Lb6/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb6/u;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    .line 1
    check-cast p1, Lpb/h;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/jackson/JtsEnvelopeSerializer;->serialize(Lpb/h;Ls5/g;Lb6/r0;)V

    return-void
.end method

.method public serialize(Lpb/h;Ls5/g;Lb6/r0;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Ls5/g;->k0()V

    .line 3
    iget-wide v0, p1, Lpb/h;->l:D

    .line 4
    invoke-static {v0, v1}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ls5/g;->V(D)V

    .line 5
    iget-wide v0, p1, Lpb/h;->n:D

    .line 6
    invoke-static {v0, v1}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ls5/g;->V(D)V

    .line 7
    iget-wide v0, p1, Lpb/h;->m:D

    .line 8
    invoke-static {v0, v1}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ls5/g;->V(D)V

    .line 9
    iget-wide p0, p1, Lpb/h;->o:D

    .line 10
    invoke-static {p0, p1}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ls5/g;->V(D)V

    .line 11
    invoke-virtual {p2}, Ls5/g;->P()V

    return-void
.end method
