.class public final Lu9/i;
.super Lu9/y0;
.source "SourceFile"


# instance fields
.field public final synthetic p:I

.field public final q:Lu9/g;


# direct methods
.method public synthetic constructor <init>(Lu9/g;I)V
    .locals 0

    iput p2, p0, Lu9/i;->p:I

    invoke-direct {p0}, Lz9/j;-><init>()V

    iput-object p1, p0, Lu9/i;->q:Lu9/g;

    return-void
.end method


# virtual methods
.method public final k()Z
    .locals 0

    iget p0, p0, Lu9/i;->p:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 5

    iget p1, p0, Lu9/i;->p:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lu9/i;->q:Lu9/g;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lu9/y0;->j()Lu9/c1;

    move-result-object p1

    iget-object p0, p0, Lu9/i;->q:Lu9/g;

    invoke-virtual {p0, p1}, Lu9/g;->p(Lu9/c1;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0}, Lu9/g;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lu9/g;->o:Ly8/c;

    check-cast v0, Lz9/g;

    sget-object v1, Lz9/g;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lz9/b;->c:Lmb/s2;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-virtual {v1, v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_3
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    invoke-virtual {p0, p1}, Lu9/g;->j(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lu9/g;->w()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lu9/g;->m()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
