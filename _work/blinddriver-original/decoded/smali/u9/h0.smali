.class public final Lu9/h0;
.super Lu9/y0;
.source "SourceFile"


# instance fields
.field public final synthetic p:I

.field public final q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lu9/h0;->p:I

    invoke-direct {p0}, Lz9/j;-><init>()V

    iput-object p2, p0, Lu9/h0;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final k()Z
    .locals 0

    iget p0, p0, Lu9/h0;->p:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, Lu9/h0;->p:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lu9/h0;->q:Ljava/lang/Object;

    check-cast p1, Lu9/z0;

    invoke-virtual {p0}, Lu9/y0;->j()Lu9/c1;

    move-result-object p0

    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lu9/n;

    if-eqz v0, :cond_0

    check-cast p0, Lu9/n;

    iget-object p0, p0, Lu9/n;->a:Ljava/lang/Throwable;

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    invoke-virtual {p1, p0}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lu9/v;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lu9/h0;->q:Ljava/lang/Object;

    check-cast p0, Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object p0, p0, Lu9/h0;->q:Ljava/lang/Object;

    check-cast p0, Lu9/g0;

    invoke-interface {p0}, Lu9/g0;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
