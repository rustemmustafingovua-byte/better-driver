.class public final Landroidx/work/WorkManagerInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt4/b;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WrkMgrInitializer"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/WorkManagerInitializer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    sget-object v0, Landroidx/work/WorkManagerInitializer;->a:Ljava/lang/String;

    const-string v1, "Initializing WorkManager with default configuration."

    invoke-virtual {p0, v0, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lx4/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx4/a;

    invoke-direct {v0, p0}, Lx4/a;-><init>(Lx4/j;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ly4/q;->x:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v1, Ly4/q;->v:Ly4/q;

    if-eqz v1, :cond_1

    sget-object v2, Ly4/q;->w:Ly4/q;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ly4/q;->w:Ly4/q;

    if-nez v2, :cond_2

    invoke-static {v1, v0}, Ly4/s;->k(Landroid/content/Context;Lx4/a;)Ly4/q;

    move-result-object v0

    sput-object v0, Ly4/q;->w:Ly4/q;

    :cond_2
    sget-object v0, Ly4/q;->w:Ly4/q;

    sput-object v0, Ly4/q;->v:Ly4/q;

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Ly4/q;->M(Landroid/content/Context;)Ly4/q;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
