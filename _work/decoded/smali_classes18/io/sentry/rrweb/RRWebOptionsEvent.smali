.class public final Lio/sentry/rrweb/RRWebOptionsEvent;
.super Lio/sentry/rrweb/RRWebEvent;
.source "RRWebOptionsEvent.java"

# interfaces
.implements Lio/sentry/JsonSerializable;
.implements Lio/sentry/JsonUnknown;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebOptionsEvent$JsonKeys;,
        Lio/sentry/rrweb/RRWebOptionsEvent$Deserializer;
    }
.end annotation


# static fields
.field public static final EVENT_TAG:Ljava/lang/String; = "options"


# instance fields
.field private dataUnknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private optionsPayload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->Custom:Lio/sentry/rrweb/RRWebEventType;

    invoke-direct {p0, v0}, Lio/sentry/rrweb/RRWebEvent;-><init>(Lio/sentry/rrweb/RRWebEventType;)V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    .line 34
    const-string v0, "options"

    iput-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->tag:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 6
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 38
    invoke-direct {p0}, Lio/sentry/rrweb/RRWebOptionsEvent;-><init>()V

    .line 39
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    .line 40
    .local v0, "sdkVersion":Lio/sentry/protocol/SdkVersion;
    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    const-string v2, "nativeSdkName"

    invoke-virtual {v0}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    const-string v2, "nativeSdkVersion"

    invoke-virtual {v0}, Lio/sentry/protocol/SdkVersion;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v1

    .line 45
    .local v1, "replayOptions":Lio/sentry/SentryReplayOptions;
    iget-object v2, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    const-string v3, "errorSampleRate"

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getOnErrorSampleRate()Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v2, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    const-string v3, "sessionSampleRate"

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getSessionSampleRate()Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v2, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    .line 49
    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.widget.ImageView"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 47
    const-string v4, "maskAllImages"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v2, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    .line 52
    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.widget.TextView"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 50
    const-string v4, "maskAllText"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v2, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getQuality()Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->serializedName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quality"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v2, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    const-string v3, "maskedViewClasses"

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v2, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    const-string v3, "unmaskedViewClasses"

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getUnmaskViewClasses()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getScreenshotStrategy()Lio/sentry/ScreenshotStrategyType;

    move-result-object v2

    sget-object v3, Lio/sentry/ScreenshotStrategyType;->PIXEL_COPY:Lio/sentry/ScreenshotStrategyType;

    if-ne v2, v3, :cond_1

    .line 59
    const-string v2, "pixelCopy"

    goto :goto_0

    .line 60
    :cond_1
    const-string v2, "canvas"

    :goto_0
    nop

    .line 61
    .local v2, "screenshotStrategy":Ljava/lang/String;
    iget-object v3, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    const-string v4, "screenshotStrategy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v3, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    .line 63
    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getNetworkDetailAllowUrls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 62
    const-string v5, "networkDetailHasUrls"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getNetworkDetailAllowUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    iget-object v3, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    const-string v4, "networkDetailAllowUrls"

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getNetworkDetailAllowUrls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v3, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    const-string v4, "networkRequestHeaders"

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getNetworkRequestHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v3, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    const-string v4, "networkResponseHeaders"

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getNetworkResponseHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v3, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->isNetworkCaptureBodies()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "networkCaptureBodies"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getNetworkDetailDenyUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    iget-object v3, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    const-string v4, "networkDetailDenyUrls"

    invoke-virtual {v1}, Lio/sentry/SentryReplayOptions;->getNetworkDetailDenyUrls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_2
    return-void
.end method

.method static synthetic access$002(Lio/sentry/rrweb/RRWebOptionsEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/rrweb/RRWebOptionsEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->tag:Ljava/lang/String;

    return-object p1
.end method

.method private serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 139
    const-string v0, "tag"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 140
    const-string v0, "payload"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 141
    invoke-direct {p0, p1, p2}, Lio/sentry/rrweb/RRWebOptionsEvent;->serializePayload(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 142
    iget-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->dataUnknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->dataUnknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->dataUnknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 146
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 147
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 150
    return-void
.end method

.method private serializePayload(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 155
    iget-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 158
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 159
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 160
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 162
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 163
    return-void
.end method


# virtual methods
.method public getDataUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->dataUnknown:Ljava/util/Map;

    return-object v0
.end method

.method public getOptionsPayload()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 123
    new-instance v0, Lio/sentry/rrweb/RRWebEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Serializer;->serialize(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 124
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 125
    invoke-direct {p0, p1, p2}, Lio/sentry/rrweb/RRWebOptionsEvent;->serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 126
    iget-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 130
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 131
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 134
    return-void
.end method

.method public setDataUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "dataUnknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->dataUnknown:Ljava/util/Map;

    .line 102
    return-void
.end method

.method public setOptionsPayload(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "optionsPayload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->optionsPayload:Ljava/util/Map;

    .line 94
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->tag:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/rrweb/RRWebOptionsEvent;->unknown:Ljava/util/Map;

    .line 112
    return-void
.end method
