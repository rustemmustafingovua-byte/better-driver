.class public final La5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final m:I

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILa5/j;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La5/i;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, La5/i;->n:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, La5/i;->o:Ljava/lang/Object;

    .line 4
    iput p1, p0, La5/i;->m:I

    return-void
.end method

.method public constructor <init>(Lv6/p;Lv6/l;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, La5/i;->l:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/i;->o:Ljava/lang/Object;

    .line 6
    iput p3, p0, La5/i;->m:I

    .line 7
    iput-object p2, p0, La5/i;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, La5/i;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, La5/i;->o:Ljava/lang/Object;

    check-cast v0, Lv6/p;

    iget-object v1, v0, Lv6/p;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget v4, p0, La5/i;->m:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    iget-object p0, p0, La5/i;->n:Ljava/lang/Object;

    check-cast p0, Lv6/l;

    iget-object v1, v0, Lv6/p;->n:Lv6/c;

    invoke-virtual {v1, p0}, Lv6/c;->b(Lv6/a;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lv6/c;->m:Lv6/a;

    if-eq p0, v2, :cond_3

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

    :goto_1
    iget-object v2, v1, Lv6/c;->m:Lv6/a;

    iput-object p0, v1, Lv6/c;->m:Lv6/a;

    if-nez v2, :cond_2

    iput-object p0, v1, Lv6/c;->l:Lv6/a;

    goto :goto_2

    :cond_2
    move-object v1, v2

    check-cast v1, Lv6/l;

    iput-object p0, v1, Lv6/l;->n:Lv6/l;

    check-cast v2, Lv6/l;

    iput-object v2, p0, Lv6/l;->m:Lv6/l;

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lv6/p;->d()V

    return-void

    :pswitch_0
    iget-object v0, p0, La5/i;->n:Ljava/lang/Object;

    check-cast v0, La5/j;

    iget-object v1, p0, La5/i;->o:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget p0, p0, La5/i;->m:I

    invoke-virtual {v0, v1, p0}, La5/j;->a(Landroid/content/Intent;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
