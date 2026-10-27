.class public final Lio/sentry/protocol/ViewHierarchyNode$Deserializer;
.super Ljava/lang/Object;
.source "ViewHierarchyNode.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/ViewHierarchyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/ViewHierarchyNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchyNode;
    .locals 4
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lio/sentry/protocol/ViewHierarchyNode;

    invoke-direct {v1}, Lio/sentry/protocol/ViewHierarchyNode;-><init>()V

    .line 212
    .local v1, "node":Lio/sentry/protocol/ViewHierarchyNode;
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 213
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_2

    .line 214
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "visibility"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "children"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_2

    :sswitch_2
    const-string v3, "width"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_3
    const-string v3, "alpha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_4
    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_5
    const-string v3, "tag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_6
    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_7
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_8
    const-string v3, "height"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_9
    const-string v3, "identifier"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_a
    const-string v3, "rendering_system"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 250
    if-nez v0, :cond_1

    .line 251
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    goto :goto_3

    .line 247
    :pswitch_0
    invoke-interface {p1, p2, p0}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/protocol/ViewHierarchyNode;->access$1002(Lio/sentry/protocol/ViewHierarchyNode;Ljava/util/List;)Ljava/util/List;

    .line 248
    goto :goto_4

    .line 244
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/protocol/ViewHierarchyNode;->access$902(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;

    .line 245
    goto :goto_4

    .line 241
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/protocol/ViewHierarchyNode;->access$802(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    goto :goto_4

    .line 238
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/protocol/ViewHierarchyNode;->access$702(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;

    .line 239
    goto :goto_4

    .line 235
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/protocol/ViewHierarchyNode;->access$602(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;

    .line 236
    goto :goto_4

    .line 232
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/protocol/ViewHierarchyNode;->access$502(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;

    .line 233
    goto :goto_4

    .line 229
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/protocol/ViewHierarchyNode;->access$402(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Double;)Ljava/lang/Double;

    .line 230
    goto :goto_4

    .line 226
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/protocol/ViewHierarchyNode;->access$302(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    goto :goto_4

    .line 223
    :pswitch_8
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/protocol/ViewHierarchyNode;->access$202(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    goto :goto_4

    .line 220
    :pswitch_9
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/protocol/ViewHierarchyNode;->access$102(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    goto :goto_4

    .line 217
    :pswitch_a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/protocol/ViewHierarchyNode;->access$002(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    goto :goto_4

    .line 253
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v0, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 256
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 257
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 259
    invoke-virtual {v1, v0}, Lio/sentry/protocol/ViewHierarchyNode;->setUnknown(Ljava/util/Map;)V

    .line 260
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a64acbe -> :sswitch_a
        -0x60775357 -> :sswitch_9
        -0x48c76ed9 -> :sswitch_8
        0x78 -> :sswitch_7
        0x79 -> :sswitch_6
        0x1bf9a -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x589b15e -> :sswitch_3
        0x6be2dc6 -> :sswitch_2
        0x62ea5dff -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 204
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/ViewHierarchyNode$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchyNode;

    move-result-object p1

    return-object p1
.end method
