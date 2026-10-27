.class Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;
.super Ljava/lang/Object;
.source "NetworkBodyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/util/network/NetworkBodyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaferJsonParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;
    }
.end annotation


# static fields
.field private static final MAX_DEPTH:I = 0x64


# instance fields
.field final result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;-><init>(Lio/sentry/util/network/NetworkBodyParser$1;)V

    iput-object v0, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    .line 211
    return-void
.end method

.method static parse(Lio/sentry/vendor/gson/stream/JsonReader;)Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;
    .locals 3
    .param p0, "reader"    # Lio/sentry/vendor/gson/stream/JsonReader;

    .line 215
    new-instance v0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;

    invoke-direct {v0}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;-><init>()V

    .line 216
    .local v0, "parser":Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;
    iget-object v1, v0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->parse(Lio/sentry/vendor/gson/stream/JsonReader;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$002(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, v0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    return-object v1
.end method

.method private parse(Lio/sentry/vendor/gson/stream/JsonReader;I)Ljava/lang/Object;
    .locals 5
    .param p1, "reader"    # Lio/sentry/vendor/gson/stream/JsonReader;
    .param p2, "currentDepth"    # I

    .line 222
    iget-object v0, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    invoke-static {v0}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$100(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 223
    return-object v1

    .line 225
    :cond_0
    const/16 v0, 0x64

    const/4 v2, 0x1

    if-lt p2, v0, :cond_1

    .line 226
    iget-object v0, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    invoke-static {v0, v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$202(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;Z)Z

    .line 227
    return-object v1

    .line 230
    :cond_1
    :try_start_0
    sget-object v0, Lio/sentry/util/network/NetworkBodyParser$1;->$SwitchMap$io$sentry$vendor$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/vendor/gson/stream/JsonToken;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 274
    iget-object v0, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    goto/16 :goto_2

    .line 270
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNull()V

    .line 271
    return-object v1

    .line 267
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 264
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 247
    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 249
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->beginArray()V

    .line 250
    :goto_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    invoke-static {v3}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$100(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 251
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, p1, v3}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->parse(Lio/sentry/vendor/gson/stream/JsonReader;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->endArray()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    nop

    .line 258
    return-object v0

    .line 254
    :catch_0
    move-exception v3

    .line 255
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    invoke-static {v4, v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$102(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;Z)Z

    .line 256
    return-object v0

    .line 232
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 234
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_3
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->beginObject()V

    .line 235
    :goto_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    invoke-static {v3}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$100(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 236
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v4, p2, 0x1

    invoke-direct {p0, p1, v4}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->parse(Lio/sentry/vendor/gson/stream/JsonReader;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    nop

    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 239
    :cond_3
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonReader;->endObject()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 243
    nop

    .line 244
    return-object v0

    .line 240
    :catch_1
    move-exception v3

    .line 241
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v4, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    invoke-static {v4, v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$102(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;Z)Z

    .line 242
    return-object v0

    .line 274
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v0, v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$102(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 275
    return-object v1

    .line 277
    :catch_2
    move-exception v0

    .line 278
    .local v0, "ignored":Ljava/lang/Exception;
    iget-object v3, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->result:Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    invoke-static {v3, v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$102(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;Z)Z

    .line 279
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
