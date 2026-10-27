.class public final Ldadb/AdbShellPacket$StdOut;
.super Ldadb/AdbShellPacket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldadb/AdbShellPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StdOut"
.end annotation


# instance fields
.field private final id:I

.field private final payload:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldadb/AdbShellPacket;-><init>([BLj9/g;)V

    iput-object p1, p0, Ldadb/AdbShellPacket$StdOut;->payload:[B

    const/4 p1, 0x1

    iput p1, p0, Ldadb/AdbShellPacket$StdOut;->id:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Ldadb/AdbShellPacket$StdOut;->id:I

    return p0
.end method

.method public getPayload()[B
    .locals 0

    iget-object p0, p0, Ldadb/AdbShellPacket$StdOut;->payload:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ldadb/AdbShellPacket$StdOut;->getPayload()[B

    move-result-object p0

    sget-object v1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "STDOUT: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
