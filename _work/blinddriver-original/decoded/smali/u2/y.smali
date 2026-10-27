.class public final Lu2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu2/s;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lu2/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu2/y;->a:Lu2/s;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lu2/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method
