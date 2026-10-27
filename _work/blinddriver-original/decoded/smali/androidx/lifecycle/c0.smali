.class public abstract Landroidx/lifecycle/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Li/f;

.field public c:I

.field public d:Z

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:Z

.field public final j:Landroidx/lifecycle/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/c0;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/c0;->a:Ljava/lang/Object;

    .line 11
    new-instance v0, Li/f;

    invoke-direct {v0}, Li/f;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/c0;->b:Li/f;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/lifecycle/c0;->c:I

    .line 13
    sget-object v0, Landroidx/lifecycle/c0;->k:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/c0;->f:Ljava/lang/Object;

    .line 14
    new-instance v1, Landroidx/lifecycle/a0;

    invoke-direct {v1, p0}, Landroidx/lifecycle/a0;-><init>(Landroidx/lifecycle/c0;)V

    iput-object v1, p0, Landroidx/lifecycle/c0;->j:Landroidx/lifecycle/a0;

    .line 15
    iput-object v0, p0, Landroidx/lifecycle/c0;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Landroidx/lifecycle/c0;->g:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    sget-object p1, Lx4/j;->d:Lx4/x;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/c0;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Li/f;

    invoke-direct {v0}, Li/f;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/c0;->b:Li/f;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/lifecycle/c0;->c:I

    .line 5
    sget-object v1, Landroidx/lifecycle/c0;->k:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/c0;->f:Ljava/lang/Object;

    .line 6
    new-instance v1, Landroidx/lifecycle/a0;

    invoke-direct {v1, p0}, Landroidx/lifecycle/a0;-><init>(Landroidx/lifecycle/c0;)V

    iput-object v1, p0, Landroidx/lifecycle/c0;->j:Landroidx/lifecycle/a0;

    .line 7
    iput-object p1, p0, Landroidx/lifecycle/c0;->e:Ljava/lang/Object;

    .line 8
    iput v0, p0, Landroidx/lifecycle/c0;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lh/b;->N()Lh/b;

    move-result-object v0

    iget-object v0, v0, Lh/b;->o:Lh/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke "

    const-string v2, " on a background thread"

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/b0;)V
    .locals 1

    iget-boolean v0, p1, Landroidx/lifecycle/b0;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroidx/lifecycle/b0;->b:I

    iget p0, p0, Landroidx/lifecycle/c0;->g:I

    if-lt v0, p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput p0, p1, Landroidx/lifecycle/b0;->b:I

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract c(Ljava/lang/Object;)V
.end method
