.class Lcom/github/dart_lang/jni/PortCleaner;
.super Ljava/lang/Object;
.source "PortCleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;
    }
.end annotation


# instance fields
.field private final list:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetlist(Lcom/github/dart_lang/jni/PortCleaner;)Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;
    .locals 0

    iget-object p0, p0, Lcom/github/dart_lang/jni/PortCleaner;->list:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetqueue(Lcom/github/dart_lang/jni/PortCleaner;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    iget-object p0, p0, Lcom/github/dart_lang/jni/PortCleaner;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "dartjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/github/dart_lang/jni/PortCleaner;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 21
    new-instance v0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    invoke-direct {v0, p0}, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;-><init>(Lcom/github/dart_lang/jni/PortCleaner;)V

    iput-object v0, p0, Lcom/github/dart_lang/jni/PortCleaner;->list:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/github/dart_lang/jni/PortCleaner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/github/dart_lang/jni/PortCleaner$$ExternalSyntheticLambda0;-><init>(Lcom/github/dart_lang/jni/PortCleaner;)V

    const-string v2, "PortCleaner"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 78
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method

.method private static native clean(J)V
.end method


# virtual methods
.method synthetic lambda$new$0$com-github-dart_lang-jni-PortCleaner()V
    .locals 5

    .line 67
    nop

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/github/dart_lang/jni/PortCleaner;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 68
    .local v0, "portPhantom":Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;
    invoke-static {v0}, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->-$$Nest$mremove(Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;)V

    .line 69
    iget-wide v1, v0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->port:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 70
    iget-wide v1, v0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->port:J

    invoke-static {v1, v2}, Lcom/github/dart_lang/jni/PortCleaner;->clean(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 72
    .end local v0    # "portPhantom":Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;
    :catchall_0
    move-exception v0

    .line 74
    :cond_0
    :goto_1
    goto :goto_0
.end method

.method register(Ljava/lang/Object;J)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "port"    # J

    .line 84
    new-instance v0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;-><init>(Lcom/github/dart_lang/jni/PortCleaner;Ljava/lang/Object;J)V

    .line 85
    return-void
.end method
