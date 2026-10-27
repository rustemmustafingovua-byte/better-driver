.class public final Lf2/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/k2;


# instance fields
.field public final a:Lu2/y;


# direct methods
.method public constructor <init>(Lu2/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/n1;->a:Lu2/y;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lf2/n1;->a:Lu2/y;

    iget-object p0, p0, Lu2/y;->a:Lu2/s;

    invoke-interface {p0}, Lu2/s;->h()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lf2/n1;->a:Lu2/y;

    iget-object v0, p0, Lu2/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/a0;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lu2/y;->a:Lu2/s;

    invoke-interface {p0}, Lu2/s;->c()V

    :cond_0
    return-void
.end method
