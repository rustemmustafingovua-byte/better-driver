.class public final Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;
.super Ljava/lang/Object;
.source "SentryFileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/instrumentation/file/SentryFileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 4
    .param p0, "delegate"    # Ljava/io/FileInputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 141
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 142
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->isTracingEnabled(Lio/sentry/IScopes;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-static {p1, p0, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$000(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    goto :goto_0

    .line 144
    :cond_0
    move-object v1, p0

    .line 142
    :goto_0
    return-object v1
.end method

.method static create(Ljava/io/FileInputStream;Ljava/io/File;Lio/sentry/IScopes;)Ljava/io/FileInputStream;
    .locals 3
    .param p0, "delegate"    # Ljava/io/FileInputStream;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 160
    invoke-static {p2}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->isTracingEnabled(Lio/sentry/IScopes;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-static {p1, p0, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$000(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    goto :goto_0

    .line 162
    :cond_0
    move-object v0, p0

    .line 160
    :goto_0
    return-object v0
.end method

.method public static create(Ljava/io/FileInputStream;Ljava/io/FileDescriptor;)Ljava/io/FileInputStream;
    .locals 4
    .param p0, "delegate"    # Ljava/io/FileInputStream;
    .param p1, "descriptor"    # Ljava/io/FileDescriptor;

    .line 149
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 150
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->isTracingEnabled(Lio/sentry/IScopes;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream;

    invoke-static {p1, p0, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$200(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    goto :goto_0

    .line 152
    :cond_0
    move-object v1, p0

    .line 150
    :goto_0
    return-object v1
.end method

.method public static create(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 4
    .param p0, "delegate"    # Ljava/io/FileInputStream;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 132
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 133
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->isTracingEnabled(Lio/sentry/IScopes;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v3, p0, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;->access$000(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V

    goto :goto_1

    .line 135
    :cond_1
    move-object v1, p0

    .line 133
    :goto_1
    return-object v1
.end method

.method private static isTracingEnabled(Lio/sentry/IScopes;)Z
    .locals 2
    .param p0, "scopes"    # Lio/sentry/IScopes;

    .line 166
    invoke-interface {p0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 167
    .local v0, "options":Lio/sentry/SentryOptions;
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v1

    return v1
.end method
