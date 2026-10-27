.class public final Lv6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final m:Lv6/l;

.field public final synthetic n:Lv6/p;


# direct methods
.method public synthetic constructor <init>(Lv6/p;Lv6/l;I)V
    .locals 0

    iput p3, p0, Lv6/d;->l:I

    iput-object p1, p0, Lv6/d;->n:Lv6/p;

    iput-object p2, p0, Lv6/d;->m:Lv6/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lv6/d;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lv6/d;->n:Lv6/p;

    iget-object v1, v0, Lv6/p;->n:Lv6/c;

    iget-object p0, p0, Lv6/d;->m:Lv6/l;

    invoke-virtual {v1, p0}, Lv6/c;->b(Lv6/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lv6/l;->m:Lv6/l;

    iget-object v3, p0, Lv6/l;->n:Lv6/l;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iput-object v3, v1, Lv6/c;->l:Lv6/a;

    goto :goto_0

    :cond_0
    iput-object v3, v2, Lv6/l;->n:Lv6/l;

    iput-object v4, p0, Lv6/l;->m:Lv6/l;

    :goto_0
    if-nez v3, :cond_1

    iput-object v2, v1, Lv6/c;->m:Lv6/a;

    goto :goto_1

    :cond_1
    iput-object v2, v3, Lv6/l;->m:Lv6/l;

    iput-object v4, p0, Lv6/l;->n:Lv6/l;

    :cond_2
    :goto_1
    invoke-virtual {v0, p0}, Lv6/p;->e(Lv6/l;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lv6/d;->n:Lv6/p;

    iget-object v1, v0, Lv6/p;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const/4 v4, 0x1

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    iget-object p0, p0, Lv6/d;->m:Lv6/l;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv6/n;

    invoke-virtual {v1}, Lv6/n;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lv6/p;->n:Lv6/c;

    invoke-virtual {v1, p0}, Lv6/c;->d(Lv6/a;)Z

    invoke-virtual {v0}, Lv6/p;->d()V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
