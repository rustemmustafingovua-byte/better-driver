.class public final Lu2/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu2/y;

.field public final b:Lu2/s;


# direct methods
.method public constructor <init>(Lu2/y;Lu2/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu2/a0;->a:Lu2/y;

    iput-object p2, p0, Lu2/a0;->b:Lu2/s;

    return-void
.end method


# virtual methods
.method public final a(Lu2/x;Lu2/x;)V
    .locals 1

    iget-object v0, p0, Lu2/a0;->a:Lu2/y;

    iget-object v0, v0, Lu2/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/a0;

    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lu2/a0;->b:Lu2/s;

    invoke-interface {p0, p1, p2}, Lu2/s;->f(Lu2/x;Lu2/x;)V

    :cond_0
    return-void
.end method
