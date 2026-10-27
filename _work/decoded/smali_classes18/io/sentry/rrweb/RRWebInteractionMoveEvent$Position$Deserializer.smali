.class public final Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position$Deserializer;
.super Ljava/lang/Object;
.source "RRWebInteractionMoveEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;",
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
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;
    .locals 5
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;

    invoke-direct {v1}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;-><init>()V

    .line 113
    .local v1, "position":Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_2

    .line 114
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "timeOffset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_1
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_2
    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 129
    if-nez v0, :cond_1

    .line 130
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    goto :goto_3

    .line 126
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLong()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->access$302(Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;J)J

    .line 127
    goto :goto_4

    .line 123
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextFloat()F

    move-result v3

    invoke-static {v1, v3}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->access$202(Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;F)F

    .line 124
    goto :goto_4

    .line 120
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextFloat()F

    move-result v3

    invoke-static {v1, v3}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->access$102(Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;F)F

    .line 121
    goto :goto_4

    .line 117
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextInt()I

    move-result v3

    invoke-static {v1, v3}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->access$002(Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;I)I

    .line 118
    goto :goto_4

    .line 132
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v0, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 135
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v1, v0}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->setUnknown(Ljava/util/Map;)V

    .line 138
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 139
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_3
        0x79 -> :sswitch_2
        0xd1b -> :sswitch_1
        0x27aa95c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 103
    invoke-virtual {p0, p1, p2}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;

    move-result-object p1

    return-object p1
.end method
