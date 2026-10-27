.class public final Ldadb/AdbStreamImpl$source$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldadb/AdbStreamImpl;-><init>(Ldadb/AdbMessageQueue;Ldadb/AdbWriter;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private bytesRead:I

.field private message:Ldadb/AdbMessage;

.field final synthetic this$0:Ldadb/AdbStreamImpl;


# direct methods
.method public constructor <init>(Ldadb/AdbStreamImpl;)V
    .locals 0

    iput-object p1, p0, Ldadb/AdbStreamImpl$source$1;->this$0:Ldadb/AdbStreamImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final message()Ldadb/AdbMessage;
    .locals 2

    iget-object v0, p0, Ldadb/AdbStreamImpl$source$1;->message:Ldadb/AdbMessage;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ldadb/AdbStreamImpl$source$1;->this$0:Ldadb/AdbStreamImpl;

    const v1, 0x45545257

    invoke-static {v0, v1}, Ldadb/AdbStreamImpl;->access$nextMessage(Ldadb/AdbStreamImpl;I)Ldadb/AdbMessage;

    move-result-object v0

    iput-object v0, p0, Ldadb/AdbStreamImpl$source$1;->message:Ldadb/AdbMessage;

    const/4 v1, 0x0

    iput v1, p0, Ldadb/AdbStreamImpl$source$1;->bytesRead:I

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read(Lbb/g;J)J
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ldadb/AdbStreamImpl$source$1;->message()Ldadb/AdbMessage;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-virtual {v0}, Ldadb/AdbMessage;->getPayloadLength()I

    move-result v1

    iget v2, p0, Ldadb/AdbStreamImpl$source$1;->bytesRead:I

    sub-int/2addr v1, v2

    long-to-int p2, p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v0}, Ldadb/AdbMessage;->getPayload()[B

    move-result-object p3

    iget v1, p0, Ldadb/AdbStreamImpl$source$1;->bytesRead:I

    invoke-virtual {p1, p3, v1, p2}, Lbb/g;->write([BII)V

    iget p1, p0, Ldadb/AdbStreamImpl$source$1;->bytesRead:I

    add-int/2addr p1, p2

    iput p1, p0, Ldadb/AdbStreamImpl$source$1;->bytesRead:I

    invoke-virtual {v0}, Ldadb/AdbMessage;->getPayloadLength()I

    move-result p3

    if-gt p1, p3, :cond_2

    iget p1, p0, Ldadb/AdbStreamImpl$source$1;->bytesRead:I

    invoke-virtual {v0}, Ldadb/AdbMessage;->getPayloadLength()I

    move-result p3

    if-ne p1, p3, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Ldadb/AdbStreamImpl$source$1;->message:Ldadb/AdbMessage;

    iget-object p1, p0, Ldadb/AdbStreamImpl$source$1;->this$0:Ldadb/AdbStreamImpl;

    invoke-static {p1}, Ldadb/AdbStreamImpl;->access$getAdbWriter$p(Ldadb/AdbStreamImpl;)Ldadb/AdbWriter;

    move-result-object p1

    iget-object p3, p0, Ldadb/AdbStreamImpl$source$1;->this$0:Ldadb/AdbStreamImpl;

    invoke-static {p3}, Ldadb/AdbStreamImpl;->access$getLocalId$p(Ldadb/AdbStreamImpl;)I

    move-result p3

    iget-object p0, p0, Ldadb/AdbStreamImpl$source$1;->this$0:Ldadb/AdbStreamImpl;

    invoke-static {p0}, Ldadb/AdbStreamImpl;->access$getRemoteId$p(Ldadb/AdbStreamImpl;)I

    move-result p0

    invoke-virtual {p1, p3, p0}, Ldadb/AdbWriter;->writeOkay(II)V

    :cond_1
    int-to-long p0, p2

    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public timeout()Lbb/w;
    .locals 0

    sget-object p0, Lbb/w;->d:Lbb/v;

    return-object p0
.end method
