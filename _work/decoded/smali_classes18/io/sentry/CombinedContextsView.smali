.class public final Lio/sentry/CombinedContextsView;
.super Lio/sentry/protocol/Contexts;
.source "CombinedContextsView.java"


# static fields
.field private static final serialVersionUID:J = 0x31c400cf892b8527L


# instance fields
.field private final currentContexts:Lio/sentry/protocol/Contexts;

.field private final defaultScopeType:Lio/sentry/ScopeType;

.field private final globalContexts:Lio/sentry/protocol/Contexts;

.field private final isolationContexts:Lio/sentry/protocol/Contexts;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/Contexts;Lio/sentry/protocol/Contexts;Lio/sentry/protocol/Contexts;Lio/sentry/ScopeType;)V
    .locals 0
    .param p1, "globalContexts"    # Lio/sentry/protocol/Contexts;
    .param p2, "isolationContexts"    # Lio/sentry/protocol/Contexts;
    .param p3, "currentContexts"    # Lio/sentry/protocol/Contexts;
    .param p4, "defaultScopeType"    # Lio/sentry/ScopeType;

    .line 35
    invoke-direct {p0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 36
    iput-object p1, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    .line 37
    iput-object p2, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    .line 38
    iput-object p3, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    .line 39
    iput-object p4, p0, Lio/sentry/CombinedContextsView;->defaultScopeType:Lio/sentry/ScopeType;

    .line 40
    return-void
.end method

.method private getDefaultContexts()Lio/sentry/protocol/Contexts;
    .locals 2

    .line 61
    sget-object v0, Lio/sentry/CombinedContextsView$1;->$SwitchMap$io$sentry$ScopeType:[I

    iget-object v1, p0, Lio/sentry/CombinedContextsView;->defaultScopeType:Lio/sentry/ScopeType;

    invoke-virtual {v1}, Lio/sentry/ScopeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    return-object v0

    .line 67
    :pswitch_0
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    return-object v0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    return-object v0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mergeContexts()Lio/sentry/protocol/Contexts;
    .locals 2

    .line 333
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 334
    .local v0, "allContexts":Lio/sentry/protocol/Contexts;
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->putAll(Lio/sentry/protocol/Contexts;)V

    .line 335
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->putAll(Lio/sentry/protocol/Contexts;)V

    .line 336
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->putAll(Lio/sentry/protocol/Contexts;)V

    .line 337
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 298
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->clear()V

    .line 299
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    .line 269
    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    .line 270
    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 268
    :goto_1
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->mergeContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    .local v0, "current":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 277
    return-object v0

    .line 279
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v1, p1}, Lio/sentry/protocol/Contexts;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 280
    .local v1, "isolation":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 281
    return-object v1

    .line 283
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v2, p1}, Lio/sentry/protocol/Contexts;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getApp()Lio/sentry/protocol/App;
    .locals 3

    .line 75
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v0

    .line 76
    .local v0, "current":Lio/sentry/protocol/App;
    if-eqz v0, :cond_0

    .line 77
    return-object v0

    .line 79
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v1

    .line 80
    .local v1, "isolation":Lio/sentry/protocol/App;
    if-eqz v1, :cond_1

    .line 81
    return-object v1

    .line 83
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v2

    return-object v2
.end method

.method public getBrowser()Lio/sentry/protocol/Browser;
    .locals 3

    .line 93
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getBrowser()Lio/sentry/protocol/Browser;

    move-result-object v0

    .line 94
    .local v0, "current":Lio/sentry/protocol/Browser;
    if-eqz v0, :cond_0

    .line 95
    return-object v0

    .line 97
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getBrowser()Lio/sentry/protocol/Browser;

    move-result-object v1

    .line 98
    .local v1, "isolation":Lio/sentry/protocol/Browser;
    if-eqz v1, :cond_1

    .line 99
    return-object v1

    .line 101
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getBrowser()Lio/sentry/protocol/Browser;

    move-result-object v2

    return-object v2
.end method

.method public getDevice()Lio/sentry/protocol/Device;
    .locals 3

    .line 111
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v0

    .line 112
    .local v0, "current":Lio/sentry/protocol/Device;
    if-eqz v0, :cond_0

    .line 113
    return-object v0

    .line 115
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v1

    .line 116
    .local v1, "isolation":Lio/sentry/protocol/Device;
    if-eqz v1, :cond_1

    .line 117
    return-object v1

    .line 119
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v2

    return-object v2
.end method

.method public getFeatureFlags()Lio/sentry/protocol/FeatureFlags;
    .locals 3

    .line 233
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getFeatureFlags()Lio/sentry/protocol/FeatureFlags;

    move-result-object v0

    .line 234
    .local v0, "current":Lio/sentry/protocol/FeatureFlags;
    if-eqz v0, :cond_0

    .line 235
    return-object v0

    .line 237
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getFeatureFlags()Lio/sentry/protocol/FeatureFlags;

    move-result-object v1

    .line 238
    .local v1, "isolation":Lio/sentry/protocol/FeatureFlags;
    if-eqz v1, :cond_1

    .line 239
    return-object v1

    .line 241
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getFeatureFlags()Lio/sentry/protocol/FeatureFlags;

    move-result-object v2

    return-object v2
.end method

.method public getGpu()Lio/sentry/protocol/Gpu;
    .locals 3

    .line 165
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getGpu()Lio/sentry/protocol/Gpu;

    move-result-object v0

    .line 166
    .local v0, "current":Lio/sentry/protocol/Gpu;
    if-eqz v0, :cond_0

    .line 167
    return-object v0

    .line 169
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getGpu()Lio/sentry/protocol/Gpu;

    move-result-object v1

    .line 170
    .local v1, "isolation":Lio/sentry/protocol/Gpu;
    if-eqz v1, :cond_1

    .line 171
    return-object v1

    .line 173
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getGpu()Lio/sentry/protocol/Gpu;

    move-result-object v2

    return-object v2
.end method

.method public getOperatingSystem()Lio/sentry/protocol/OperatingSystem;
    .locals 3

    .line 129
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v0

    .line 130
    .local v0, "current":Lio/sentry/protocol/OperatingSystem;
    if-eqz v0, :cond_0

    .line 131
    return-object v0

    .line 133
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v1

    .line 134
    .local v1, "isolation":Lio/sentry/protocol/OperatingSystem;
    if-eqz v1, :cond_1

    .line 135
    return-object v1

    .line 137
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v2

    return-object v2
.end method

.method public getResponse()Lio/sentry/protocol/Response;
    .locals 3

    .line 183
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getResponse()Lio/sentry/protocol/Response;

    move-result-object v0

    .line 184
    .local v0, "current":Lio/sentry/protocol/Response;
    if-eqz v0, :cond_0

    .line 185
    return-object v0

    .line 187
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getResponse()Lio/sentry/protocol/Response;

    move-result-object v1

    .line 188
    .local v1, "isolation":Lio/sentry/protocol/Response;
    if-eqz v1, :cond_1

    .line 189
    return-object v1

    .line 191
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getResponse()Lio/sentry/protocol/Response;

    move-result-object v2

    return-object v2
.end method

.method public getRuntime()Lio/sentry/protocol/SentryRuntime;
    .locals 3

    .line 147
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getRuntime()Lio/sentry/protocol/SentryRuntime;

    move-result-object v0

    .line 148
    .local v0, "current":Lio/sentry/protocol/SentryRuntime;
    if-eqz v0, :cond_0

    .line 149
    return-object v0

    .line 151
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getRuntime()Lio/sentry/protocol/SentryRuntime;

    move-result-object v1

    .line 152
    .local v1, "isolation":Lio/sentry/protocol/SentryRuntime;
    if-eqz v1, :cond_1

    .line 153
    return-object v1

    .line 155
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getRuntime()Lio/sentry/protocol/SentryRuntime;

    move-result-object v2

    return-object v2
.end method

.method public getSize()I
    .locals 1

    .line 258
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->size()I

    move-result v0

    return v0
.end method

.method public getSpring()Lio/sentry/protocol/Spring;
    .locals 3

    .line 214
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getSpring()Lio/sentry/protocol/Spring;

    move-result-object v0

    .line 215
    .local v0, "current":Lio/sentry/protocol/Spring;
    if-eqz v0, :cond_0

    .line 216
    return-object v0

    .line 218
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getSpring()Lio/sentry/protocol/Spring;

    move-result-object v1

    .line 219
    .local v1, "isolation":Lio/sentry/protocol/Spring;
    if-eqz v1, :cond_1

    .line 220
    return-object v1

    .line 222
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getSpring()Lio/sentry/protocol/Spring;

    move-result-object v2

    return-object v2
.end method

.method public getTrace()Lio/sentry/SpanContext;
    .locals 3

    .line 44
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v0

    .line 45
    .local v0, "current":Lio/sentry/SpanContext;
    if-eqz v0, :cond_0

    .line 46
    return-object v0

    .line 48
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v1

    .line 49
    .local v1, "isolation":Lio/sentry/SpanContext;
    if-eqz v1, :cond_1

    .line 50
    return-object v1

    .line 52
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v2

    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 263
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->mergeContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 288
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lio/sentry/protocol/Contexts;)V
    .locals 1
    .param p1, "contexts"    # Lio/sentry/protocol/Contexts;

    .line 329
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->putAll(Lio/sentry/protocol/Contexts;)V

    .line 330
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 324
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->putAll(Ljava/util/Map;)V

    .line 325
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 293
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->mergeContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Contexts;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 315
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 319
    invoke-virtual {p0, p1, p2}, Lio/sentry/CombinedContextsView;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setApp(Lio/sentry/protocol/App;)V
    .locals 1
    .param p1, "app"    # Lio/sentry/protocol/App;

    .line 88
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    .line 89
    return-void
.end method

.method public setBrowser(Lio/sentry/protocol/Browser;)V
    .locals 1
    .param p1, "browser"    # Lio/sentry/protocol/Browser;

    .line 106
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->setBrowser(Lio/sentry/protocol/Browser;)V

    .line 107
    return-void
.end method

.method public setDevice(Lio/sentry/protocol/Device;)V
    .locals 1
    .param p1, "device"    # Lio/sentry/protocol/Device;

    .line 124
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    .line 125
    return-void
.end method

.method public setFeatureFlags(Lio/sentry/protocol/FeatureFlags;)V
    .locals 1
    .param p1, "spring"    # Lio/sentry/protocol/FeatureFlags;

    .line 248
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->setFeatureFlags(Lio/sentry/protocol/FeatureFlags;)V

    .line 249
    return-void
.end method

.method public setGpu(Lio/sentry/protocol/Gpu;)V
    .locals 1
    .param p1, "gpu"    # Lio/sentry/protocol/Gpu;

    .line 178
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->setGpu(Lio/sentry/protocol/Gpu;)V

    .line 179
    return-void
.end method

.method public setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V
    .locals 1
    .param p1, "operatingSystem"    # Lio/sentry/protocol/OperatingSystem;

    .line 142
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V

    .line 143
    return-void
.end method

.method public setResponse(Lio/sentry/protocol/Response;)V
    .locals 1
    .param p1, "response"    # Lio/sentry/protocol/Response;

    .line 209
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->setResponse(Lio/sentry/protocol/Response;)V

    .line 210
    return-void
.end method

.method public setRuntime(Lio/sentry/protocol/SentryRuntime;)V
    .locals 1
    .param p1, "runtime"    # Lio/sentry/protocol/SentryRuntime;

    .line 160
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->setRuntime(Lio/sentry/protocol/SentryRuntime;)V

    .line 161
    return-void
.end method

.method public setSpring(Lio/sentry/protocol/Spring;)V
    .locals 1
    .param p1, "spring"    # Lio/sentry/protocol/Spring;

    .line 227
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->setSpring(Lio/sentry/protocol/Spring;)V

    .line 228
    return-void
.end method

.method public setTrace(Lio/sentry/SpanContext;)V
    .locals 1
    .param p1, "traceContext"    # Lio/sentry/SpanContext;

    .line 57
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 58
    return-void
.end method

.method public size()I
    .locals 1

    .line 253
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->mergeContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->size()I

    move-result v0

    return v0
.end method

.method public withResponse(Lio/sentry/util/HintUtils$SentryConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/util/HintUtils$SentryConsumer<",
            "Lio/sentry/protocol/Response;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p1, "callback":Lio/sentry/util/HintUtils$SentryConsumer;, "Lio/sentry/util/HintUtils$SentryConsumer<Lio/sentry/protocol/Response;>;"
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getResponse()Lio/sentry/protocol/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->currentContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->withResponse(Lio/sentry/util/HintUtils$SentryConsumer;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getResponse()Lio/sentry/protocol/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->isolationContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->withResponse(Lio/sentry/util/HintUtils$SentryConsumer;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getResponse()Lio/sentry/protocol/Response;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->globalContexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->withResponse(Lio/sentry/util/HintUtils$SentryConsumer;)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0}, Lio/sentry/CombinedContextsView;->getDefaultContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->withResponse(Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 205
    :goto_0
    return-void
.end method
