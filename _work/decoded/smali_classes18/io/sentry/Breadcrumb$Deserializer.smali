.class public final Lio/sentry/Breadcrumb$Deserializer;
.super Ljava/lang/Object;
.source "Breadcrumb.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Breadcrumb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/Breadcrumb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/Breadcrumb;
    .locals 13
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 922
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 923
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    .line 924
    .local v0, "timestamp":Ljava/util/Date;
    const/4 v1, 0x0

    .line 925
    .local v1, "message":Ljava/lang/String;
    const/4 v2, 0x0

    .line 926
    .local v2, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 927
    .local v3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 928
    .local v4, "category":Ljava/lang/String;
    const/4 v5, 0x0

    .line 929
    .local v5, "origin":Ljava/lang/String;
    const/4 v6, 0x0

    .line 931
    .local v6, "level":Lio/sentry/SentryLevel;
    const/4 v7, 0x0

    .line 932
    .local v7, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v8

    sget-object v9, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v8, v9, :cond_3

    .line 933
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v8

    .line 934
    .local v8, "nextName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x0

    sparse-switch v9, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v9, "message"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :sswitch_1
    const-string v9, "level"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x6

    goto :goto_2

    :sswitch_2
    const-string v9, "timestamp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v10

    goto :goto_2

    :sswitch_3
    const-string v9, "category"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    goto :goto_2

    :sswitch_4
    const-string v9, "type"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    goto :goto_2

    :sswitch_5
    const-string v9, "data"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x3

    goto :goto_2

    :sswitch_6
    const-string v9, "origin"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x5

    goto :goto_2

    :goto_1
    const/4 v9, -0x1

    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 969
    if-nez v7, :cond_1

    .line 970
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v7, v9

    goto :goto_3

    .line 963
    :pswitch_0
    :try_start_0
    new-instance v9, Lio/sentry/SentryLevel$Deserializer;

    invoke-direct {v9}, Lio/sentry/SentryLevel$Deserializer;-><init>()V

    invoke-virtual {v9, p1, p2}, Lio/sentry/SentryLevel$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryLevel;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    .end local v6    # "level":Lio/sentry/SentryLevel;
    .local v9, "level":Lio/sentry/SentryLevel;
    move-object v6, v9

    goto :goto_4

    .line 964
    .end local v9    # "level":Lio/sentry/SentryLevel;
    .restart local v6    # "level":Lio/sentry/SentryLevel;
    :catch_0
    move-exception v9

    .line 965
    .local v9, "exception":Ljava/lang/Exception;
    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v12, "Error when deserializing SentryLevel"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {p2, v11, v9, v12, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    .end local v9    # "exception":Ljava/lang/Exception;
    goto :goto_4

    .line 959
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v5

    .line 960
    goto :goto_4

    .line 956
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    .line 957
    goto :goto_4

    .line 948
    :pswitch_3
    nop

    .line 950
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 949
    invoke-static {v9}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 951
    .local v9, "deserializedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 952
    move-object v3, v9

    goto :goto_4

    .line 945
    .end local v9    # "deserializedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    .line 946
    goto :goto_4

    .line 942
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    .line 943
    goto :goto_4

    .line 936
    :pswitch_6
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v9

    .line 937
    .local v9, "deserializedDate":Ljava/util/Date;
    if-eqz v9, :cond_2

    .line 938
    move-object v0, v9

    goto :goto_4

    .line 972
    .end local v9    # "deserializedDate":Ljava/util/Date;
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v7, v8}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 975
    .end local v8    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 977
    :cond_3
    new-instance v8, Lio/sentry/Breadcrumb;

    invoke-direct {v8, v0}, Lio/sentry/Breadcrumb;-><init>(Ljava/util/Date;)V

    .line 978
    .local v8, "breadcrumb":Lio/sentry/Breadcrumb;
    invoke-static {v8, v1}, Lio/sentry/Breadcrumb;->access$002(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;

    .line 979
    invoke-static {v8, v2}, Lio/sentry/Breadcrumb;->access$102(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;

    .line 980
    if-eqz v3, :cond_4

    .line 981
    invoke-static {v8, v3}, Lio/sentry/Breadcrumb;->access$202(Lio/sentry/Breadcrumb;Ljava/util/Map;)Ljava/util/Map;

    .line 983
    :cond_4
    invoke-static {v8, v4}, Lio/sentry/Breadcrumb;->access$302(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;

    .line 984
    invoke-static {v8, v5}, Lio/sentry/Breadcrumb;->access$402(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;

    .line 985
    invoke-static {v8, v6}, Lio/sentry/Breadcrumb;->access$502(Lio/sentry/Breadcrumb;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;

    .line 987
    invoke-virtual {v8, v7}, Lio/sentry/Breadcrumb;->setUnknown(Ljava/util/Map;)V

    .line 988
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 989
    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x3c1e50da -> :sswitch_6
        0x2eefaa -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x302bcfe -> :sswitch_3
        0x3492916 -> :sswitch_2
        0x6219b84 -> :sswitch_1
        0x38eb0007 -> :sswitch_0
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

    .line 917
    invoke-virtual {p0, p1, p2}, Lio/sentry/Breadcrumb$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/Breadcrumb;

    move-result-object p1

    return-object p1
.end method
