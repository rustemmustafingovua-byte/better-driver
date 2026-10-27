.class public Lcom/github/dart_lang/jni/PortProxyBuilder;
.super Ljava/lang/Object;
.source "PortProxyBuilder.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;,
        Lcom/github/dart_lang/jni/PortProxyBuilder$DartException;
    }
.end annotation


# static fields
.field private static final cleaner:Lcom/github/dart_lang/jni/PortCleaner;

.field private static final equals:Ljava/lang/reflect/Method;

.field private static final hashCode:Ljava/lang/reflect/Method;

.field private static final toString:Ljava/lang/reflect/Method;


# instance fields
.field private final asyncMethods:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private built:Z

.field private final implementations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;",
            ">;"
        }
    .end annotation
.end field

.field private final isolateId:J

.field private final mainPortId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/github/dart_lang/jni/PortCleaner;

    invoke-direct {v0}, Lcom/github/dart_lang/jni/PortCleaner;-><init>()V

    sput-object v0, Lcom/github/dart_lang/jni/PortProxyBuilder;->cleaner:Lcom/github/dart_lang/jni/PortCleaner;

    .line 17
    const-class v0, Ljava/lang/Object;

    .line 19
    .local v0, "object":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Object;>;"
    :try_start_0
    const-string v1, "equals"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/github/dart_lang/jni/PortProxyBuilder;->equals:Ljava/lang/reflect/Method;

    .line 20
    const-string v1, "hashCode"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/github/dart_lang/jni/PortProxyBuilder;->hashCode:Ljava/lang/reflect/Method;

    .line 21
    const-string v1, "toString"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/github/dart_lang/jni/PortProxyBuilder;->toString:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    nop

    .line 26
    const-string v1, "dartjni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    .end local v0    # "object":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Object;>;"
    return-void

    .line 22
    .restart local v0    # "object":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 24
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    throw v2
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "isolateId"    # J
    .param p3, "mainPortId"    # J

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->built:Z

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->implementations:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->asyncMethods:Ljava/util/HashSet;

    .line 46
    iput-wide p1, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->isolateId:J

    .line 47
    iput-wide p3, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->mainPortId:J

    .line 48
    return-void
.end method

.method private static native _cleanUp(J)V
.end method

.method private static native _invoke(JJJJLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)[Ljava/lang/Object;
.end method

.method private static appendType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V
    .locals 4
    .param p0, "descriptor"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 63
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 64
    const/16 v0, 0x56

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 65
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 66
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 67
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 68
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 69
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 70
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 71
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 72
    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 74
    const/16 v0, 0x49

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 75
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 76
    const/16 v0, 0x4a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 77
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 78
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 79
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_8

    .line 80
    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 82
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/dart_lang/jni/PortProxyBuilder;->appendType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    goto :goto_0

    .line 85
    :cond_9
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :goto_0
    return-void
.end method

.method private static getDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 5
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "descriptor":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 54
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 55
    .local v4, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v4}, Lcom/github/dart_lang/jni/PortProxyBuilder;->appendType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 54
    .end local v4    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/github/dart_lang/jni/PortProxyBuilder;->appendType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addImplementation(Ljava/lang/String;JJLjava/util/List;)V
    .locals 2
    .param p1, "binaryName"    # Ljava/lang/String;
    .param p2, "port"    # J
    .param p4, "functionPointer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p6, "asyncMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->implementations:Ljava/util/HashMap;

    new-instance v1, Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->asyncMethods:Ljava/util/HashSet;

    invoke-virtual {v0, p6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 93
    return-void
.end method

.method public build()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->implementations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    iget-boolean v0, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->built:Z

    if-nez v0, :cond_2

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->built:Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    iget-object v1, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->implementations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "binaryName":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v2    # "binaryName":Ljava/lang/String;
    goto :goto_0

    .line 107
    :cond_0
    nop

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .line 108
    invoke-static {v2, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/github/dart_lang/jni/PortProxyBuilder;->implementations:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;

    .line 111
    .local v3, "implementation":Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;
    sget-object v4, Lcom/github/dart_lang/jni/PortProxyBuilder;->cleaner:Lcom/github/dart_lang/jni/PortCleaner;

    iget-wide v5, v3, Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;->port:J

    invoke-virtual {v4, v1, v5, v6}, Lcom/github/dart_lang/jni/PortCleaner;->register(Ljava/lang/Object;J)V

    .line 112
    .end local v3    # "implementation":Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;
    goto :goto_1

    .line 113
    :cond_1
    return-object v1

    .line 100
    .end local v0    # "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This proxy has already been built"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No interface implementation added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lcom/github/dart_lang/jni/PortProxyBuilder;->equals:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 134
    aget-object v2, p3, v3

    move-object/from16 v13, p1

    if-ne v13, v2, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 136
    :cond_1
    move-object/from16 v13, p1

    sget-object v2, Lcom/github/dart_lang/jni/PortProxyBuilder;->hashCode:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 139
    :cond_2
    sget-object v2, Lcom/github/dart_lang/jni/PortProxyBuilder;->toString:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 142
    :cond_3
    iget-object v2, v0, Lcom/github/dart_lang/jni/PortProxyBuilder;->implementations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;

    .line 143
    .local v2, "implementation":Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;
    invoke-static {v1}, Lcom/github/dart_lang/jni/PortProxyBuilder;->getDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v14

    .line 144
    .local v14, "descriptor":Ljava/lang/String;
    iget-object v5, v0, Lcom/github/dart_lang/jni/PortProxyBuilder;->asyncMethods:Ljava/util/HashSet;

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v16, v5, 0x1

    .line 145
    .local v16, "isBlocking":Z
    iget-wide v5, v2, Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;->port:J

    iget-wide v7, v0, Lcom/github/dart_lang/jni/PortProxyBuilder;->isolateId:J

    iget-wide v9, v0, Lcom/github/dart_lang/jni/PortProxyBuilder;->mainPortId:J

    iget-wide v11, v2, Lcom/github/dart_lang/jni/PortProxyBuilder$DartImplementation;->pointer:J

    .line 146
    move-object/from16 v15, p3

    invoke-static/range {v5 .. v16}, Lcom/github/dart_lang/jni/PortProxyBuilder;->_invoke(JJJJLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v5

    .line 155
    .local v5, "result":[Ljava/lang/Object;
    if-nez v16, :cond_4

    .line 156
    const/4 v3, 0x0

    return-object v3

    .line 158
    :cond_4
    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/github/dart_lang/jni/PortProxyBuilder;->_cleanUp(J)V

    .line 159
    aget-object v3, v5, v4

    instance-of v3, v3, Lcom/github/dart_lang/jni/PortProxyBuilder$DartException;

    if-eqz v3, :cond_6

    .line 160
    aget-object v3, v5, v4

    check-cast v3, Lcom/github/dart_lang/jni/PortProxyBuilder$DartException;

    iget-object v3, v3, Lcom/github/dart_lang/jni/PortProxyBuilder$DartException;->cause:Ljava/lang/Throwable;

    .line 161
    .local v3, "cause":Ljava/lang/Throwable;
    if-eqz v3, :cond_5

    .line 162
    throw v3

    .line 164
    :cond_5
    aget-object v4, v5, v4

    check-cast v4, Lcom/github/dart_lang/jni/PortProxyBuilder$DartException;

    throw v4

    .line 167
    .end local v3    # "cause":Ljava/lang/Throwable;
    :cond_6
    aget-object v3, v5, v4

    return-object v3
.end method
