.class public Lcom/github/dart_lang/jni/PortContinuation;
.super Ljava/lang/Object;
.source "PortContinuation.java"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final port:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "dartjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "port"    # J

    .line 23
    .local p0, "this":Lcom/github/dart_lang/jni/PortContinuation;, "Lcom/github/dart_lang/jni/PortContinuation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/github/dart_lang/jni/PortContinuation;->port:J

    .line 25
    return-void
.end method

.method private native _resumeWith(JLjava/lang/Object;)V
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 29
    .local p0, "this":Lcom/github/dart_lang/jni/PortContinuation;, "Lcom/github/dart_lang/jni/PortContinuation<TT;>;"
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 34
    .local p0, "this":Lcom/github/dart_lang/jni/PortContinuation;, "Lcom/github/dart_lang/jni/PortContinuation<TT;>;"
    iget-wide v0, p0, Lcom/github/dart_lang/jni/PortContinuation;->port:J

    invoke-direct {p0, v0, v1, p1}, Lcom/github/dart_lang/jni/PortContinuation;->_resumeWith(JLjava/lang/Object;)V

    .line 35
    return-void
.end method
