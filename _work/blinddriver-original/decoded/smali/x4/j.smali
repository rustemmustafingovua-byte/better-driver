.class public final Lx4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx4/j;

.field public static final b:Lx4/j;

.field public static final c:Lx4/x;

.field public static final d:Lx4/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lx4/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx4/j;->a:Lx4/j;

    new-instance v0, Lx4/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx4/j;->b:Lx4/j;

    new-instance v0, Lx4/x;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lx4/x;-><init>(I)V

    sput-object v0, Lx4/j;->c:Lx4/x;

    new-instance v0, Lx4/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx4/x;-><init>(I)V

    sput-object v0, Lx4/j;->d:Lx4/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lx4/s;
    .locals 3

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerClassName"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParameters"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lx4/s;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{\n                Class.\u2026class.java)\n            }"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-class v1, Landroid/content/Context;

    const-class v2, Landroidx/work/WorkerParameters;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "{\n                val co\u2026Parameters)\n            }"

    invoke-static {p1, p3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lx4/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p3, p1, Lx4/s;->d:Z

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "WorkerFactory ("

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") returned an instance of a ListenableWorker ("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p1

    sget-object p3, Lx4/b0;->a:Ljava/lang/String;

    const-string v0, "Could not instantiate "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2, p0}, Lx4/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catchall_1
    move-exception p0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p1

    sget-object p3, Lx4/b0;->a:Ljava/lang/String;

    const-string v0, "Invalid class: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2, p0}, Lx4/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
