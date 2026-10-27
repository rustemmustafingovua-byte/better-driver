.class public final Lio/sentry/util/network/NetworkBodyParser;
.super Ljava/lang/Object;
.source "NetworkBodyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBytes([BLjava/lang/String;Ljava/lang/String;ILio/sentry/ILogger;)Lio/sentry/util/network/NetworkBody;
    .locals 11
    .param p0, "bytes"    # [B
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "maxSizeBytes"    # I
    .param p4, "logger"    # Lio/sentry/ILogger;

    .line 47
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 51
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    if-le v1, p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 52
    .local v1, "isTruncated":Z
    :goto_0
    array-length v3, p0

    int-to-long v3, v3

    .line 54
    .local v3, "originalByteCount":J
    if-eqz p1, :cond_2

    invoke-static {p1}, Lio/sentry/util/network/NetworkBodyParser;->isBinaryContentType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    new-instance v2, Lio/sentry/util/network/NetworkBody;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Binary data, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes, type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0, v3, v4}, Lio/sentry/util/network/NetworkBody;-><init>(Ljava/lang/Object;Ljava/util/List;J)V

    return-object v2

    .line 64
    :cond_2
    if-eqz p2, :cond_3

    move-object v5, p2

    goto :goto_1

    :cond_3
    :try_start_0
    const-string v5, "UTF-8"

    .line 65
    .local v5, "effectiveCharset":Ljava/lang/String;
    :goto_1
    array-length v6, p0

    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 66
    .local v6, "size":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0, v2, v6, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 67
    .local v7, "content":Ljava/lang/String;
    invoke-static {v7, p1, v1, p4}, Lio/sentry/util/network/NetworkBodyParser;->parse(Ljava/lang/String;Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/util/network/NetworkBody;

    move-result-object v8

    .line 68
    .local v8, "parsed":Lio/sentry/util/network/NetworkBody;
    if-nez v8, :cond_4

    .line 69
    return-object v0

    .line 71
    :cond_4
    new-instance v0, Lio/sentry/util/network/NetworkBody;

    invoke-virtual {v8}, Lio/sentry/util/network/NetworkBody;->getBody()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8}, Lio/sentry/util/network/NetworkBody;->getWarnings()Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v9, v10, v3, v4}, Lio/sentry/util/network/NetworkBody;-><init>(Ljava/lang/Object;Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    .end local v5    # "effectiveCharset":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "parsed":Lio/sentry/util/network/NetworkBody;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to decode bytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p4, v5, v6, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    new-instance v2, Lio/sentry/util/network/NetworkBody;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Failed to decode bytes, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->BODY_PARSE_ERROR:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    .line 76
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v5, v6, v3, v4}, Lio/sentry/util/network/NetworkBody;-><init>(Ljava/lang/Object;Ljava/util/List;J)V

    .line 74
    return-object v2

    .line 48
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "isTruncated":Z
    .end local v3    # "originalByteCount":J
    :cond_5
    :goto_2
    return-object v0
.end method

.method private static isBinaryContentType(Ljava/lang/String;)Z
    .locals 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 189
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "lower":Ljava/lang/String;
    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    const-string v1, "application/pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    const-string v1, "application/gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 190
    :goto_1
    return v1
.end method

.method private static parse(Ljava/lang/String;Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/util/network/NetworkBody;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "isPartial"    # Z
    .param p3, "logger"    # Lio/sentry/ILogger;

    .line 87
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    if-eqz p1, :cond_2

    .line 93
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "lowerContentType":Ljava/lang/String;
    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-static {p0, p2, p3}, Lio/sentry/util/network/NetworkBodyParser;->parseFormUrlEncoded(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/util/network/NetworkBody;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    invoke-static {p0, p2, p3}, Lio/sentry/util/network/NetworkBodyParser;->parseJson(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/util/network/NetworkBody;

    move-result-object v0

    return-object v0

    .line 103
    .end local v1    # "lowerContentType":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    sget-object v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->TEXT_TRUNCATED:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    :cond_3
    new-instance v1, Lio/sentry/util/network/NetworkBody;

    invoke-direct {v1, p0, v0}, Lio/sentry/util/network/NetworkBody;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    return-object v1

    .line 88
    .end local v0    # "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    :cond_4
    :goto_0
    return-object v0
.end method

.method private static parseFormUrlEncoded(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/util/network/NetworkBody;
    .locals 13
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "isPartial"    # Z
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 143
    const-string v0, "UTF-8"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "&"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "pairs":[Ljava/lang/String;
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 147
    .local v6, "pair":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 148
    .local v7, "idx":I
    if-lez v7, :cond_3

    .line 149
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v7, v9, :cond_0

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_0
    const-string v9, ""

    .line 154
    .local v9, "value":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 155
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 156
    .local v10, "existing":Ljava/lang/Object;
    instance-of v11, v10, Ljava/util/List;

    if-eqz v11, :cond_1

    .line 158
    move-object v11, v10

    check-cast v11, Ljava/util/List;

    .line 159
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    nop

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 161
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v2, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v10    # "existing":Ljava/lang/Object;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    goto :goto_3

    .line 167
    :cond_2
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v6    # "pair":Ljava/lang/String;
    .end local v7    # "idx":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 172
    :cond_4
    if-eqz p1, :cond_5

    .line 173
    sget-object v0, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->TEXT_TRUNCATED:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .local v0, "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    goto :goto_4

    .line 175
    .end local v0    # "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    :cond_5
    const/4 v0, 0x0

    .line 177
    .restart local v0    # "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    :goto_4
    new-instance v4, Lio/sentry/util/network/NetworkBody;

    invoke-direct {v4, v2, v0}, Lio/sentry/util/network/NetworkBody;-><init>(Ljava/lang/Object;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 178
    .end local v0    # "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "pairs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    if-eqz p2, :cond_6

    .line 180
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse form data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    new-instance v0, Lio/sentry/util/network/NetworkBody;

    sget-object v1, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->BODY_PARSE_ERROR:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    .line 184
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lio/sentry/util/network/NetworkBody;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    .line 183
    return-object v0
.end method

.method private static parseJson(Ljava/lang/String;ZLio/sentry/ILogger;)Lio/sentry/util/network/NetworkBody;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "isPartial"    # Z
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 110
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lio/sentry/vendor/gson/stream/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/sentry/vendor/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .local v1, "reader":Lio/sentry/vendor/gson/stream/JsonReader;
    :try_start_1
    invoke-static {v1}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;->parse(Lio/sentry/vendor/gson/stream/JsonReader;)Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    move-result-object v2

    .line 112
    .local v2, "result":Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;
    invoke-static {v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$000(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;)Ljava/lang/Object;

    move-result-object v3

    .line 113
    .local v3, "data":Ljava/lang/Object;
    if-nez v3, :cond_0

    if-nez p1, :cond_0

    invoke-static {v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$100(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$200(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    new-instance v4, Lio/sentry/util/network/NetworkBody;

    invoke-direct {v4, v0}, Lio/sentry/util/network/NetworkBody;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    invoke-virtual {v1}, Lio/sentry/vendor/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    return-object v4

    .line 118
    :cond_0
    if-nez p1, :cond_3

    :try_start_3
    invoke-static {v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$200(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {v2}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->access$100(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    sget-object v4, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->INVALID_JSON:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .local v4, "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    goto :goto_1

    .line 123
    .end local v4    # "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    goto :goto_1

    .line 119
    .end local v4    # "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    :cond_3
    :goto_0
    sget-object v4, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->JSON_TRUNCATED:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 125
    .restart local v4    # "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    :goto_1
    new-instance v5, Lio/sentry/util/network/NetworkBody;

    invoke-direct {v5, v3, v4}, Lio/sentry/util/network/NetworkBody;-><init>(Ljava/lang/Object;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    :try_start_4
    invoke-virtual {v1}, Lio/sentry/vendor/gson/stream/JsonReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 125
    return-object v5

    .line 110
    .end local v2    # "result":Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;
    .end local v3    # "data":Ljava/lang/Object;
    .end local v4    # "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Lio/sentry/vendor/gson/stream/JsonReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "content":Ljava/lang/String;
    .end local p1    # "isPartial":Z
    .end local p2    # "logger":Lio/sentry/ILogger;
    :goto_2
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 127
    .end local v1    # "reader":Lio/sentry/vendor/gson/stream/JsonReader;
    .restart local p0    # "content":Ljava/lang/String;
    .restart local p1    # "isPartial":Z
    .restart local p2    # "logger":Lio/sentry/ILogger;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_4

    .line 129
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p2, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v1, Lio/sentry/util/network/NetworkBody;

    sget-object v2, Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;->INVALID_JSON:Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;

    .line 133
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/sentry/util/network/NetworkBody;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    .line 132
    return-object v1
.end method
