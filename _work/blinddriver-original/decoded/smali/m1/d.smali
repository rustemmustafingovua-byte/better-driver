.class public final Lm1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/t;


# instance fields
.field public final a:Lf2/y;

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public final d:Lm1/c;


# direct methods
.method public constructor <init>(Lf2/y;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/d;->a:Lf2/y;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lm1/d;->b:Ljava/lang/Object;

    new-instance v0, Lm1/c;

    invoke-direct {v0, p0}, Lm1/c;-><init>(Lm1/d;)V

    iput-object v0, p0, Lm1/d;->d:Lm1/c;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lm1/d;->c:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm1/d;->c:Z

    :cond_0
    new-instance v0, Lf2/n2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lf2/n2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lp1/b;)V
    .locals 1

    iget-object p0, p0, Lm1/d;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lp1/b;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lp1/b;->s:Z

    invoke-virtual {p1}, Lp1/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Lp1/b;
    .locals 2

    iget-object v0, p0, Lm1/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lm1/d;->a:Lf2/y;

    invoke-virtual {p0}, Landroid/view/View;->getUniqueDrawingId()J

    new-instance p0, Lp1/c;

    invoke-direct {p0}, Lp1/c;-><init>()V

    new-instance v1, Lp1/b;

    invoke-direct {v1, p0}, Lp1/b;-><init>(Lp1/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
