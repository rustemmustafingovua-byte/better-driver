.class public final Lio/sentry/SpanFactoryFactory;
.super Ljava/lang/Object;
.source "SpanFactoryFactory.java"


# static fields
.field private static final OTEL_SPAN_FACTORY:Ljava/lang/String; = "io.sentry.opentelemetry.OtelSpanFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lio/sentry/util/LoadClass;Lio/sentry/ILogger;)Lio/sentry/ISpanFactory;
    .locals 3
    .param p0, "loadClass"    # Lio/sentry/util/LoadClass;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 17
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    const-string v0, "io.sentry.opentelemetry.OtelSpanFactory"

    invoke-virtual {p0, v0, p1}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p0, v0, p1}, Lio/sentry/util/LoadClass;->loadClass(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    .local v0, "otelSpanFactoryClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 22
    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, "otelSpanFactory":Ljava/lang/Object;
    instance-of v2, v1, Lio/sentry/ISpanFactory;

    if-eqz v2, :cond_0

    .line 25
    move-object v2, v1

    check-cast v2, Lio/sentry/ISpanFactory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 24
    .end local v1    # "otelSpanFactory":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    goto :goto_1

    .line 31
    :catch_1
    move-exception v1

    goto :goto_0

    .line 29
    :catch_2
    move-exception v1

    goto :goto_0

    .line 27
    :catch_3
    move-exception v1

    .line 35
    :goto_0
    nop

    .line 40
    .end local v0    # "otelSpanFactoryClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    new-instance v0, Lio/sentry/DefaultSpanFactory;

    invoke-direct {v0}, Lio/sentry/DefaultSpanFactory;-><init>()V

    return-object v0
.end method
