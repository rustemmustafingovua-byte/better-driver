.class public final synthetic Ln1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/i;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ln1/q;


# direct methods
.method public synthetic constructor <init>(Ln1/q;I)V
    .locals 0

    iput p2, p0, Ln1/m;->l:I

    iput-object p1, p0, Ln1/m;->m:Ln1/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(D)D
    .locals 8

    iget v0, p0, Ln1/m;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ln1/m;->m:Ln1/q;

    iget-object v0, p0, Ln1/q;->n:Ln1/i;

    iget v1, p0, Ln1/q;->e:F

    float-to-double v4, v1

    iget p0, p0, Ln1/q;->f:F

    float-to-double v6, p0

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lg6/c1;->d(DDD)D

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Ln1/i;->g(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    move-wide v2, p1

    iget-object p0, p0, Ln1/m;->m:Ln1/q;

    iget-object p1, p0, Ln1/q;->k:Ln1/i;

    invoke-interface {p1, v2, v3}, Ln1/i;->g(D)D

    move-result-wide v0

    iget p1, p0, Ln1/q;->e:F

    float-to-double v2, p1

    iget p0, p0, Ln1/q;->f:F

    float-to-double v4, p0

    invoke-static/range {v0 .. v5}, Lg6/c1;->d(DDD)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
