.class public final Ldadb/AdbStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldadb/AdbStream;


# instance fields
.field private final adbWriter:Ldadb/AdbWriter;

.field private isClosed:Z

.field private final localId:I

.field private final maxPayloadSize:I

.field private final messageQueue:Ldadb/AdbMessageQueue;

.field private final remoteId:I

.field private final sink:Lbb/h;

.field private final source:Lbb/i;


# direct methods
.method public constructor <init>(Ldadb/AdbMessageQueue;Ldadb/AdbWriter;III)V
    .locals 1

    const-string v0, "messageQueue"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adbWriter"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldadb/AdbStreamImpl;->messageQueue:Ldadb/AdbMessageQueue;

    iput-object p2, p0, Ldadb/AdbStreamImpl;->adbWriter:Ldadb/AdbWriter;

    iput p3, p0, Ldadb/AdbStreamImpl;->maxPayloadSize:I

    iput p4, p0, Ldadb/AdbStreamImpl;->localId:I

    iput p5, p0, Ldadb/AdbStreamImpl;->remoteId:I

    new-instance p1, Ldadb/AdbStreamImpl$source$1;

    invoke-direct {p1, p0}, Ldadb/AdbStreamImpl$source$1;-><init>(Ldadb/AdbStreamImpl;)V

    new-instance p2, Lbb/p;

    invoke-direct {p2, p1}, Lbb/p;-><init>(Lbb/u;)V

    iput-object p2, p0, Ldadb/AdbStreamImpl;->source:Lbb/i;

    new-instance p1, Ldadb/AdbStreamImpl$sink$1;

    invoke-direct {p1, p0}, Ldadb/AdbStreamImpl$sink$1;-><init>(Ldadb/AdbStreamImpl;)V

    invoke-static {p1}, Lpc/h;->e(Lbb/t;)Lbb/o;

    move-result-object p1

    iput-object p1, p0, Ldadb/AdbStreamImpl;->sink:Lbb/h;

    return-void
.end method

.method public static final synthetic access$getAdbWriter$p(Ldadb/AdbStreamImpl;)Ldadb/AdbWriter;
    .locals 0

    iget-object p0, p0, Ldadb/AdbStreamImpl;->adbWriter:Ldadb/AdbWriter;

    return-object p0
.end method

.method public static final synthetic access$getLocalId$p(Ldadb/AdbStreamImpl;)I
    .locals 0

    iget p0, p0, Ldadb/AdbStreamImpl;->localId:I

    return p0
.end method

.method public static final synthetic access$getMaxPayloadSize$p(Ldadb/AdbStreamImpl;)I
    .locals 0

    iget p0, p0, Ldadb/AdbStreamImpl;->maxPayloadSize:I

    return p0
.end method

.method public static final synthetic access$getRemoteId$p(Ldadb/AdbStreamImpl;)I
    .locals 0

    iget p0, p0, Ldadb/AdbStreamImpl;->remoteId:I

    return p0
.end method

.method public static final synthetic access$nextMessage(Ldadb/AdbStreamImpl;I)Ldadb/AdbMessage;
    .locals 0

    invoke-direct {p0, p1}, Ldadb/AdbStreamImpl;->nextMessage(I)Ldadb/AdbMessage;

    move-result-object p0

    return-object p0
.end method

.method private final nextMessage(I)Ldadb/AdbMessage;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldadb/AdbStreamImpl;->messageQueue:Ldadb/AdbMessageQueue;

    iget v1, p0, Ldadb/AdbStreamImpl;->localId:I

    invoke-virtual {v0, v1, p1}, Ldadb/MessageQueue;->take(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldadb/AdbMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {p0}, Ldadb/AdbStreamImpl;->close()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-boolean v0, p0, Ldadb/AdbStreamImpl;->isClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldadb/AdbStreamImpl;->isClosed:Z

    iget-object v0, p0, Ldadb/AdbStreamImpl;->adbWriter:Ldadb/AdbWriter;

    iget v1, p0, Ldadb/AdbStreamImpl;->localId:I

    iget v2, p0, Ldadb/AdbStreamImpl;->remoteId:I

    invoke-virtual {v0, v1, v2}, Ldadb/AdbWriter;->writeClose(II)V

    iget-object v0, p0, Ldadb/AdbStreamImpl;->messageQueue:Ldadb/AdbMessageQueue;

    iget p0, p0, Ldadb/AdbStreamImpl;->localId:I

    invoke-virtual {v0, p0}, Ldadb/MessageQueue;->stopListening(I)V

    return-void
.end method

.method public getSink()Lbb/h;
    .locals 0

    iget-object p0, p0, Ldadb/AdbStreamImpl;->sink:Lbb/h;

    return-object p0
.end method

.method public getSource()Lbb/i;
    .locals 0

    iget-object p0, p0, Ldadb/AdbStreamImpl;->source:Lbb/i;

    return-object p0
.end method
