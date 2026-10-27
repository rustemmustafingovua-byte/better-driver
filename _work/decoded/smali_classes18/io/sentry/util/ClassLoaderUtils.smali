.class public final Lio/sentry/util/ClassLoaderUtils;
.super Ljava/lang/Object;
.source "ClassLoaderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classLoaderOrDefault(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 12
    if-nez p0, :cond_1

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 16
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 17
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1

    .line 22
    .end local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    return-object p0
.end method
