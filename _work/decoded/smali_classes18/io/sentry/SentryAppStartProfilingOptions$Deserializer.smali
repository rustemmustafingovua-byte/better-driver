.class public final Lio/sentry/SentryAppStartProfilingOptions$Deserializer;
.super Ljava/lang/Object;
.source "SentryAppStartProfilingOptions.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryAppStartProfilingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryAppStartProfilingOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryAppStartProfilingOptions;
    .locals 9
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 240
    new-instance v0, Lio/sentry/SentryAppStartProfilingOptions;

    invoke-direct {v0}, Lio/sentry/SentryAppStartProfilingOptions;-><init>()V

    .line 241
    .local v0, "options":Lio/sentry/SentryAppStartProfilingOptions;
    const/4 v1, 0x0

    .line 243
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 244
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "profile_sample_rate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "enable_legacy_profiling"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "trace_sample_rate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "profiling_traces_hz"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_4
    const-string v3, "continuous_profile_sampled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_5
    const-string v3, "profile_lifecycle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_6
    const-string v3, "profile_sampled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_2

    :sswitch_7
    const-string v3, "is_start_profiler_on_app_start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_2

    :sswitch_8
    const-string v3, "is_profiling_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_9
    const-string v3, "is_continuous_profiling_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_a
    const-string v3, "profiling_traces_dir_path"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_b
    const-string v3, "trace_sampled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_c
    const-string v3, "is_enable_app_start_profiling"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 331
    if-nez v1, :cond_1

    .line 332
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto/16 :goto_4

    .line 325
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    .line 326
    .local v3, "enableLegacyProfiling":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 327
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lio/sentry/SentryAppStartProfilingOptions;->enableLegacyProfiling:Z

    goto/16 :goto_5

    .line 319
    .end local v3    # "enableLegacyProfiling":Ljava/lang/Boolean;
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    .line 320
    .local v3, "isStartProfilerOnAppStart":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 321
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lio/sentry/SentryAppStartProfilingOptions;->isStartProfilerOnAppStart:Z

    goto/16 :goto_5

    .line 313
    .end local v3    # "isStartProfilerOnAppStart":Ljava/lang/Boolean;
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    .line 314
    .local v3, "isEnableAppStartProfiling":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 315
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lio/sentry/SentryAppStartProfilingOptions;->isEnableAppStartProfiling:Z

    goto/16 :goto_5

    .line 307
    .end local v3    # "isEnableAppStartProfiling":Ljava/lang/Boolean;
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    .line 308
    .local v3, "profilingTracesHz":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 309
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    goto/16 :goto_5

    .line 295
    .end local v3    # "profilingTracesHz":Ljava/lang/Integer;
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "profileLifecycle":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 298
    :try_start_0
    invoke-static {v3}, Lio/sentry/ProfileLifecycle;->valueOf(Ljava/lang/String;)Lio/sentry/ProfileLifecycle;

    move-result-object v5

    iput-object v5, v0, Lio/sentry/SentryAppStartProfilingOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 299
    :catch_0
    move-exception v5

    .line 300
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error when deserializing ProfileLifecycle: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p2, v6, v7, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    goto :goto_5

    .line 289
    .end local v3    # "profileLifecycle":Ljava/lang/String;
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    .line 290
    .local v3, "isContinuousProfilingEnabled":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 291
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lio/sentry/SentryAppStartProfilingOptions;->isContinuousProfilingEnabled:Z

    goto :goto_5

    .line 283
    .end local v3    # "isContinuousProfilingEnabled":Ljava/lang/Boolean;
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    .line 284
    .local v3, "isProfilingEnabled":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 285
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    goto :goto_5

    .line 277
    .end local v3    # "isProfilingEnabled":Ljava/lang/Boolean;
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "profilingTracesDirPath":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 279
    iput-object v3, v0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    goto :goto_5

    .line 271
    .end local v3    # "profilingTracesDirPath":Ljava/lang/String;
    :pswitch_8
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    .line 272
    .local v3, "traceSampleRate":Ljava/lang/Double;
    if-eqz v3, :cond_2

    .line 273
    iput-object v3, v0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

    goto :goto_5

    .line 265
    .end local v3    # "traceSampleRate":Ljava/lang/Double;
    :pswitch_9
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    .line 266
    .local v3, "traceSampled":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    goto :goto_5

    .line 259
    .end local v3    # "traceSampled":Ljava/lang/Boolean;
    :pswitch_a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    .line 260
    .local v3, "continuousProfileSampled":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 261
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lio/sentry/SentryAppStartProfilingOptions;->continuousProfileSampled:Z

    goto :goto_5

    .line 253
    .end local v3    # "continuousProfileSampled":Ljava/lang/Boolean;
    :pswitch_b
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    .line 254
    .local v3, "profileSampleRate":Ljava/lang/Double;
    if-eqz v3, :cond_2

    .line 255
    iput-object v3, v0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    goto :goto_5

    .line 247
    .end local v3    # "profileSampleRate":Ljava/lang/Double;
    :pswitch_c
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    .line 248
    .local v3, "profileSampled":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 249
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    goto :goto_5

    .line 334
    .end local v3    # "profileSampled":Ljava/lang/Boolean;
    :cond_1
    :goto_4
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 337
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_5
    goto/16 :goto_0

    .line 338
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/SentryAppStartProfilingOptions;->setUnknown(Ljava/util/Map;)V

    .line 339
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 340
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x2fc0721c -> :sswitch_c
        -0x21c03d00 -> :sswitch_b
        -0x1ad38c31 -> :sswitch_a
        -0x1a0bb613 -> :sswitch_9
        -0x6f7b3ad -> :sswitch_8
        -0x63526b8 -> :sswitch_7
        -0x426489c -> :sswitch_6
        0x17ed2c54 -> :sswitch_5
        0x5381e234 -> :sswitch_4
        0x5e67e24a -> :sswitch_3
        0x62951a5b -> :sswitch_2
        0x6784fa6c -> :sswitch_1
        0x7f963cbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryAppStartProfilingOptions$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryAppStartProfilingOptions;

    move-result-object p1

    return-object p1
.end method
