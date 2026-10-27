.class public final Lu9/c;
.super Lu9/a;
.source "SourceFile"


# instance fields
.field public final o:Ljava/lang/Thread;

.field public final p:Lu9/o0;


# direct methods
.method public constructor <init>(Ly8/h;Ljava/lang/Thread;Lu9/o0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lu9/a;-><init>(Ly8/h;Z)V

    iput-object p2, p0, Lu9/c;->o:Ljava/lang/Thread;

    iput-object p3, p0, Lu9/c;->p:Lu9/o0;

    return-void
.end method


# virtual methods
.method public final p(Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p0, p0, Lu9/c;->o:Ljava/lang/Thread;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
