.class public final Lio/sentry/MonitorContexts$Deserializer;
.super Ljava/lang/Object;
.source "MonitorContexts.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MonitorContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/MonitorContexts;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorContexts;
    .locals 3
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    new-instance v0, Lio/sentry/MonitorContexts;

    invoke-direct {v0}, Lio/sentry/MonitorContexts;-><init>()V

    .line 71
    .local v0, "contexts":Lio/sentry/MonitorContexts;
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 72
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_2

    .line 73
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "nextName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v2, "trace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 79
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v2

    .line 80
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v0, v1, v2}, Lio/sentry/MonitorContexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 76
    .end local v2    # "object":Ljava/lang/Object;
    :pswitch_1
    new-instance v2, Lio/sentry/SpanContext$Deserializer;

    invoke-direct {v2}, Lio/sentry/SpanContext$Deserializer;-><init>()V

    invoke-virtual {v2, p1, p2}, Lio/sentry/SpanContext$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/MonitorContexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 77
    nop

    .line 85
    .end local v1    # "nextName":Ljava/lang/String;
    :cond_1
    :goto_3
    goto :goto_0

    .line 86
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 87
    return-object v0

    :pswitch_data_0
    .packed-switch 0x697f145
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
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

    .line 65
    invoke-virtual {p0, p1, p2}, Lio/sentry/MonitorContexts$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorContexts;

    move-result-object p1

    return-object p1
.end method
