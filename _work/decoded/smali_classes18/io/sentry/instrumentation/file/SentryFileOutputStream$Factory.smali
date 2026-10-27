.class public final Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;
.super Ljava/lang/Object;
.source "SentryFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/instrumentation/file/SentryFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 4
    .param p0, "delegate"    # Ljava/io/FileOutputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 167
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 168
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IScopes;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    const/4 v2, 0x0

    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v3

    invoke-static {p1, v2, p0, v3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    goto :goto_0

    .line 170
    :cond_0
    move-object v1, p0

    .line 168
    :goto_0
    return-object v1
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/io/File;Lio/sentry/IScopes;)Ljava/io/FileOutputStream;
    .locals 3
    .param p0, "delegate"    # Ljava/io/FileOutputStream;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 195
    invoke-static {p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IScopes;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    goto :goto_0

    .line 197
    :cond_0
    move-object v0, p0

    .line 195
    :goto_0
    return-object v0
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/io/File;Z)Ljava/io/FileOutputStream;
    .locals 4
    .param p0, "delegate"    # Ljava/io/FileOutputStream;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 176
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 177
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IScopes;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v2

    invoke-static {p1, p2, p0, v2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    goto :goto_0

    .line 179
    :cond_0
    move-object v1, p0

    .line 177
    :goto_0
    return-object v1
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/io/FileDescriptor;)Ljava/io/FileOutputStream;
    .locals 4
    .param p0, "delegate"    # Ljava/io/FileOutputStream;
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .line 184
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 185
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IScopes;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$200(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    goto :goto_0

    .line 187
    :cond_0
    move-object v1, p0

    .line 185
    :goto_0
    return-object v1
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 6
    .param p0, "delegate"    # Ljava/io/FileOutputStream;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 139
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 140
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IScopes;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    .line 143
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 146
    :goto_0
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v4

    .line 142
    const/4 v5, 0x0

    invoke-static {v3, v5, p0, v4}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    goto :goto_1

    .line 147
    :cond_1
    move-object v1, p0

    .line 140
    :goto_1
    return-object v1
.end method

.method public static create(Ljava/io/FileOutputStream;Ljava/lang/String;Z)Ljava/io/FileOutputStream;
    .locals 5
    .param p0, "delegate"    # Ljava/io/FileOutputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 153
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 154
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;->isTracingEnabled(Lio/sentry/IScopes;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream;

    .line 157
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 160
    :goto_0
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v4

    .line 156
    invoke-static {v3, p2, p0, v4}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V

    goto :goto_1

    .line 161
    :cond_1
    move-object v1, p0

    .line 154
    :goto_1
    return-object v1
.end method

.method private static isTracingEnabled(Lio/sentry/IScopes;)Z
    .locals 2
    .param p0, "scopes"    # Lio/sentry/IScopes;

    .line 201
    invoke-interface {p0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 202
    .local v0, "options":Lio/sentry/SentryOptions;
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v1

    return v1
.end method
