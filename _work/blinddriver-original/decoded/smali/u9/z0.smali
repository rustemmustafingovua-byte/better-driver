.class public final Lu9/z0;
.super Lu9/g;
.source "SourceFile"


# instance fields
.field public final t:Lu9/l;


# direct methods
.method public constructor <init>(Ly8/c;Lu9/l;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lu9/g;-><init>(ILy8/c;)V

    iput-object p2, p0, Lu9/z0;->t:Lu9/l;

    return-void
.end method


# virtual methods
.method public final p(Lu9/c1;)Ljava/lang/Throwable;
    .locals 1

    iget-object p0, p0, Lu9/z0;->t:Lu9/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lu9/b1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lu9/b1;

    invoke-virtual {v0}, Lu9/b1;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p0, Lu9/n;

    if-eqz v0, :cond_1

    check-cast p0, Lu9/n;

    iget-object p0, p0, Lu9/n;->a:Ljava/lang/Throwable;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lu9/c1;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public final y()Ljava/lang/String;
    .locals 0

    const-string p0, "AwaitContinuation"

    return-object p0
.end method
