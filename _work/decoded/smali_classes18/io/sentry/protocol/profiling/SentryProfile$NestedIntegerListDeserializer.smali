.class final Lio/sentry/protocol/profiling/SentryProfile$NestedIntegerListDeserializer;
.super Ljava/lang/Object;
.source "SentryProfile.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/profiling/SentryProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NestedIntegerListDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/protocol/profiling/SentryProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/protocol/profiling/SentryProfile$1;

    .line 155
    invoke-direct {p0}, Lio/sentry/protocol/profiling/SentryProfile$NestedIntegerListDeserializer;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 155
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/profiling/SentryProfile$NestedIntegerListDeserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/util/List;
    .locals 3
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ObjectReader;",
            "Lio/sentry/ILogger;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginArray()V

    .line 162
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v1, "innerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginArray()V

    .line 165
    :goto_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endArray()V

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v1    # "innerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 171
    :cond_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endArray()V

    .line 172
    return-object v0
.end method
