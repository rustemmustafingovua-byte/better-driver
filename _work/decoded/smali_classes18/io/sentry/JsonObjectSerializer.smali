.class public final Lio/sentry/JsonObjectSerializer;
.super Ljava/lang/Object;
.source "JsonObjectSerializer.java"


# static fields
.field public static final OBJECT_PLACEHOLDER:Ljava/lang/String; = "[OBJECT]"


# instance fields
.field private jsonReflectionObjectSerializer:Lio/sentry/JsonReflectionObjectSerializer;

.field private final maxDepth:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxDepth"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lio/sentry/JsonObjectSerializer;->maxDepth:I

    .line 36
    return-void
.end method

.method private getJsonReflectionObjectSerializer()Lio/sentry/JsonReflectionObjectSerializer;
    .locals 2

    .line 143
    iget-object v0, p0, Lio/sentry/JsonObjectSerializer;->jsonReflectionObjectSerializer:Lio/sentry/JsonReflectionObjectSerializer;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lio/sentry/JsonReflectionObjectSerializer;

    iget v1, p0, Lio/sentry/JsonObjectSerializer;->maxDepth:I

    invoke-direct {v0, v1}, Lio/sentry/JsonReflectionObjectSerializer;-><init>(I)V

    iput-object v0, p0, Lio/sentry/JsonObjectSerializer;->jsonReflectionObjectSerializer:Lio/sentry/JsonReflectionObjectSerializer;

    .line 146
    :cond_0
    iget-object v0, p0, Lio/sentry/JsonObjectSerializer;->jsonReflectionObjectSerializer:Lio/sentry/JsonReflectionObjectSerializer;

    return-object v0
.end method

.method private serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V
    .locals 2
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ObjectWriter;",
            "Lio/sentry/ILogger;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    .local p3, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginArray()Lio/sentry/ObjectWriter;

    .line 175
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 176
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v1}, Lio/sentry/JsonObjectSerializer;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V

    .line 177
    .end local v1    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 178
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endArray()Lio/sentry/ObjectWriter;

    .line 179
    return-void
.end method

.method private serializeDate(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Date;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    :try_start_0
    invoke-static {p3}, Lio/sentry/DateUtils;->getTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error when serializing Date"

    invoke-interface {p2, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->nullValue()Lio/sentry/ObjectWriter;

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private serializeMap(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Map;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ObjectWriter;",
            "Lio/sentry/ILogger;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 185
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 186
    .local v1, "key":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 187
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 188
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lio/sentry/JsonObjectSerializer;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V

    .line 190
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 191
    :cond_1
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 192
    return-void
.end method

.method private serializeTimeZone(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/TimeZone;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    :try_start_0
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error when serializing TimeZone"

    invoke-interface {p2, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->nullValue()Lio/sentry/ObjectWriter;

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V
    .locals 7
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    if-nez p3, :cond_0

    .line 42
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->nullValue()Lio/sentry/ObjectWriter;

    goto/16 :goto_8

    .line 43
    :cond_0
    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 44
    move-object v0, p3

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto/16 :goto_8

    .line 45
    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 46
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto/16 :goto_8

    .line 47
    :cond_2
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 48
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Z)Lio/sentry/ObjectWriter;

    goto/16 :goto_8

    .line 49
    :cond_3
    instance-of v0, p3, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 50
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    goto/16 :goto_8

    .line 51
    :cond_4
    instance-of v0, p3, Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 52
    move-object v0, p3

    check-cast v0, Ljava/util/Date;

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeDate(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Date;)V

    goto/16 :goto_8

    .line 53
    :cond_5
    instance-of v0, p3, Ljava/util/TimeZone;

    if-eqz v0, :cond_6

    .line 54
    move-object v0, p3

    check-cast v0, Ljava/util/TimeZone;

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeTimeZone(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/TimeZone;)V

    goto/16 :goto_8

    .line 55
    :cond_6
    instance-of v0, p3, Lio/sentry/JsonSerializable;

    if-eqz v0, :cond_7

    .line 56
    move-object v0, p3

    check-cast v0, Lio/sentry/JsonSerializable;

    invoke-interface {v0, p1, p2}, Lio/sentry/JsonSerializable;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    goto/16 :goto_8

    .line 57
    :cond_7
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_8

    .line 58
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    goto/16 :goto_8

    .line 59
    :cond_8
    instance-of v0, p3, [Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, p3

    check-cast v2, [Z

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v0, "bools":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    move-object v2, p3

    check-cast v2, [Z

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_9

    aget-boolean v4, v2, v1

    .line 62
    .local v4, "b":Z
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v4    # "b":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_9
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 65
    .end local v0    # "bools":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    goto/16 :goto_8

    :cond_a
    instance-of v0, p3, [B

    if-eqz v0, :cond_c

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, p3

    check-cast v2, [B

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v0, "bytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    move-object v2, p3

    check-cast v2, [B

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_b

    aget-byte v4, v2, v1

    .line 68
    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v4    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_b
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 71
    .end local v0    # "bytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    goto/16 :goto_8

    :cond_c
    instance-of v0, p3, [S

    if-eqz v0, :cond_e

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, p3

    check-cast v2, [S

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v0, "shorts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    move-object v2, p3

    check-cast v2, [S

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_d

    aget-short v4, v2, v1

    .line 74
    .local v4, "s":S
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v4    # "s":S
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    :cond_d
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 77
    .end local v0    # "shorts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    goto/16 :goto_8

    :cond_e
    instance-of v0, p3, [C

    if-eqz v0, :cond_10

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, p3

    check-cast v2, [C

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v0, "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    move-object v2, p3

    check-cast v2, [C

    array-length v3, v2

    :goto_3
    if-ge v1, v3, :cond_f

    aget-char v4, v2, v1

    .line 80
    .local v4, "s":C
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v4    # "s":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 82
    :cond_f
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 83
    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    goto/16 :goto_8

    :cond_10
    instance-of v0, p3, [I

    if-eqz v0, :cond_12

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, p3

    check-cast v2, [I

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v0, "ints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v2, p3

    check-cast v2, [I

    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_11

    aget v4, v2, v1

    .line 86
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v4    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 88
    :cond_11
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 89
    .end local v0    # "ints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_8

    :cond_12
    instance-of v0, p3, [J

    if-eqz v0, :cond_14

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, p3

    check-cast v2, [J

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v0, "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v2, p3

    check-cast v2, [J

    array-length v3, v2

    :goto_5
    if-ge v1, v3, :cond_13

    aget-wide v4, v2, v1

    .line 92
    .local v4, "l":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v4    # "l":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 94
    :cond_13
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 95
    .end local v0    # "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto/16 :goto_8

    :cond_14
    instance-of v0, p3, [F

    if-eqz v0, :cond_16

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, p3

    check-cast v2, [F

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v0, "floats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object v2, p3

    check-cast v2, [F

    array-length v3, v2

    :goto_6
    if-ge v1, v3, :cond_15

    aget v4, v2, v1

    .line 98
    .local v4, "f":F
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v4    # "f":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 100
    :cond_15
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 101
    .end local v0    # "floats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    goto/16 :goto_8

    :cond_16
    instance-of v0, p3, [D

    if-eqz v0, :cond_18

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, p3

    check-cast v2, [D

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v0, "doubles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object v2, p3

    check-cast v2, [D

    array-length v3, v2

    :goto_7
    if-ge v1, v3, :cond_17

    aget-wide v4, v2, v1

    .line 104
    .local v4, "d":D
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v4    # "d":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 106
    :cond_17
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 107
    .end local v0    # "doubles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    goto/16 :goto_8

    :cond_18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 108
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    goto/16 :goto_8

    .line 109
    :cond_19
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_1a

    .line 110
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeMap(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Map;)V

    goto/16 :goto_8

    .line 111
    :cond_1a
    instance-of v0, p3, Ljava/util/Locale;

    if-eqz v0, :cond_1b

    .line 112
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto/16 :goto_8

    .line 113
    :cond_1b
    instance-of v0, p3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eqz v0, :cond_1c

    .line 114
    move-object v0, p3

    check-cast v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {v0}, Lio/sentry/util/JsonSerializationUtils;->atomicIntegerArrayToList(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    goto/16 :goto_8

    .line 115
    :cond_1c
    instance-of v0, p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1d

    .line 116
    move-object v0, p3

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Z)Lio/sentry/ObjectWriter;

    goto/16 :goto_8

    .line 117
    :cond_1d
    instance-of v0, p3, Ljava/net/URI;

    if-eqz v0, :cond_1e

    .line 118
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto :goto_8

    .line 119
    :cond_1e
    instance-of v0, p3, Ljava/net/InetAddress;

    if-eqz v0, :cond_1f

    .line 120
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto :goto_8

    .line 121
    :cond_1f
    instance-of v0, p3, Ljava/util/UUID;

    if-eqz v0, :cond_20

    .line 122
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto :goto_8

    .line 123
    :cond_20
    instance-of v0, p3, Ljava/util/Currency;

    if-eqz v0, :cond_21

    .line 124
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto :goto_8

    .line 125
    :cond_21
    instance-of v0, p3, Ljava/util/Calendar;

    if-eqz v0, :cond_22

    .line 126
    move-object v0, p3

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0}, Lio/sentry/util/JsonSerializationUtils;->calendarToMap(Ljava/util/Calendar;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serializeMap(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Map;)V

    goto :goto_8

    .line 127
    :cond_22
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 128
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto :goto_8

    .line 131
    :cond_23
    :try_start_0
    invoke-direct {p0}, Lio/sentry/JsonObjectSerializer;->getJsonReflectionObjectSerializer()Lio/sentry/JsonReflectionObjectSerializer;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, "serializableObject":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "serializableObject":Ljava/lang/Object;
    goto :goto_8

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Failed serializing unknown object."

    invoke-interface {p2, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    const-string v1, "[OBJECT]"

    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 138
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_8
    return-void
.end method
