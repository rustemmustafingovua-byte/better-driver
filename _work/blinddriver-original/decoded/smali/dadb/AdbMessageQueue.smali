.class public final Ldadb/AdbMessageQueue;
.super Ldadb/MessageQueue;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldadb/MessageQueue<",
        "Ldadb/AdbMessage;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field private final adbReader:Ldadb/AdbReader;


# direct methods
.method public constructor <init>(Ldadb/AdbReader;)V
    .locals 1

    const-string v0, "adbReader"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ldadb/MessageQueue;-><init>()V

    iput-object p1, p0, Ldadb/AdbMessageQueue;->adbReader:Ldadb/AdbReader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Ldadb/AdbMessageQueue;->adbReader:Ldadb/AdbReader;

    invoke-virtual {p0}, Ldadb/AdbReader;->close()V

    return-void
.end method

.method public getCommand(Ldadb/AdbMessage;)I
    .locals 0

    const-string p0, "message"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ldadb/AdbMessage;->getCommand()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getCommand(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ldadb/AdbMessage;

    invoke-virtual {p0, p1}, Ldadb/AdbMessageQueue;->getCommand(Ldadb/AdbMessage;)I

    move-result p0

    return p0
.end method

.method public getLocalId(Ldadb/AdbMessage;)I
    .locals 0

    const-string p0, "message"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ldadb/AdbMessage;->getArg1()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getLocalId(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ldadb/AdbMessage;

    invoke-virtual {p0, p1}, Ldadb/AdbMessageQueue;->getLocalId(Ldadb/AdbMessage;)I

    move-result p0

    return p0
.end method

.method public isCloseCommand(Ldadb/AdbMessage;)Z
    .locals 0

    const-string p0, "message"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ldadb/AdbMessage;->getCommand()I

    move-result p0

    const p1, 0x45534c43

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isCloseCommand(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ldadb/AdbMessage;

    invoke-virtual {p0, p1}, Ldadb/AdbMessageQueue;->isCloseCommand(Ldadb/AdbMessage;)Z

    move-result p0

    return p0
.end method

.method public readMessage()Ldadb/AdbMessage;
    .locals 0

    .line 2
    iget-object p0, p0, Ldadb/AdbMessageQueue;->adbReader:Ldadb/AdbReader;

    invoke-virtual {p0}, Ldadb/AdbReader;->readMessage()Ldadb/AdbMessage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readMessage()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldadb/AdbMessageQueue;->readMessage()Ldadb/AdbMessage;

    move-result-object p0

    return-object p0
.end method
