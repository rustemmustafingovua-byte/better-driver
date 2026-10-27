.class public abstract Lx4/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/work/WorkerParameters;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, -0x100

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lx4/s;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lx4/s;->a:Landroid/content/Context;

    iput-object p2, p0, Lx4/s;->b:Landroidx/work/WorkerParameters;

    return-void
.end method


# virtual methods
.method public abstract a()Lg3/l;
.end method

.method public abstract b()Lg3/l;
.end method
