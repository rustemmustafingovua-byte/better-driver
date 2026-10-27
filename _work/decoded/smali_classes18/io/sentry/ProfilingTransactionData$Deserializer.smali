.class public final Lio/sentry/ProfilingTransactionData$Deserializer;
.super Ljava/lang/Object;
.source "ProfilingTransactionData.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfilingTransactionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/ProfilingTransactionData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfilingTransactionData;
    .locals 4
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 184
    new-instance v0, Lio/sentry/ProfilingTransactionData;

    invoke-direct {v0}, Lio/sentry/ProfilingTransactionData;-><init>()V

    .line 185
    .local v0, "data":Lio/sentry/ProfilingTransactionData;
    const/4 v1, 0x0

    .line 187
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 188
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "relative_cpu_start_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_1
    const-string v3, "relative_cpu_end_ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_2
    const-string v3, "trace_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_3
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_4
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_5
    const-string v3, "relative_end_ns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_6
    const-string v3, "relative_start_ns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 233
    if-nez v1, :cond_1

    .line 234
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto :goto_3

    .line 227
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    .line 228
    .local v3, "endCpuMs":Ljava/lang/Long;
    if-eqz v3, :cond_2

    .line 229
    invoke-static {v0, v3}, Lio/sentry/ProfilingTransactionData;->access$602(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;

    goto :goto_4

    .line 221
    .end local v3    # "endCpuMs":Ljava/lang/Long;
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    .line 222
    .local v3, "startCpuMs":Ljava/lang/Long;
    if-eqz v3, :cond_2

    .line 223
    invoke-static {v0, v3}, Lio/sentry/ProfilingTransactionData;->access$502(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;

    goto :goto_4

    .line 215
    .end local v3    # "startCpuMs":Ljava/lang/Long;
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    .line 216
    .local v3, "endNs":Ljava/lang/Long;
    if-eqz v3, :cond_2

    .line 217
    invoke-static {v0, v3}, Lio/sentry/ProfilingTransactionData;->access$402(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;

    goto :goto_4

    .line 209
    .end local v3    # "endNs":Ljava/lang/Long;
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    .line 210
    .local v3, "startNs":Ljava/lang/Long;
    if-eqz v3, :cond_2

    .line 211
    invoke-static {v0, v3}, Lio/sentry/ProfilingTransactionData;->access$302(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;

    goto :goto_4

    .line 203
    .end local v3    # "startNs":Ljava/lang/Long;
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 205
    invoke-static {v0, v3}, Lio/sentry/ProfilingTransactionData;->access$202(Lio/sentry/ProfilingTransactionData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 197
    .end local v3    # "name":Ljava/lang/String;
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "traceId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 199
    invoke-static {v0, v3}, Lio/sentry/ProfilingTransactionData;->access$102(Lio/sentry/ProfilingTransactionData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 191
    .end local v3    # "traceId":Ljava/lang/String;
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 193
    invoke-static {v0, v3}, Lio/sentry/ProfilingTransactionData;->access$002(Lio/sentry/ProfilingTransactionData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 236
    .end local v3    # "id":Ljava/lang/String;
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 239
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 240
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/ProfilingTransactionData;->setUnknown(Ljava/util/Map;)V

    .line 241
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 242
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6b2a92b -> :sswitch_6
        -0x50b0384 -> :sswitch_5
        0xd1b -> :sswitch_4
        0x337a8b -> :sswitch_3
        0x4bb73e55 -> :sswitch_2
        0x5d612954 -> :sswitch_1
        0x716221ed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 178
    invoke-virtual {p0, p1, p2}, Lio/sentry/ProfilingTransactionData$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfilingTransactionData;

    move-result-object p1

    return-object p1
.end method
