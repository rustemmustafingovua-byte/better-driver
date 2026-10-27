.class public final Ln1/p;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ln1/q;


# direct methods
.method public synthetic constructor <init>(Ln1/q;I)V
    .locals 0

    iput p2, p0, Ln1/p;->l:I

    iput-object p1, p0, Ln1/p;->m:Ln1/q;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Ln1/p;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p0, p0, Ln1/p;->m:Ln1/q;

    iget-object p1, p0, Ln1/q;->k:Ln1/i;

    invoke-interface {p1, v0, v1}, Ln1/i;->g(D)D

    move-result-wide v2

    iget p1, p0, Ln1/q;->e:F

    float-to-double v4, p1

    iget p0, p0, Ln1/q;->f:F

    float-to-double v6, p0

    invoke-static/range {v2 .. v7}, Lg6/c1;->d(DDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p0, p0, Ln1/p;->m:Ln1/q;

    iget-object p1, p0, Ln1/q;->n:Ln1/i;

    iget v2, p0, Ln1/q;->e:F

    float-to-double v2, v2

    iget p0, p0, Ln1/q;->f:F

    float-to-double v4, p0

    invoke-static/range {v0 .. v5}, Lg6/c1;->d(DDD)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ln1/i;->g(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
