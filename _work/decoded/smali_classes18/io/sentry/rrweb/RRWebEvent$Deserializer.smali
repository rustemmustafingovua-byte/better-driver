.class public final Lio/sentry/rrweb/RRWebEvent$Deserializer;
.super Ljava/lang/Object;
.source "RRWebEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeValue(Lio/sentry/rrweb/RRWebEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z
    .locals 3
    .param p1, "baseEvent"    # Lio/sentry/rrweb/RRWebEvent;
    .param p2, "nextName"    # Ljava/lang/String;
    .param p3, "reader"    # Lio/sentry/ObjectReader;
    .param p4, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "timestamp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 90
    return v1

    .line 87
    :pswitch_0
    invoke-interface {p3}, Lio/sentry/ObjectReader;->nextLong()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lio/sentry/rrweb/RRWebEvent;->access$102(Lio/sentry/rrweb/RRWebEvent;J)J

    .line 88
    return v2

    .line 82
    :pswitch_1
    new-instance v0, Lio/sentry/rrweb/RRWebEventType$Deserializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebEventType$Deserializer;-><init>()V

    .line 84
    invoke-interface {p3, p4, v0}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/rrweb/RRWebEventType;

    .line 83
    const-string v1, ""

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/rrweb/RRWebEventType;

    .line 82
    invoke-static {p1, v0}, Lio/sentry/rrweb/RRWebEvent;->access$002(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/rrweb/RRWebEventType;)Lio/sentry/rrweb/RRWebEventType;

    .line 85
    return v2

    :sswitch_data_0
    .sparse-switch
        0x368f3a -> :sswitch_1
        0x3492916 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
