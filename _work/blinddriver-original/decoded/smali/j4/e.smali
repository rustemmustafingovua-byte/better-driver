.class public final synthetic Lj4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lj4/e;->l:I

    iput-object p1, p0, Lj4/e;->m:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lj4/e;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lh/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lh/a;-><init>(I)V

    sget-object v1, Lj4/c;->a:Ld7/g;

    const/4 v2, 0x0

    iget-object p0, p0, Lj4/e;->m:Landroid/content/Context;

    invoke-static {p0, v0, v1, v2}, Lj4/c;->t(Landroid/content/Context;Ljava/util/concurrent/Executor;Lj4/b;Z)V

    return-void

    :pswitch_0
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v0, Lj4/e;

    const/4 v1, 0x1

    iget-object p0, p0, Lj4/e;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lj4/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
