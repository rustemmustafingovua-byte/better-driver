.class public abstract Lcom/fasterxml/jackson/databind/module/d;
.super Lb6/a0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MODULE_ID_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _abstractTypes:Lcom/fasterxml/jackson/databind/module/a;

.field protected _deserializerModifier:Le6/i;

.field protected _deserializers:Lcom/fasterxml/jackson/databind/module/b;

.field protected final _hasExplicitName:Z

.field protected _keyDeserializers:Lcom/fasterxml/jackson/databind/module/c;

.field protected _keySerializers:Lcom/fasterxml/jackson/databind/module/e;

.field protected _mixins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final _name:Ljava/lang/String;

.field protected _namingStrategy:Lb6/o0;

.field protected _serializerModifier:Lq6/g;

.field protected _serializers:Lcom/fasterxml/jackson/databind/module/e;

.field protected _subtypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ln6/c;",
            ">;"
        }
    .end annotation
.end field

.field protected _valueInstantiators:Lcom/fasterxml/jackson/databind/module/f;

.field protected final _version:Ls5/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/module/d;->MODULE_ID_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializers:Lcom/fasterxml/jackson/databind/module/e;

    .line 3
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_deserializers:Lcom/fasterxml/jackson/databind/module/b;

    .line 4
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keySerializers:Lcom/fasterxml/jackson/databind/module/e;

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/c;

    .line 6
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/a;

    .line 7
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/f;

    .line 8
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_deserializerModifier:Le6/i;

    .line 9
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializerModifier:Lq6/g;

    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_mixins:Ljava/util/HashMap;

    .line 11
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    .line 12
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_namingStrategy:Lb6/o0;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 14
    const-class v1, Lcom/fasterxml/jackson/databind/module/d;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimpleModule-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/fasterxml/jackson/databind/module/d;->MODULE_ID_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 17
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_name:Ljava/lang/String;

    .line 18
    sget-object v0, Ls5/w;->r:Ls5/w;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_version:Ls5/w;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_hasExplicitName:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ls5/w;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializers:Lcom/fasterxml/jackson/databind/module/e;

    .line 22
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_deserializers:Lcom/fasterxml/jackson/databind/module/b;

    .line 23
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keySerializers:Lcom/fasterxml/jackson/databind/module/e;

    .line 24
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/c;

    .line 25
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/a;

    .line 26
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/f;

    .line 27
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_deserializerModifier:Le6/i;

    .line 28
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializerModifier:Lq6/g;

    .line 29
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_mixins:Ljava/util/HashMap;

    .line 30
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    .line 31
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_namingStrategy:Lb6/o0;

    .line 32
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/d;->_name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/module/d;->_version:Ls5/w;

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/module/d;->_hasExplicitName:Z

    return-void
.end method


# virtual methods
.method public _checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass `null` as "

    invoke-static {p1, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAbstractTypeMapping(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/fasterxml/jackson/databind/module/d;"
        }
    .end annotation

    const-string v0, "abstract type to map"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "concrete type to map to"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/databind/module/a;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/a;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/a;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, p2, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "Cannot add mapping from class "

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/module/a;->l:Ljava/util/HashMap;

    new-instance v2, Lt6/b;

    invoke-direct {v2, p1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/a;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " since it is not abstract"

    invoke-static {p1, p2, v0}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", as latter is not a subtype of former"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add mapping from class to itself"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lb6/n;",
            ")",
            "Lcom/fasterxml/jackson/databind/module/d;"
        }
    .end annotation

    const-string v0, "type to register deserializer for"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_deserializers:Lcom/fasterxml/jackson/databind/module/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/databind/module/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/module/b;->l:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fasterxml/jackson/databind/module/b;->m:Z

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_deserializers:Lcom/fasterxml/jackson/databind/module/b;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_deserializers:Lcom/fasterxml/jackson/databind/module/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lt6/b;

    invoke-direct {v1, p1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/module/b;->l:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/fasterxml/jackson/databind/module/b;->l:Ljava/util/HashMap;

    :cond_1
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/module/b;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p2, Ljava/lang/Enum;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/fasterxml/jackson/databind/module/b;->m:Z

    :cond_2
    return-object p0
.end method

.method public addKeyDeserializer(Ljava/lang/Class;Lb6/w;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lb6/w;",
            ")",
            "Lcom/fasterxml/jackson/databind/module/d;"
        }
    .end annotation

    const-string v0, "type to register key deserializer for"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key deserializer"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/databind/module/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/module/c;->l:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/c;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/c;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/module/c;->l:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/module/c;->l:Ljava/util/HashMap;

    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/module/c;->l:Ljava/util/HashMap;

    new-instance v1, Lt6/b;

    invoke-direct {v1, p1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addKeySerializer(Ljava/lang/Class;Lb6/u;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lb6/u;",
            ")",
            "Lcom/fasterxml/jackson/databind/module/d;"
        }
    .end annotation

    const-string v0, "type to register key serializer for"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key serializer"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keySerializers:Lcom/fasterxml/jackson/databind/module/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/databind/module/e;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/e;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keySerializers:Lcom/fasterxml/jackson/databind/module/e;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keySerializers:Lcom/fasterxml/jackson/databind/module/e;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/e;->b(Ljava/lang/Class;Lb6/u;)V

    return-object p0
.end method

.method public addSerializer(Lb6/u;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb6/u;",
            ")",
            "Lcom/fasterxml/jackson/databind/module/d;"
        }
    .end annotation

    .line 1
    const-string v0, "serializer"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializers:Lcom/fasterxml/jackson/databind/module/e;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/module/e;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/e;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializers:Lcom/fasterxml/jackson/databind/module/e;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializers:Lcom/fasterxml/jackson/databind/module/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p1}, Lb6/u;->handledType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/module/e;->b(Ljava/lang/Class;Lb6/u;)V

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonSerializer of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not define valid handledType() -- must either register with method that takes type argument  or make serializer extend \'com.fasterxml.jackson.databind.ser.std.StdSerializer\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addSerializer(Ljava/lang/Class;Lb6/u;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lb6/u;",
            ")",
            "Lcom/fasterxml/jackson/databind/module/d;"
        }
    .end annotation

    .line 9
    const-string v0, "type to register serializer for"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const-string v0, "serializer"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializers:Lcom/fasterxml/jackson/databind/module/e;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/fasterxml/jackson/databind/module/e;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/e;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializers:Lcom/fasterxml/jackson/databind/module/e;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializers:Lcom/fasterxml/jackson/databind/module/e;

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/e;->b(Ljava/lang/Class;Lb6/u;)V

    return-object p0
.end method

.method public addValueInstantiator(Ljava/lang/Class;Le6/c0;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le6/c0;",
            ")",
            "Lcom/fasterxml/jackson/databind/module/d;"
        }
    .end annotation

    const-string v0, "class to register value instantiator for"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value instantiator"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/databind/module/f;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/f;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/f;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/f;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/module/f;->l:Ljava/util/HashMap;

    new-instance v2, Lt6/b;

    invoke-direct {v2, p1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/f;

    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/module/d;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeId()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_hasExplicitName:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/module/d;->_name:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/module/d;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/module/d;->_name:Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerSubtypes(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lcom/fasterxml/jackson/databind/module/d;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 16
    const-string v1, "subtype to register"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    new-instance v2, Ln6/c;

    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v0, v3}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/module/d;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    const-string v3, "subtype to register"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    new-instance v4, Ln6/c;

    const/4 v5, 0x0

    .line 6
    invoke-direct {v4, v2, v5}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public varargs registerSubtypes([Ln6/c;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    .line 10
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 11
    const-string v3, "subtype to register"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setAbstractTypes(Lcom/fasterxml/jackson/databind/module/a;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/d;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/a;

    return-void
.end method

.method public setDeserializerModifier(Le6/i;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/d;->_deserializerModifier:Le6/i;

    return-object p0
.end method

.method public setDeserializers(Lcom/fasterxml/jackson/databind/module/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/d;->_deserializers:Lcom/fasterxml/jackson/databind/module/b;

    return-void
.end method

.method public setKeyDeserializers(Lcom/fasterxml/jackson/databind/module/c;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/d;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/c;

    return-void
.end method

.method public setKeySerializers(Lcom/fasterxml/jackson/databind/module/e;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/d;->_keySerializers:Lcom/fasterxml/jackson/databind/module/e;

    return-void
.end method

.method public setMixInAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/module/d;"
        }
    .end annotation

    const-string v0, "target type"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mixin class"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/d;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_mixins:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_mixins:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_mixins:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setNamingStrategy(Lb6/o0;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/d;->_namingStrategy:Lb6/o0;

    return-object p0
.end method

.method public setSerializerModifier(Lq6/g;)Lcom/fasterxml/jackson/databind/module/d;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializerModifier:Lq6/g;

    return-object p0
.end method

.method public setSerializers(Lcom/fasterxml/jackson/databind/module/e;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializers:Lcom/fasterxml/jackson/databind/module/e;

    return-void
.end method

.method public setValueInstantiators(Lcom/fasterxml/jackson/databind/module/f;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/d;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/f;

    return-void
.end method

.method public setupModule(Lb6/z;)V
    .locals 10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_serializers:Lcom/fasterxml/jackson/databind/module/e;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lb6/b0;

    iget-object v1, v1, Lb6/b0;->a:Lb6/c0;

    iget-object v2, v1, Lb6/c0;->s:Lg5/f;

    check-cast v2, Lq6/b;

    iget-object v3, v2, Lq6/b;->l:Ld6/p;

    iget-object v4, v3, Ld6/p;->l:[Lq6/m;

    invoke-static {v4, v0}, Lf8/u3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq6/m;

    new-instance v4, Ld6/p;

    iget-object v5, v3, Ld6/p;->m:[Lq6/m;

    iget-object v3, v3, Ld6/p;->n:[Lq6/g;

    invoke-direct {v4, v0, v5, v3}, Ld6/p;-><init>([Lq6/m;[Lq6/m;[Lq6/g;)V

    check-cast v2, Lq6/f;

    iget-object v0, v2, Lq6/b;->l:Ld6/p;

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lq6/f;

    invoke-direct {v2, v4}, Lq6/b;-><init>(Ld6/p;)V

    :goto_0
    iput-object v2, v1, Lb6/c0;->s:Lg5/f;

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_deserializers:Lcom/fasterxml/jackson/databind/module/b;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Lb6/b0;

    iget-object v1, v1, Lb6/b0;->a:Lb6/c0;

    iget-object v2, v1, Lb6/c0;->u:Le6/n;

    iget-object v2, v2, Lb6/i;->p:Le6/h;

    iget-object v3, v2, Le6/c;->l:Ld6/j;

    iget-object v4, v3, Ld6/j;->l:[Le6/p;

    invoke-static {v4, v0}, Lf8/u3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Le6/p;

    new-instance v4, Ld6/j;

    iget-object v6, v3, Ld6/j;->m:[Le6/q;

    iget-object v7, v3, Ld6/j;->n:[Le6/i;

    iget-object v8, v3, Ld6/j;->o:[Lb6/a;

    iget-object v9, v3, Ld6/j;->p:[Le6/d0;

    invoke-direct/range {v4 .. v9}, Ld6/j;-><init>([Le6/p;[Le6/q;[Le6/i;[Lb6/a;[Le6/d0;)V

    invoke-virtual {v2, v4}, Le6/c;->V(Ld6/j;)Le6/h;

    move-result-object v0

    iget-object v2, v1, Lb6/c0;->u:Le6/n;

    invoke-virtual {v2, v0}, Le6/n;->I0(Le6/h;)Le6/n;

    move-result-object v0

    iput-object v0, v1, Lb6/c0;->u:Le6/n;

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keySerializers:Lcom/fasterxml/jackson/databind/module/e;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Lb6/b0;

    iget-object v1, v1, Lb6/b0;->a:Lb6/c0;

    iget-object v2, v1, Lb6/c0;->s:Lg5/f;

    check-cast v2, Lq6/b;

    iget-object v3, v2, Lq6/b;->l:Ld6/p;

    iget-object v4, v3, Ld6/p;->m:[Lq6/m;

    invoke-static {v4, v0}, Lf8/u3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq6/m;

    new-instance v4, Ld6/p;

    iget-object v5, v3, Ld6/p;->l:[Lq6/m;

    iget-object v3, v3, Ld6/p;->n:[Lq6/g;

    invoke-direct {v4, v5, v0, v3}, Ld6/p;-><init>([Lq6/m;[Lq6/m;[Lq6/g;)V

    check-cast v2, Lq6/f;

    iget-object v0, v2, Lq6/b;->l:Ld6/p;

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Lq6/f;

    invoke-direct {v2, v4}, Lq6/b;-><init>(Ld6/p;)V

    :goto_1
    iput-object v2, v1, Lb6/c0;->s:Lg5/f;

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/c;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lb6/b0;

    iget-object v1, v1, Lb6/b0;->a:Lb6/c0;

    iget-object v2, v1, Lb6/c0;->u:Le6/n;

    iget-object v2, v2, Lb6/i;->p:Le6/h;

    iget-object v3, v2, Le6/c;->l:Ld6/j;

    iget-object v4, v3, Ld6/j;->m:[Le6/q;

    invoke-static {v4, v0}, Lf8/u3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Le6/q;

    new-instance v4, Ld6/j;

    iget-object v5, v3, Ld6/j;->l:[Le6/p;

    iget-object v7, v3, Ld6/j;->n:[Le6/i;

    iget-object v8, v3, Ld6/j;->o:[Lb6/a;

    iget-object v9, v3, Ld6/j;->p:[Le6/d0;

    invoke-direct/range {v4 .. v9}, Ld6/j;-><init>([Le6/p;[Le6/q;[Le6/i;[Lb6/a;[Le6/d0;)V

    invoke-virtual {v2, v4}, Le6/c;->V(Ld6/j;)Le6/h;

    move-result-object v0

    iget-object v2, v1, Lb6/c0;->u:Le6/n;

    invoke-virtual {v2, v0}, Le6/n;->I0(Le6/h;)Le6/n;

    move-result-object v0

    iput-object v0, v1, Lb6/c0;->u:Le6/n;

    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/a;

    if-eqz v0, :cond_6

    move-object v1, p1

    check-cast v1, Lb6/b0;

    iget-object v1, v1, Lb6/b0;->a:Lb6/c0;

    iget-object v2, v1, Lb6/c0;->u:Le6/n;

    iget-object v2, v2, Lb6/i;->p:Le6/h;

    iget-object v3, v2, Le6/c;->l:Ld6/j;

    iget-object v4, v3, Ld6/j;->o:[Lb6/a;

    invoke-static {v4, v0}, Lf8/u3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Lb6/a;

    new-instance v4, Ld6/j;

    iget-object v5, v3, Ld6/j;->l:[Le6/p;

    iget-object v6, v3, Ld6/j;->m:[Le6/q;

    iget-object v7, v3, Ld6/j;->n:[Le6/i;

    iget-object v9, v3, Ld6/j;->p:[Le6/d0;

    invoke-direct/range {v4 .. v9}, Ld6/j;-><init>([Le6/p;[Le6/q;[Le6/i;[Lb6/a;[Le6/d0;)V

    invoke-virtual {v2, v4}, Le6/c;->V(Ld6/j;)Le6/h;

    move-result-object v0

    iget-object v2, v1, Lb6/c0;->u:Le6/n;

    invoke-virtual {v2, v0}, Le6/n;->I0(Le6/h;)Le6/n;

    move-result-object v0

    iput-object v0, v1, Lb6/c0;->u:Le6/n;

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/f;

    if-eqz v0, :cond_7

    move-object v1, p1

    check-cast v1, Lb6/b0;

    iget-object v1, v1, Lb6/b0;->a:Lb6/c0;

    iget-object v2, v1, Lb6/c0;->u:Le6/n;

    iget-object v2, v2, Lb6/i;->p:Le6/h;

    iget-object v3, v2, Le6/c;->l:Ld6/j;

    iget-object v4, v3, Ld6/j;->p:[Le6/d0;

    invoke-static {v4, v0}, Lf8/u3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Le6/d0;

    new-instance v4, Ld6/j;

    iget-object v5, v3, Ld6/j;->l:[Le6/p;

    iget-object v6, v3, Ld6/j;->m:[Le6/q;

    iget-object v7, v3, Ld6/j;->n:[Le6/i;

    iget-object v8, v3, Ld6/j;->o:[Lb6/a;

    invoke-direct/range {v4 .. v9}, Ld6/j;-><init>([Le6/p;[Le6/q;[Le6/i;[Lb6/a;[Le6/d0;)V

    invoke-virtual {v2, v4}, Le6/c;->V(Ld6/j;)Le6/h;

    move-result-object v0

    iget-object v2, v1, Lb6/c0;->u:Le6/n;

    invoke-virtual {v2, v0}, Le6/n;->I0(Le6/h;)Le6/n;

    move-result-object v0

    iput-object v0, v1, Lb6/c0;->u:Le6/n;

    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_subtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    new-array v1, v1, [Ln6/c;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln6/c;

    move-object v1, p1

    check-cast v1, Lb6/b0;

    iget-object v1, v1, Lb6/b0;->a:Lb6/c0;

    iget-object v1, v1, Lb6/c0;->n:Lo6/m;

    iget-object v2, v1, Lo6/m;->n:Ljava/util/LinkedHashSet;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v1, Lo6/m;->n:Ljava/util/LinkedHashSet;

    :cond_8
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    iget-object v5, v1, Lo6/m;->n:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/d;->_namingStrategy:Lb6/o0;

    if-eqz v0, :cond_a

    move-object v1, p1

    check-cast v1, Lb6/b0;

    iget-object v1, v1, Lb6/b0;->a:Lb6/c0;

    invoke-virtual {v1, v0}, Lb6/c0;->t(Lb6/o0;)V

    :cond_a
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/module/d;->_mixins:Ljava/util/HashMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v2, p1

    check-cast v2, Lb6/b0;

    iget-object v2, v2, Lb6/b0;->a:Lb6/c0;

    iget-object v2, v2, Lb6/c0;->p:Lj6/j0;

    iget-object v3, v2, Lj6/j0;->l:Ljava/util/HashMap;

    if-nez v3, :cond_b

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lj6/j0;->l:Ljava/util/HashMap;

    :cond_b
    iget-object v2, v2, Lj6/j0;->l:Ljava/util/HashMap;

    new-instance v3, Lt6/b;

    invoke-direct {v3, v1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    return-void
.end method

.method public version()Ls5/w;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/module/d;->_version:Ls5/w;

    return-object p0
.end method
