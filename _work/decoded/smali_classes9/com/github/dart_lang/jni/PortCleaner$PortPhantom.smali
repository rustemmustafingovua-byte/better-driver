.class Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;
.super Ljava/lang/ref/PhantomReference;
.source "PortCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/dart_lang/jni/PortCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PortPhantom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field next:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

.field final port:J

.field prev:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

.field final synthetic this$0:Lcom/github/dart_lang/jni/PortCleaner;


# direct methods
.method static bridge synthetic -$$Nest$mremove(Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;)V
    .locals 0

    invoke-direct {p0}, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->remove()V

    return-void
.end method

.method constructor <init>(Lcom/github/dart_lang/jni/PortCleaner;)V
    .locals 2

    .line 36
    iput-object p1, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->this$0:Lcom/github/dart_lang/jni/PortCleaner;

    .line 37
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 27
    iput-object p0, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->prev:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    iput-object p0, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->next:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->port:J

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/github/dart_lang/jni/PortCleaner;Ljava/lang/Object;J)V
    .locals 0
    .param p2, "referent"    # Ljava/lang/Object;
    .param p3, "port"    # J

    .line 29
    iput-object p1, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->this$0:Lcom/github/dart_lang/jni/PortCleaner;

    .line 30
    invoke-static {p1}, Lcom/github/dart_lang/jni/PortCleaner;->-$$Nest$fgetqueue(Lcom/github/dart_lang/jni/PortCleaner;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 27
    iput-object p0, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->prev:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    iput-object p0, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->next:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 31
    iput-wide p3, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->port:J

    .line 32
    invoke-virtual {p0}, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->insert()V

    .line 33
    return-void
.end method

.method private remove()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->this$0:Lcom/github/dart_lang/jni/PortCleaner;

    invoke-static {v0}, Lcom/github/dart_lang/jni/PortCleaner;->-$$Nest$fgetlist(Lcom/github/dart_lang/jni/PortCleaner;)Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    move-result-object v0

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->next:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    iget-object v2, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->prev:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    iput-object v2, v1, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->prev:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 53
    iget-object v1, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->prev:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    iget-object v2, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->next:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    iput-object v2, v1, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->next:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 54
    iput-object p0, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->prev:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 55
    iput-object p0, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->next:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method insert()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->this$0:Lcom/github/dart_lang/jni/PortCleaner;

    invoke-static {v0}, Lcom/github/dart_lang/jni/PortCleaner;->-$$Nest$fgetlist(Lcom/github/dart_lang/jni/PortCleaner;)Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    move-result-object v0

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->this$0:Lcom/github/dart_lang/jni/PortCleaner;

    invoke-static {v1}, Lcom/github/dart_lang/jni/PortCleaner;->-$$Nest$fgetlist(Lcom/github/dart_lang/jni/PortCleaner;)Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    move-result-object v1

    iput-object v1, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->prev:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 44
    iget-object v1, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->this$0:Lcom/github/dart_lang/jni/PortCleaner;

    invoke-static {v1}, Lcom/github/dart_lang/jni/PortCleaner;->-$$Nest$fgetlist(Lcom/github/dart_lang/jni/PortCleaner;)Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    move-result-object v1

    iget-object v1, v1, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->next:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    iput-object v1, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->next:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 45
    iget-object v1, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->next:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    iput-object p0, v1, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->prev:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 46
    iget-object v1, p0, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->this$0:Lcom/github/dart_lang/jni/PortCleaner;

    invoke-static {v1}, Lcom/github/dart_lang/jni/PortCleaner;->-$$Nest$fgetlist(Lcom/github/dart_lang/jni/PortCleaner;)Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    move-result-object v1

    iput-object p0, v1, Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;->next:Lcom/github/dart_lang/jni/PortCleaner$PortPhantom;

    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
