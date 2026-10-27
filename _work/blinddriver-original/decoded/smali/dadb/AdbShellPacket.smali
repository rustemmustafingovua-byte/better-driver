.class public abstract Ldadb/AdbShellPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldadb/AdbShellPacket$Exit;,
        Ldadb/AdbShellPacket$StdError;,
        Ldadb/AdbShellPacket$StdOut;
    }
.end annotation


# instance fields
.field private final payload:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ldadb/AdbShellPacket;->payload:[B

    return-void
.end method

.method public synthetic constructor <init>([BLj9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ldadb/AdbShellPacket;-><init>([B)V

    return-void
.end method


# virtual methods
.method public abstract getId()I
.end method

.method public getPayload()[B
    .locals 0

    iget-object p0, p0, Ldadb/AdbShellPacket;->payload:[B

    return-object p0
.end method
