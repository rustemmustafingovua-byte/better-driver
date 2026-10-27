.class public Lf8/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lf8/h3;

.field public static final c:Lf8/h3;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/h3;

    invoke-direct {v0}, Lf8/h3;-><init>()V

    sput-object v0, Lf8/h3;->c:Lf8/h3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lf8/h3;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lf8/h3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lf8/h3;->c:Lf8/h3;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lf8/h3;->a:Ljava/util/Map;

    return-void

    .line 4
    :cond_0
    iget-object p1, p1, Lf8/h3;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lf8/h3;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lf8/h3;
    .locals 4

    sget-object v0, Lf8/h3;->b:Lf8/h3;

    if-nez v0, :cond_3

    const-class v1, Lf8/h3;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lf8/h3;->b:Lf8/h3;

    if-nez v0, :cond_2

    const-string v0, "getEmptyRegistry"

    sget-object v2, Lf8/g3;->a:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/h3;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    :catch_0
    :goto_0
    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    :try_start_2
    sget-object v0, Lf8/h3;->c:Lf8/h3;

    :goto_1
    sput-object v0, Lf8/h3;->b:Lf8/h3;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v1

    return-object v0

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    return-object v0
.end method
