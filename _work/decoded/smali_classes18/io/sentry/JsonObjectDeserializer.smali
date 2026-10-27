.class public final Lio/sentry/JsonObjectDeserializer;
.super Ljava/lang/Object;
.source "JsonObjectDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/JsonObjectDeserializer$Token;,
        Lio/sentry/JsonObjectDeserializer$TokenArray;,
        Lio/sentry/JsonObjectDeserializer$TokenMap;,
        Lio/sentry/JsonObjectDeserializer$TokenName;,
        Lio/sentry/JsonObjectDeserializer$NextValue;,
        Lio/sentry/JsonObjectDeserializer$TokenPrimitive;
    }
.end annotation


# instance fields
.field private final tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/sentry/JsonObjectDeserializer$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    return-void
.end method

.method private getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;
    .locals 2

    .line 188
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_0
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/JsonObjectDeserializer$Token;

    return-object v0
.end method

.method private handleArrayOrMapEnd()Z
    .locals 6

    .line 131
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->hasOneToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v0

    .line 135
    .local v0, "arrayOrMapToken":Lio/sentry/JsonObjectDeserializer$Token;
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->popCurrentToken()V

    .line 137
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/JsonObjectDeserializer$TokenName;

    if-eqz v1, :cond_1

    .line 138
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    check-cast v1, Lio/sentry/JsonObjectDeserializer$TokenName;

    .line 139
    .local v1, "tokenName":Lio/sentry/JsonObjectDeserializer$TokenName;
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->popCurrentToken()V

    .line 141
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v2

    check-cast v2, Lio/sentry/JsonObjectDeserializer$TokenMap;

    .line 142
    .local v2, "tokenMap":Lio/sentry/JsonObjectDeserializer$TokenMap;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 143
    iget-object v3, v2, Lio/sentry/JsonObjectDeserializer$TokenMap;->value:Ljava/util/HashMap;

    iget-object v4, v1, Lio/sentry/JsonObjectDeserializer$TokenName;->value:Ljava/lang/String;

    invoke-interface {v0}, Lio/sentry/JsonObjectDeserializer$Token;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    .end local v1    # "tokenName":Lio/sentry/JsonObjectDeserializer$TokenName;
    .end local v2    # "tokenMap":Lio/sentry/JsonObjectDeserializer$TokenMap;
    :cond_1
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/JsonObjectDeserializer$TokenArray;

    if-eqz v1, :cond_2

    .line 146
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    check-cast v1, Lio/sentry/JsonObjectDeserializer$TokenArray;

    .line 147
    .local v1, "tokenArray":Lio/sentry/JsonObjectDeserializer$TokenArray;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 148
    iget-object v2, v1, Lio/sentry/JsonObjectDeserializer$TokenArray;->value:Ljava/util/ArrayList;

    invoke-interface {v0}, Lio/sentry/JsonObjectDeserializer$Token;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    .end local v1    # "tokenArray":Lio/sentry/JsonObjectDeserializer$TokenArray;
    :cond_2
    :goto_0
    nop

    .line 151
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method private handlePrimitive(Lio/sentry/JsonObjectDeserializer$NextValue;)Z
    .locals 5
    .param p1, "callback"    # Lio/sentry/JsonObjectDeserializer$NextValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Lio/sentry/JsonObjectDeserializer$NextValue;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "primitive":Ljava/lang/Object;
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Lio/sentry/JsonObjectDeserializer$TokenPrimitive;

    invoke-direct {v1, v0}, Lio/sentry/JsonObjectDeserializer$TokenPrimitive;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lio/sentry/JsonObjectDeserializer;->pushCurrentToken(Lio/sentry/JsonObjectDeserializer$Token;)V

    .line 159
    const/4 v1, 0x1

    return v1

    .line 160
    :cond_0
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/JsonObjectDeserializer$TokenName;

    if-eqz v1, :cond_1

    .line 161
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    check-cast v1, Lio/sentry/JsonObjectDeserializer$TokenName;

    .line 162
    .local v1, "tokenNameNumber":Lio/sentry/JsonObjectDeserializer$TokenName;
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->popCurrentToken()V

    .line 164
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v2

    check-cast v2, Lio/sentry/JsonObjectDeserializer$TokenMap;

    .line 165
    .local v2, "tokenMapNumber":Lio/sentry/JsonObjectDeserializer$TokenMap;
    iget-object v3, v2, Lio/sentry/JsonObjectDeserializer$TokenMap;->value:Ljava/util/HashMap;

    iget-object v4, v1, Lio/sentry/JsonObjectDeserializer$TokenName;->value:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "tokenNameNumber":Lio/sentry/JsonObjectDeserializer$TokenName;
    .end local v2    # "tokenMapNumber":Lio/sentry/JsonObjectDeserializer$TokenMap;
    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/JsonObjectDeserializer$TokenArray;

    if-eqz v1, :cond_2

    .line 168
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v1

    check-cast v1, Lio/sentry/JsonObjectDeserializer$TokenArray;

    .line 169
    .local v1, "tokenArrayNumber":Lio/sentry/JsonObjectDeserializer$TokenArray;
    iget-object v2, v1, Lio/sentry/JsonObjectDeserializer$TokenArray;->value:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    .end local v1    # "tokenArrayNumber":Lio/sentry/JsonObjectDeserializer$TokenArray;
    :cond_2
    :goto_0
    nop

    .line 171
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method private hasOneToken()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$parse$0(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 1
    .param p0, "reader"    # Lio/sentry/JsonObjectReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lio/sentry/JsonObjectReader;->nextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$parse$2(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 1
    .param p0, "reader"    # Lio/sentry/JsonObjectReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lio/sentry/JsonObjectReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$parse$3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method private nextNumber(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 5
    .param p1, "reader"    # Lio/sentry/JsonObjectReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDouble()D

    move-result-wide v0

    .line 180
    .local v0, "value":D
    double-to-int v2, v0

    .line 181
    .local v2, "intValue":I
    int-to-double v3, v2

    cmpl-double v3, v3, v0

    if-nez v3, :cond_0

    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 184
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3
.end method

.method private parse(Lio/sentry/JsonObjectReader;)V
    .locals 3
    .param p1, "reader"    # Lio/sentry/JsonObjectReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "done":Z
    :goto_0
    if-nez v0, :cond_0

    .line 86
    sget-object v1, Lio/sentry/JsonObjectDeserializer$1;->$SwitchMap$io$sentry$vendor$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/vendor/gson/stream/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 124
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 120
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextNull()V

    .line 121
    new-instance v1, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v1}, Lio/sentry/JsonObjectDeserializer;->handlePrimitive(Lio/sentry/JsonObjectDeserializer$NextValue;)Z

    move-result v0

    .line 122
    goto :goto_1

    .line 117
    :pswitch_2
    new-instance v1, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda2;-><init>(Lio/sentry/JsonObjectReader;)V

    invoke-direct {p0, v1}, Lio/sentry/JsonObjectDeserializer;->handlePrimitive(Lio/sentry/JsonObjectDeserializer$NextValue;)Z

    move-result v0

    .line 118
    goto :goto_1

    .line 112
    :pswitch_3
    new-instance v1, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda1;-><init>(Lio/sentry/JsonObjectDeserializer;Lio/sentry/JsonObjectReader;)V

    invoke-direct {p0, v1}, Lio/sentry/JsonObjectDeserializer;->handlePrimitive(Lio/sentry/JsonObjectDeserializer$NextValue;)Z

    move-result v0

    .line 113
    goto :goto_1

    .line 109
    :pswitch_4
    new-instance v1, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lio/sentry/JsonObjectDeserializer$$ExternalSyntheticLambda0;-><init>(Lio/sentry/JsonObjectReader;)V

    invoke-direct {p0, v1}, Lio/sentry/JsonObjectDeserializer;->handlePrimitive(Lio/sentry/JsonObjectDeserializer$NextValue;)Z

    move-result v0

    .line 110
    goto :goto_1

    .line 104
    :pswitch_5
    new-instance v1, Lio/sentry/JsonObjectDeserializer$TokenName;

    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/JsonObjectDeserializer$TokenName;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lio/sentry/JsonObjectDeserializer;->pushCurrentToken(Lio/sentry/JsonObjectDeserializer$Token;)V

    .line 105
    goto :goto_1

    .line 100
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    .line 101
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->handleArrayOrMapEnd()Z

    move-result v0

    .line 102
    goto :goto_1

    .line 96
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 97
    new-instance v1, Lio/sentry/JsonObjectDeserializer$TokenMap;

    invoke-direct {v1, v2}, Lio/sentry/JsonObjectDeserializer$TokenMap;-><init>(Lio/sentry/JsonObjectDeserializer$1;)V

    invoke-direct {p0, v1}, Lio/sentry/JsonObjectDeserializer;->pushCurrentToken(Lio/sentry/JsonObjectDeserializer$Token;)V

    .line 98
    goto :goto_1

    .line 92
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endArray()V

    .line 93
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->handleArrayOrMapEnd()Z

    move-result v0

    .line 94
    goto :goto_1

    .line 88
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginArray()V

    .line 89
    new-instance v1, Lio/sentry/JsonObjectDeserializer$TokenArray;

    invoke-direct {v1, v2}, Lio/sentry/JsonObjectDeserializer$TokenArray;-><init>(Lio/sentry/JsonObjectDeserializer$1;)V

    invoke-direct {p0, v1}, Lio/sentry/JsonObjectDeserializer;->pushCurrentToken(Lio/sentry/JsonObjectDeserializer$Token;)V

    .line 90
    nop

    .line 125
    :goto_1
    goto :goto_0

    .line 128
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method private popCurrentToken()V
    .locals 2

    .line 199
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method private pushCurrentToken(Lio/sentry/JsonObjectDeserializer$Token;)V
    .locals 1
    .param p1, "token"    # Lio/sentry/JsonObjectDeserializer$Token;

    .line 195
    iget-object v0, p0, Lio/sentry/JsonObjectDeserializer;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Lio/sentry/JsonObjectReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lio/sentry/JsonObjectDeserializer;->parse(Lio/sentry/JsonObjectReader;)V

    .line 73
    invoke-direct {p0}, Lio/sentry/JsonObjectDeserializer;->getCurrentToken()Lio/sentry/JsonObjectDeserializer$Token;

    move-result-object v0

    .line 74
    .local v0, "root":Lio/sentry/JsonObjectDeserializer$Token;
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lio/sentry/JsonObjectDeserializer$Token;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 77
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic lambda$parse$1$io-sentry-JsonObjectDeserializer(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Lio/sentry/JsonObjectReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Lio/sentry/JsonObjectDeserializer;->nextNumber(Lio/sentry/JsonObjectReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
