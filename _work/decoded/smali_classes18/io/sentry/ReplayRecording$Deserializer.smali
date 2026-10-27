.class public final Lio/sentry/ReplayRecording$Deserializer;
.super Ljava/lang/Object;
.source "ReplayRecording.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ReplayRecording;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/ReplayRecording;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ReplayRecording;
    .locals 22
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Lio/sentry/ReplayRecording;

    invoke-direct {v2}, Lio/sentry/ReplayRecording;-><init>()V

    .line 113
    .local v2, "replay":Lio/sentry/ReplayRecording;
    const/4 v3, 0x0

    .line 114
    .local v3, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 115
    .local v4, "segmentId":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 117
    .local v5, "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    invoke-interface {v0}, Lio/sentry/ObjectReader;->beginObject()V

    .line 118
    :goto_0
    invoke-interface {v0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v6

    sget-object v7, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    const/4 v9, 0x0

    if-ne v6, v7, :cond_2

    .line 119
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "nextName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v7, "segment_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v8, v9

    goto :goto_2

    :goto_1
    const/4 v8, -0x1

    :goto_2
    packed-switch v8, :pswitch_data_1

    .line 125
    if-nez v3, :cond_1

    .line 126
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v3, v7

    goto :goto_3

    .line 122
    :pswitch_1
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v4

    .line 123
    goto :goto_4

    .line 128
    :cond_1
    :goto_3
    invoke-interface {v0, v1, v3, v6}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 131
    .end local v6    # "nextName":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 132
    :cond_2
    invoke-interface {v0}, Lio/sentry/ObjectReader;->endObject()V

    .line 136
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lio/sentry/ObjectReader;->setLenient(Z)V

    .line 137
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 138
    .local v7, "events":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, v9}, Lio/sentry/ObjectReader;->setLenient(Z)V

    .line 141
    if-eqz v7, :cond_c

    .line 142
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v10

    .line 143
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 144
    .local v11, "event":Ljava/lang/Object;
    instance-of v12, v11, Ljava/util/Map;

    if-eqz v12, :cond_a

    .line 145
    move-object v12, v11

    check-cast v12, Ljava/util/Map;

    .line 146
    .local v12, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v13, Lio/sentry/util/MapObjectReader;

    invoke-direct {v13, v12}, Lio/sentry/util/MapObjectReader;-><init>(Ljava/util/Map;)V

    .line 147
    .local v13, "mapReader":Lio/sentry/ObjectReader;
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 148
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 149
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 150
    .local v16, "value":Ljava/lang/Object;
    const-string v8, "type"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 151
    invoke-static {}, Lio/sentry/rrweb/RRWebEventType;->values()[Lio/sentry/rrweb/RRWebEventType;

    move-result-object v8

    move-object/from16 v17, v16

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aget-object v8, v8, v17

    .line 152
    .local v8, "type":Lio/sentry/rrweb/RRWebEventType;
    sget-object v17, Lio/sentry/ReplayRecording$1;->$SwitchMap$io$sentry$rrweb$RRWebEventType:[I

    invoke-virtual {v8}, Lio/sentry/rrweb/RRWebEventType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    const-string v9, "Unsupported rrweb event type %s"

    const-string v0, "data"

    packed-switch v17, :pswitch_data_2

    .line 225
    move-object/from16 v20, v5

    move-object/from16 v17, v6

    .end local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .end local v6    # "key":Ljava/lang/String;
    .local v17, "key":Ljava/lang/String;
    .local v20, "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v0, v9, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 195
    .end local v17    # "key":Ljava/lang/String;
    .end local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .restart local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .restart local v6    # "key":Ljava/lang/String;
    :pswitch_2
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 196
    .local v0, "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_3

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 199
    :cond_3
    move-object/from16 v17, v6

    .end local v6    # "key":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    const-string v6, "tag"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 200
    .local v6, "tag":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 201
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    move-object/from16 v19, v0

    .end local v0    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v19, "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_7

    .end local v19    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_0
    move-object/from16 v19, v0

    .end local v0    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "breadcrumb"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_8

    .end local v19    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_1
    move-object/from16 v19, v0

    .end local v0    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "video"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    .end local v19    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_2
    move-object/from16 v19, v0

    .end local v0    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "performanceSpan"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_8

    :cond_4
    :goto_7
    const/4 v0, -0x1

    :goto_8
    packed-switch v0, :pswitch_data_3

    .line 219
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    move-object/from16 v20, v6

    .end local v6    # "tag":Ljava/lang/String;
    .local v20, "tag":Ljava/lang/String;
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v0, v9, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 214
    .end local v20    # "tag":Ljava/lang/String;
    .restart local v6    # "tag":Ljava/lang/String;
    :pswitch_3
    new-instance v0, Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;-><init>()V

    .line 215
    invoke-virtual {v0, v13, v1}, Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebSpanEvent;

    move-result-object v0

    .line 216
    .local v0, "spanEvent":Lio/sentry/rrweb/RRWebEvent;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    move-object/from16 v20, v6

    goto :goto_9

    .line 208
    .end local v0    # "spanEvent":Lio/sentry/rrweb/RRWebEvent;
    :pswitch_4
    new-instance v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;-><init>()V

    .line 210
    invoke-virtual {v0, v13, v1}, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    move-result-object v0

    .line 211
    .local v0, "breadcrumbEvent":Lio/sentry/rrweb/RRWebEvent;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    move-object/from16 v20, v6

    goto :goto_9

    .line 203
    .end local v0    # "breadcrumbEvent":Lio/sentry/rrweb/RRWebEvent;
    :pswitch_5
    new-instance v0, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;-><init>()V

    .line 204
    invoke-virtual {v0, v13, v1}, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebVideoEvent;

    move-result-object v0

    .line 205
    .local v0, "videoEvent":Lio/sentry/rrweb/RRWebEvent;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v20, v6

    .line 221
    .end local v0    # "videoEvent":Lio/sentry/rrweb/RRWebEvent;
    .end local v6    # "tag":Ljava/lang/String;
    .restart local v20    # "tag":Ljava/lang/String;
    :goto_9
    move-object/from16 v20, v5

    goto/16 :goto_b

    .line 200
    .end local v19    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "tag":Ljava/lang/String;
    .local v0, "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v0

    move-object/from16 v20, v6

    .end local v0    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "tag":Ljava/lang/String;
    .restart local v19    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "tag":Ljava/lang/String;
    move-object/from16 v20, v5

    goto/16 :goto_b

    .line 189
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "tag":Ljava/lang/String;
    .local v6, "key":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v17, v6

    .end local v6    # "key":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    new-instance v0, Lio/sentry/rrweb/RRWebMetaEvent$Deserializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebMetaEvent$Deserializer;-><init>()V

    .line 190
    invoke-virtual {v0, v13, v1}, Lio/sentry/rrweb/RRWebMetaEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebMetaEvent;

    move-result-object v0

    .line 191
    .local v0, "metaEvent":Lio/sentry/rrweb/RRWebEvent;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    move-object/from16 v20, v5

    goto/16 :goto_b

    .line 155
    .end local v0    # "metaEvent":Lio/sentry/rrweb/RRWebEvent;
    .end local v17    # "key":Ljava/lang/String;
    .restart local v6    # "key":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v17, v6

    .line 156
    .end local v6    # "key":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 157
    .local v0, "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_6

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 160
    :cond_6
    nop

    .line 162
    const-string v6, "source"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 163
    .local v6, "sourceInt":Ljava/lang/Integer;
    if-eqz v6, :cond_7

    .line 165
    invoke-static {}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->values()[Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v9, v9, v19

    .line 166
    .local v9, "source":Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;
    sget-object v19, Lio/sentry/ReplayRecording$1;->$SwitchMap$io$sentry$rrweb$RRWebIncrementalSnapshotEvent$IncrementalSource:[I

    invoke-virtual {v9}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_4

    .line 180
    move-object/from16 v19, v0

    .end local v0    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v19, "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    move-object/from16 v20, v5

    .end local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .local v20, "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    const-string v5, "Unsupported rrweb incremental snapshot type %s"

    move-object/from16 v21, v6

    .end local v6    # "sourceInt":Ljava/lang/Integer;
    .local v21, "sourceInt":Ljava/lang/Integer;
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v0, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 174
    .end local v19    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .end local v21    # "sourceInt":Ljava/lang/Integer;
    .restart local v0    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .restart local v6    # "sourceInt":Ljava/lang/Integer;
    :pswitch_8
    move-object/from16 v19, v0

    .end local v0    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;-><init>()V

    .line 176
    invoke-virtual {v0, v13, v1}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionMoveEvent;

    move-result-object v0

    .line 177
    .local v0, "interactionMoveEvent":Lio/sentry/rrweb/RRWebInteractionMoveEvent;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    goto :goto_a

    .line 168
    .end local v19    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v0, "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_9
    move-object/from16 v19, v0

    .end local v0    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;-><init>()V

    .line 170
    invoke-virtual {v0, v13, v1}, Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionEvent;

    move-result-object v0

    .line 171
    .local v0, "interactionEvent":Lio/sentry/rrweb/RRWebInteractionEvent;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .line 186
    .end local v0    # "interactionEvent":Lio/sentry/rrweb/RRWebInteractionEvent;
    .end local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .end local v6    # "sourceInt":Ljava/lang/Integer;
    .end local v9    # "source":Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;
    .restart local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .restart local v21    # "sourceInt":Ljava/lang/Integer;
    :goto_a
    goto :goto_b

    .line 163
    .end local v19    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .end local v21    # "sourceInt":Ljava/lang/Integer;
    .local v0, "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .restart local v6    # "sourceInt":Ljava/lang/Integer;
    :cond_7
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .end local v0    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .end local v6    # "sourceInt":Ljava/lang/Integer;
    .restart local v19    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .restart local v21    # "sourceInt":Ljava/lang/Integer;
    goto :goto_b

    .line 150
    .end local v8    # "type":Lio/sentry/rrweb/RRWebEventType;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "incrementalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .end local v21    # "sourceInt":Ljava/lang/Integer;
    .restart local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .local v6, "key":Ljava/lang/String;
    :cond_8
    move-object/from16 v20, v5

    move-object/from16 v17, v6

    .line 229
    .end local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "value":Ljava/lang/Object;
    .restart local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    :goto_b
    move-object/from16 v0, p1

    move-object/from16 v5, v20

    const/4 v6, 0x1

    const/4 v9, 0x0

    goto/16 :goto_6

    .line 147
    .end local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .restart local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    :cond_9
    move-object/from16 v20, v5

    .end local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .restart local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    goto :goto_c

    .line 144
    .end local v12    # "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "mapReader":Lio/sentry/ObjectReader;
    .end local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .restart local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    :cond_a
    move-object/from16 v20, v5

    .line 231
    .end local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .end local v11    # "event":Ljava/lang/Object;
    .restart local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    :goto_c
    move-object/from16 v0, p1

    move-object/from16 v5, v20

    const/4 v6, 0x1

    const/4 v9, 0x0

    goto/16 :goto_5

    .line 143
    .end local v20    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    .restart local v5    # "payload":Ljava/util/List;, "Ljava/util/List<Lio/sentry/rrweb/RRWebEvent;>;"
    :cond_b
    move-object/from16 v20, v5

    .line 234
    :cond_c
    invoke-virtual {v2, v4}, Lio/sentry/ReplayRecording;->setSegmentId(Ljava/lang/Integer;)V

    .line 235
    invoke-virtual {v2, v5}, Lio/sentry/ReplayRecording;->setPayload(Ljava/util/List;)V

    .line 236
    invoke-virtual {v2, v3}, Lio/sentry/ReplayRecording;->setUnknown(Ljava/util/Map;)V

    .line 237
    return-object v2

    :pswitch_data_0
    .packed-switch 0x403ba1a7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0xd791c66 -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x41f73003 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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

    .line 103
    invoke-virtual {p0, p1, p2}, Lio/sentry/ReplayRecording$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ReplayRecording;

    move-result-object p1

    return-object p1
.end method
