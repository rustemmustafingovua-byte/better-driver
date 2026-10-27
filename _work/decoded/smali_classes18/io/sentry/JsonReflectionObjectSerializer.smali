.class public final Lio/sentry/JsonReflectionObjectSerializer;
.super Ljava/lang/Object;
.source "JsonReflectionObjectSerializer.java"


# instance fields
.field private final maxDepth:I

.field private visiting:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "maxDepth"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lio/sentry/JsonReflectionObjectSerializer;->maxDepth:I

    .line 38
    return-void
.end method

.method private getVisiting()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lio/sentry/JsonReflectionObjectSerializer;->visiting:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/sentry/JsonReflectionObjectSerializer;->visiting:Ljava/util/Set;

    .line 143
    :cond_0
    iget-object v0, p0, Lio/sentry/JsonReflectionObjectSerializer;->visiting:Ljava/util/Set;

    return-object v0
.end method

.method private list(Ljava/util/Collection;Lio/sentry/ILogger;)Ljava/util/List;
    .locals 4
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Lio/sentry/ILogger;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 159
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {p0, v2, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v2    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 161
    :cond_0
    return-object v0
.end method

.method private list([Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/util/List;
    .locals 5
    .param p1, "objectArray"    # [Ljava/lang/Object;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lio/sentry/ILogger;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 150
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {p0, v3, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v3    # "object":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-object v0
.end method

.method private map(Ljava/util/Map;Lio/sentry/ILogger;)Ljava/util/Map;
    .locals 6
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lio/sentry/ILogger;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v0, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 170
    .local v3, "object":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 173
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "object":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 176
    :cond_1
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    if-nez p1, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 48
    return-object p1

    .line 49
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 50
    return-object p1

    .line 51
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 52
    return-object p1

    .line 53
    :cond_4
    instance-of v0, p1, Ljava/util/Locale;

    if-eqz v0, :cond_5

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_5
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eqz v0, :cond_6

    .line 56
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {v0}, Lio/sentry/util/JsonSerializationUtils;->atomicIntegerArrayToList(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 57
    :cond_6
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_7

    .line 58
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 59
    :cond_7
    instance-of v0, p1, Ljava/net/URI;

    if-eqz v0, :cond_8

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_8
    instance-of v0, p1, Ljava/net/InetAddress;

    if-eqz v0, :cond_9

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_9
    instance-of v0, p1, Ljava/util/UUID;

    if-eqz v0, :cond_a

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_a
    instance-of v0, p1, Ljava/util/Currency;

    if-eqz v0, :cond_b

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 67
    :cond_b
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_c

    .line 68
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0}, Lio/sentry/util/JsonSerializationUtils;->calendarToMap(Ljava/util/Calendar;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 69
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_d
    invoke-direct {p0}, Lio/sentry/JsonReflectionObjectSerializer;->getVisiting()Ljava/util/Set;

    move-result-object v0

    .line 73
    .local v0, "visiting":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 74
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Cyclic reference detected. Calling toString() on object."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 77
    :cond_e
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget v3, p0, Lio/sentry/JsonReflectionObjectSerializer;->maxDepth:I

    if-le v1, v3, :cond_f

    .line 80
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Max depth exceeded. Calling toString() on object."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 85
    :cond_f
    const/4 v1, 0x0

    .line 87
    .local v1, "serializedObject":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 88
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    invoke-direct {p0, v2, p2}, Lio/sentry/JsonReflectionObjectSerializer;->list([Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "serializedObject":Ljava/lang/Object;
    .local v2, "serializedObject":Ljava/lang/Object;
    goto :goto_0

    .line 89
    .end local v2    # "serializedObject":Ljava/lang/Object;
    .restart local v1    # "serializedObject":Ljava/lang/Object;
    :cond_10
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_11

    .line 90
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p0, v2, p2}, Lio/sentry/JsonReflectionObjectSerializer;->list(Ljava/util/Collection;Lio/sentry/ILogger;)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "serializedObject":Ljava/lang/Object;
    .restart local v2    # "serializedObject":Ljava/lang/Object;
    goto :goto_0

    .line 91
    .end local v2    # "serializedObject":Ljava/lang/Object;
    .restart local v1    # "serializedObject":Ljava/lang/Object;
    :cond_11
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_12

    .line 92
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    invoke-direct {p0, v2, p2}, Lio/sentry/JsonReflectionObjectSerializer;->map(Ljava/util/Map;Lio/sentry/ILogger;)Ljava/util/Map;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "serializedObject":Ljava/lang/Object;
    .restart local v2    # "serializedObject":Ljava/lang/Object;
    goto :goto_0

    .line 94
    .end local v2    # "serializedObject":Ljava/lang/Object;
    .restart local v1    # "serializedObject":Ljava/lang/Object;
    :cond_12
    invoke-virtual {p0, p1, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serializeObject(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/util/Map;

    move-result-object v2

    .line 95
    .local v2, "objectAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .end local v1    # "serializedObject":Ljava/lang/Object;
    .local v3, "serializedObject":Ljava/lang/Object;
    goto :goto_0

    .line 98
    .end local v3    # "serializedObject":Ljava/lang/Object;
    .restart local v1    # "serializedObject":Ljava/lang/Object;
    :cond_13
    move-object v1, v2

    goto :goto_0

    .line 104
    .end local v2    # "objectAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Not serializing object due to throwing sub-path."

    invoke-interface {p2, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    nop

    .line 106
    return-object v1

    .line 104
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    throw v2
.end method

.method public serializeObject(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/util/Map;
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/sentry/ILogger;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 114
    .local v0, "fields":[Ljava/lang/reflect/Field;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 117
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "fieldName":Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 127
    .local v7, "fieldObject":Ljava/lang/Object;
    invoke-virtual {p0, v7, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v7    # "fieldObject":Ljava/lang/Object;
    goto :goto_1

    .line 129
    :catch_0
    move-exception v7

    .line 130
    .local v7, "exception":Ljava/lang/Exception;
    sget-object v8, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot access field "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-interface {p2, v8, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldName":Ljava/lang/String;
    .end local v7    # "exception":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :cond_2
    return-object v1
.end method
