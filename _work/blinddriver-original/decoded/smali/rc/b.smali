.class public abstract Lrc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lrc/a;

.field public static final b:Ljava/util/ArrayList;

.field public static volatile c:[Lrc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrc/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lrc/b;->a:Lrc/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lrc/b;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v0, v0, [Lrc/a;

    sput-object v0, Lrc/b;->c:[Lrc/a;

    return-void
.end method

.method public static final varargs a([Lrc/a;)V
    .locals 5

    sget-object v0, Lrc/b;->a:Lrc/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_1

    if-eq v4, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Cannot plant Timber into itself."

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "trees contained null"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lrc/b;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p0, v2, [Lrc/a;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, [Lrc/a;

    sput-object p0, Lrc/b;->c:[Lrc/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method
