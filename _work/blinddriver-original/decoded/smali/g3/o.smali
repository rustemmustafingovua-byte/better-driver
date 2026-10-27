.class public final Lg3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final m:Lv7/a;

.field public final n:Lu9/g;


# direct methods
.method public synthetic constructor <init>(Lv7/a;Lu9/g;I)V
    .locals 0

    iput p3, p0, Lg3/o;->l:I

    iput-object p1, p0, Lg3/o;->m:Lv7/a;

    iput-object p2, p0, Lg3/o;->n:Lu9/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg3/o;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg3/o;->m:Lv7/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    iget-object v2, p0, Lg3/o;->n:Lu9/g;

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lu9/g;->j(Ljava/lang/Throwable;)Z

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    invoke-virtual {v2, v0}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    invoke-virtual {v2, p0}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    return-void

    :catch_1
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lg3/o;->m:Lv7/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    iget-object p0, p0, Lg3/o;->n:Lu9/g;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu9/g;->j(Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_3
    :try_start_2
    invoke-static {v0}, Lg3/h;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu9/g;->resumeWith(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :goto_3
    return-void

    :cond_4
    new-instance p0, Lt8/f;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    const-class v0, Lj9/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj9/n;->l(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
