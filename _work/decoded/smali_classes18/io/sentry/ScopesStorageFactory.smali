.class public final Lio/sentry/ScopesStorageFactory;
.super Ljava/lang/Object;
.source "ScopesStorageFactory.java"


# static fields
.field private static final OTEL_SCOPES_STORAGE:Ljava/lang/String; = "io.sentry.opentelemetry.OtelContextScopesStorage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lio/sentry/util/LoadClass;Lio/sentry/ILogger;)Lio/sentry/IScopesStorage;
    .locals 1
    .param p0, "loadClass"    # Lio/sentry/util/LoadClass;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 18
    invoke-static {p0, p1}, Lio/sentry/ScopesStorageFactory;->createInternal(Lio/sentry/util/LoadClass;Lio/sentry/ILogger;)Lio/sentry/IScopesStorage;

    move-result-object v0

    .line 19
    .local v0, "storage":Lio/sentry/IScopesStorage;
    invoke-interface {v0}, Lio/sentry/IScopesStorage;->init()V

    .line 20
    return-object v0
.end method

.method private static createInternal(Lio/sentry/util/LoadClass;Lio/sentry/ILogger;)Lio/sentry/IScopesStorage;
    .locals 3
    .param p0, "loadClass"    # Lio/sentry/util/LoadClass;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 25
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    const-string v0, "io.sentry.opentelemetry.OtelContextScopesStorage"

    invoke-virtual {p0, v0, p1}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p0, v0, p1}, Lio/sentry/util/LoadClass;->loadClass(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;

    move-result-object v0

    .line 28
    .local v0, "otelScopesStorageClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 30
    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    .local v1, "otelScopesStorage":Ljava/lang/Object;
    instance-of v2, v1, Lio/sentry/IScopesStorage;

    if-eqz v2, :cond_0

    .line 33
    move-object v2, v1

    check-cast v2, Lio/sentry/IScopesStorage;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 32
    .end local v1    # "otelScopesStorage":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    goto :goto_1

    .line 39
    :catch_1
    move-exception v1

    goto :goto_0

    .line 37
    :catch_2
    move-exception v1

    goto :goto_0

    .line 35
    :catch_3
    move-exception v1

    .line 43
    :goto_0
    nop

    .line 48
    .end local v0    # "otelScopesStorageClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    new-instance v0, Lio/sentry/DefaultScopesStorage;

    invoke-direct {v0}, Lio/sentry/DefaultScopesStorage;-><init>()V

    return-object v0
.end method
