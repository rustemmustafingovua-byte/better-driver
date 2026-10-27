.class public final Lr1/d0;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr1/e0;


# direct methods
.method public synthetic constructor <init>(Lr1/e0;I)V
    .locals 0

    iput p2, p0, Lr1/d0;->l:I

    iput-object p1, p0, Lr1/d0;->m:Lr1/e0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lr1/d0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lo1/d;

    iget-object p0, p0, Lr1/d0;->m:Lr1/e0;

    iget-object v0, p0, Lr1/e0;->b:Lr1/c;

    iget v1, p0, Lr1/e0;->k:F

    iget p0, p0, Lr1/e0;->l:F

    invoke-interface {p1}, Lo1/d;->Y()Lg5/m;

    move-result-object v2

    invoke-virtual {v2}, Lg5/m;->m()J

    move-result-wide v3

    invoke-virtual {v2}, Lg5/m;->h()Lm1/o;

    move-result-object v5

    invoke-interface {v5}, Lm1/o;->h()V

    :try_start_0
    iget-object v5, v2, Lg5/m;->m:Ljava/lang/Object;

    check-cast v5, Lm2/j;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v1, p0, v6, v7}, Lm2/j;->A(FFJ)V

    invoke-virtual {v0, p1}, Lr1/c;->a(Lo1/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3, v4}, Lm/a;->t(Lg5/m;J)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3, v4}, Lm/a;->t(Lg5/m;J)V

    throw p0

    :pswitch_0
    check-cast p1, Lr1/c0;

    const/4 p1, 0x1

    iget-object p0, p0, Lr1/d0;->m:Lr1/e0;

    iput-boolean p1, p0, Lr1/e0;->d:Z

    iget-object p0, p0, Lr1/e0;->f:Lj9/o;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
