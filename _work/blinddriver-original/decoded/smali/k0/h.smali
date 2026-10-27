.class public final Lk0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Lr0/a1;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lk0/h;->a:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lk0/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lr0/a1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lr0/a1;-><init>(F)V

    iput-object p1, p0, Lk0/h;->c:Lr0/a1;

    return-void
.end method
